.class final Lcom/project7/localmanager/LocalGatewayServer;
.super Ljava/lang/Object;
.source "LocalGatewayServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalGatewayServer$Frame;,
        Lcom/project7/localmanager/LocalGatewayServer$ClientSession;,
        Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;,
        Lcom/project7/localmanager/LocalGatewayServer$CombatReply;,
        Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;,
        Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;,
        Lcom/project7/localmanager/LocalGatewayServer$StatusListener;
    }
.end annotation


# static fields
.field private static final CHECK_GAMEPLAY_SWITCH:[B

.field private static final CLIENT_CONNECT_REPLY:I = 0x2

.field private static final CLIENT_CREATE_ENTITY:I = 0x3

.field private static final CLIENT_ENTITY_MESSAGE:I = 0x5

.field private static final COMBAT_OFFLINE_FINISH:[B

.field private static final COMBAT_OFFLINE_RESET:[B

.field private static final ENTER_PLACE:[B

.field private static final GET_ALL_AREA_INFO_REQUEST:[B

.field private static final GET_AREA_INFO_REQUEST:[B

.field private static final HEARTBEAT_SERVER:[B

.field private static final LOGIN:[B

.field private static final LOGIN_WITH_URS:[B

.field private static final MAX_FRAME:I = 0x4000000

.field private static final RELIABLE_RPC_CALL:[B

.field private static final REQUEST_FILE:[B

.field private static final REQUEST_LUCKY_DRAW_CARD:[B

.field private static final REQUEST_QUIT_FILE:[B

.field private static final REQUEST_TRIGGER_DA_XUAN_WO:[B

.field private static final SERVICE_CONNECT_SERVER:I = 0x0

.field private static final SERVICE_ENTITY_MESSAGE:I = 0x1

.field private static final SET_PLAYER_NAME:[B

.field private static final TAG:Ljava/lang/String; = "Project7Gateway"

.field private static final TUTORIAL_BEGIN:[B

.field private static final TUTORIAL_END:[B


# instance fields
.field private final accountStore:Lcom/project7/localmanager/LocalAccountStore;

.field private volatile activeSession:Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

.field private final clients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/project7/localmanager/LocalGatewayServer$ClientSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile closed:Z

.field private final combatCatalog:Lcom/project7/localmanager/LocalCombatCatalog;

.field private final combatReplies:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;",
            ">;"
        }
    .end annotation
.end field

.field private final connections:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

.field private final homeCallbacks:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

.field private final newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

.field private final patrolCatalog:Lcom/project7/localmanager/LocalPatrolCatalog;

.field private final port:I

.field private final profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

.field private final random:Ljava/security/SecureRandom;

.field private final sessionLock:Ljava/lang/Object;

.field private volatile socket:Ljava/net/ServerSocket;

.field private final tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-string v0, "login"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->LOGIN:[B

    .line 69
    const-string v0, "loginWithUrs"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->LOGIN_WITH_URS:[B

    .line 70
    const-string v0, "heartbeatServer"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->HEARTBEAT_SERVER:[B

    .line 71
    const-string v0, "reliableRpcCall"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->RELIABLE_RPC_CALL:[B

    .line 72
    const-string v0, "requestTriggerDaXuanWo"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->REQUEST_TRIGGER_DA_XUAN_WO:[B

    .line 73
    const-string v0, "setPlayerName"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->SET_PLAYER_NAME:[B

    .line 74
    const-string v0, "enterPlace"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->ENTER_PLACE:[B

    .line 75
    const-string v0, "tutorialBegin"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->TUTORIAL_BEGIN:[B

    .line 76
    const-string v0, "tutorialEnd"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->TUTORIAL_END:[B

    .line 77
    const-string v0, "checkGamePlaySwitch"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->CHECK_GAMEPLAY_SWITCH:[B

    .line 78
    const-string v0, "requestFile"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->REQUEST_FILE:[B

    .line 79
    const-string v0, "requestQuitFile"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->REQUEST_QUIT_FILE:[B

    .line 80
    const-string v0, "requestLuckyDrawCard"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->REQUEST_LUCKY_DRAW_CARD:[B

    .line 81
    const-string v0, "getAllAreaInfoRequest"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->GET_ALL_AREA_INFO_REQUEST:[B

    .line 82
    const-string v0, "getAreaInfoRequest"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->GET_AREA_INFO_REQUEST:[B

    .line 83
    const-string v0, "combatOfflineFinish"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->COMBAT_OFFLINE_FINISH:[B

    .line 84
    const-string v0, "combatOfflineReset"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGatewayServer;->COMBAT_OFFLINE_RESET:[B

    return-void
.end method

.method constructor <init>(ILcom/project7/localmanager/LocalAccountStore;Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;Lcom/project7/localmanager/LocalTutorialStore;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalNewbeeCatalog;Lcom/project7/localmanager/LocalCombatCatalog;Lcom/project7/localmanager/LocalPatrolCatalog;Lcom/project7/localmanager/LocalGatewayServer$StatusListener;)V
    .locals 10

    .line 178
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->random:Ljava/security/SecureRandom;

    .line 101
    sget-object v1, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda4;->INSTANCE:Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda4;

    invoke-static {v1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->homeCallbacks:Ljava/lang/ThreadLocal;

    .line 144
    sget-object v1, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda5;->INSTANCE:Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda5;

    invoke-static {v1}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->combatReplies:Ljava/lang/ThreadLocal;

    .line 147
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->sessionLock:Ljava/lang/Object;

    .line 148
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->clients:Ljava/util/Set;

    .line 150
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x4

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sget-object v9, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->connections:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 179
    move v1, p1

    iput v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->port:I

    .line 180
    move-object v1, p2

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->accountStore:Lcom/project7/localmanager/LocalAccountStore;

    .line 181
    move-object v1, p3

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    .line 182
    move-object v1, p4

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    .line 183
    move-object v1, p5

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

    .line 184
    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    .line 185
    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->combatCatalog:Lcom/project7/localmanager/LocalCombatCatalog;

    .line 186
    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->patrolCatalog:Lcom/project7/localmanager/LocalPatrolCatalog;

    .line 187
    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    .line 188
    return-void
.end method

.method private acknowledgeCgNotices(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    iget-object p3, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 922
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v2, "procRewardSettlementCommon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 923
    :cond_0
    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    const-string v1, "r"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "cg"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 924
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "c"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v2, "q7AckCgNotice"

    invoke-interface {v1, p1, v2, v0, p2}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    .line 925
    :cond_1
    goto :goto_0

    .line 926
    :cond_2
    return-void
.end method

.method private claimSession(Lcom/project7/localmanager/LocalGatewayServer$ClientSession;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2307
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->sessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2308
    :try_start_0
    iget-boolean v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->closed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    .line 2309
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->activeSession:Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

    .line 2310
    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    iget-object v3, v1, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 2311
    invoke-virtual {v1}, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2314
    :try_start_1
    iget-object v1, v1, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->done:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    :try_start_2
    monitor-exit v0

    return v2

    .line 2318
    :cond_1
    goto :goto_0

    .line 2315
    :catch_0
    move-exception p1

    .line 2316
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 2317
    monitor-exit v0

    return v2

    .line 2320
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->closed:Z

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 2321
    :cond_3
    iput-object p1, p0, Lcom/project7/localmanager/LocalGatewayServer;->activeSession:Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

    .line 2322
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 2320
    :cond_4
    :goto_1
    monitor-exit v0

    return v2

    .line 2323
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private closePuzzleBeforeTrace(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Lcom/project7/localmanager/LocalEventEngine;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    const-string v0, "ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/project7/localmanager/LocalGatewayServer;->eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

    if-nez p2, :cond_0

    goto :goto_1

    .line 852
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 853
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "e"

    aput-object v4, v2, v3

    .line 855
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 854
    const-string v2, "q7PuzzleExit"

    invoke-interface {v1, p3, v2, v0, p4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    .line 856
    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-virtual {p5, v0}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 857
    goto :goto_0

    .line 858
    :cond_2
    return-void

    .line 851
    :cond_3
    :goto_1
    return-void
.end method

.method private static combatHash([B)[B
    .locals 1

    .line 1699
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez p0, :cond_0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :cond_0
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1700
    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2220
    nop

    .line 2225
    const-string v0, "serverCallbackCarrier"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 2226
    invoke-static {p3}, Lcom/project7/localmanager/BsonLite;->callbackDocument(I)[B

    move-result-object v1

    .line 2223
    invoke-static {p2, v0, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    .line 2220
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reliable RPC callback completed id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " method="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Project7Gateway"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    return-void
.end method

.method private completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2251
    const-string v0, "_cbid_"

    invoke-static {p3, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    .line 2252
    const-string v0, "Project7Gateway"

    if-nez p3, :cond_0

    .line 2253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " completed without callback id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    return-void

    .line 2256
    :cond_0
    const/4 v1, 0x5

    .line 2261
    const-string v2, "serverCallbackCarrier"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    .line 2262
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->callbackDocument(I)[B

    move-result-object v3

    .line 2259
    invoke-static {p2, v2, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    .line 2256
    invoke-direct {p0, p1, v1, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " callback completed id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    iget-object p1, p0, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    const/4 p2, 0x1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5df2\u5b8c\u6210\u542f\u52a8\u56de\u8c03\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 2267
    return-void
.end method

.method private currentCombatReply(Lcom/project7/localmanager/LocalGatewayServer$CombatReply;Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;I[BLcom/project7/localmanager/LocalEventEngine;)Z
    .locals 5

    .line 1705
    const-string v0, "weeknum"

    invoke-static {p4, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 1706
    iget v1, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->week:I

    const-string v2, "w"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b

    iget v1, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->day:I

    .line 1707
    const-string v2, "d"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    if-eq v1, v0, :cond_0

    goto/16 :goto_4

    .line 1708
    :cond_0
    iget v0, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    const-string v1, "q7Battle"

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_3

    .line 1709
    iget-object p3, p2, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->values:Ljava/util/Map;

    iget-object v0, p2, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->latestAccepted:Ljava/lang/Integer;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;

    .line 1710
    invoke-static {p4}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1711
    invoke-static {p4, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p4

    invoke-static {p4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p2, p2, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->latestAccepted:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->acceptedAtPreparation:Ljava/lang/Integer;

    .line 1712
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iget p1, p3, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    if-ne p1, v2, :cond_1

    if-eqz p5, :cond_1

    iget p1, p3, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->scene:I

    .line 1713
    invoke-virtual {p5, p1}, Lcom/project7/localmanager/LocalEventEngine;->hasPendingStoryBattle(I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    nop

    .line 1710
    :goto_0
    return v3

    .line 1715
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p2, p2, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->latestAccepted:Ljava/lang/Integer;

    invoke-virtual {p3, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return v3

    .line 1716
    :cond_4
    iget p2, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    if-ne p2, v2, :cond_6

    if-eqz p5, :cond_5

    iget-object p2, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->owners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->owners:Ljava/util/Set;

    iget p1, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->scene:I

    .line 1717
    invoke-virtual {p5, p1}, Lcom/project7/localmanager/LocalEventEngine;->pendingStoryBattleOwners(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    nop

    .line 1716
    :goto_1
    return v3

    .line 1718
    :cond_6
    iget p2, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    if-ne p2, v4, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, "q7DailyBattle"

    :goto_2
    invoke-static {p4, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    .line 1719
    iget p3, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    if-eq p3, v4, :cond_8

    invoke-static {p4}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result p3

    if-eqz p3, :cond_a

    :cond_8
    iget p3, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    if-eq p3, v4, :cond_9

    iget p3, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    .line 1720
    const-string p4, "t"

    invoke-static {p2, p4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p4

    if-ne p3, p4, :cond_a

    :cond_9
    iget p3, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->scene:I

    .line 1721
    const-string p4, "s"

    invoke-static {p2, p4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p4

    if-ne p3, p4, :cond_a

    .line 1722
    const-string p3, "h"

    invoke-static {p2, p3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p4

    iget-object p5, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->parameters:[B

    invoke-static {p5, p3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->fight:Ljava/lang/String;

    if-eqz p3, :cond_a

    iget-object p1, p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->fight:Ljava/lang/String;

    .line 1723
    const-string p3, "f"

    invoke-static {p2, p3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v3, v4

    goto :goto_3

    :cond_a
    nop

    .line 1719
    :goto_3
    return v3

    .line 1707
    :cond_b
    :goto_4
    return v3
.end method

.method private static digest(Ljava/lang/String;)[B
    .locals 2

    .line 2362
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 2363
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2362
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2365
    :catch_0
    move-exception p0

    .line 2366
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v0, p0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private emitCombatControls(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalGatewayServer$CombatReply;[BZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1728
    iget-object v0, p3, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->profileHash:[B

    invoke-static {p4}, Lcom/project7/localmanager/LocalGatewayServer;->combatHash([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 1729
    iget-object p3, p3, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->controls:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 1730
    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    .line 1731
    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p5, :cond_0

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v8, "syncJingshenliPower"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1732
    const-string v2, "city"

    invoke-static {p4, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 1733
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "p"

    aput-object v8, v7, v6

    const-string v6, "jpv"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v5

    const-string v5, "t"

    aput-object v5, v7, v4

    const/4 v4, 0x3

    .line 1734
    const-string v5, "jpvt"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x4

    const-string v5, "cjsla"

    aput-object v5, v7, v4

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    .line 1733
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 1735
    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v8, "syncMazeData"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1736
    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "d"

    aput-object v4, v2, v6

    const-string v4, "ifm"

    invoke-static {p4, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    goto :goto_1

    .line 1737
    :cond_1
    if-eqz p5, :cond_2

    if-nez v0, :cond_2

    iget-object v4, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v5, "enterManeuverBattleReply"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 1738
    const-string v5, "showMessageStr"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1740
    goto/16 :goto_0

    .line 1742
    :cond_2
    :goto_1
    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    invoke-direct {p0, p1, v3, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1743
    goto/16 :goto_0

    .line 1744
    :cond_3
    return-void
.end method

.method private emitCombatCores(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalGatewayServer$CombatReply;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1747
    iget-object p3, p3, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->cores:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v1, 0x5

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 1748
    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, v2, v0}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    .line 1747
    invoke-direct {p0, p1, v1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 1749
    :cond_0
    return-void
.end method

.method private emitEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 900
    iget-object p5, p6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 901
    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, v2, v0}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    .line 900
    invoke-direct {p0, p1, v1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 902
    :cond_0
    iget-object p5, p6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v3, "addCenterConfidence"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "story confidence delivered delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    const-string v4, "v"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    .line 904
    const-string v3, "c"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    const-string v2, "Project7Gateway"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_1
    goto :goto_1

    .line 905
    :cond_2
    invoke-static {p6}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->sent(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B

    move-result-object p5

    .line 906
    invoke-static {p5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 907
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const-string v2, "q7AckStoryProgress"

    invoke-interface {v0, p3, v2, p5, p4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    .line 908
    :cond_3
    invoke-direct {p0, p3, p4, p6}, Lcom/project7/localmanager/LocalGatewayServer;->acknowledgeCgNotices(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 909
    iget-object p3, p6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    sget-object p5, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda2;->INSTANCE:Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda2;

    invoke-interface {p3, p5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p3

    .line 910
    iget-object p5, p6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    if-nez p3, :cond_4

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v2, "updateBlackCore"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 911
    const-string p3, "get_all_area_info_reply"

    invoke-static {p3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object p3

    .line 912
    invoke-static {p4}, Lcom/project7/localmanager/LocalGatewayServer;->isHighSchoolUnlocked(Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p5

    iget-object p6, p6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p5, p4, p6}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p4

    .line 911
    invoke-static {p2, p3, p4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 917
    :cond_5
    return-void
.end method

.method private emitHomeResult(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Integer;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 670
    iget-object p3, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 671
    iget-object v3, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v4, "q7HomeCallback"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    goto :goto_0

    .line 672
    :cond_0
    iget-object v3, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, v3, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    invoke-direct {p0, p1, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 673
    goto :goto_0

    .line 674
    :cond_1
    if-eqz p4, :cond_2

    .line 675
    const-string p3, "serverCallbackCarrier"

    invoke-static {p3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object p3

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "_r_"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v3, 0x2

    const-string v4, "_cbid_"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object p4, v1, v3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p4

    .line 674
    invoke-static {p2, p3, p4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    invoke-direct {p0, p1, v2, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 676
    :cond_2
    return-object v0
.end method

.method private finishAbandonedStory(Ljava/io/OutputStream;[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1891
    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v9, p6

    if-eqz v9, :cond_4

    iget-object v0, v6, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v0, v3, v4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1892
    :cond_0
    const-string v0, "s"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v10

    .line 1893
    if-gtz v10, :cond_1

    return-void

    .line 1894
    :cond_1
    invoke-virtual {v9, v10}, Lcom/project7/localmanager/LocalEventEngine;->abandonStoryBattle(I)Ljava/util/List;

    move-result-object v11

    .line 1895
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1896
    :cond_2
    iget-object v0, v6, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v3, v4}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1897
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x5

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1898
    const-string v2, "completeEventReplyStart"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->eventRewardDocument(I)[B

    move-result-object v5

    invoke-static {p2, v2, v5}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    invoke-direct {p0, p1, v12, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1899
    const-string v2, "completeEventReplyEnd"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->eventDocument(I)[B

    move-result-object v1

    invoke-static {p2, v2, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    invoke-direct {p0, p1, v12, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1900
    goto :goto_0

    .line 1901
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1902
    const-string v0, "pushEvents"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 1903
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object v1

    .line 1902
    invoke-static {p2, v0, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    invoke-direct {p0, p1, v12, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirmed story abandonment scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Project7Gateway"

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return-void

    .line 1891
    :cond_4
    :goto_1
    return-void
.end method

.method private finishStoryCombat(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;IIILcom/project7/localmanager/LocalEconomyEngine$Result;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Lcom/project7/localmanager/LocalEventEngine;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;III",
            "Lcom/project7/localmanager/LocalEconomyEngine$Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2001
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p11

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v6, v10, :cond_0

    invoke-static/range {p9 .. p9}, Lcom/project7/localmanager/LocalCityProgress;->area(I)I

    move-result v11

    if-eqz v11, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v9

    .line 2003
    :goto_0
    if-eqz v5, :cond_9

    if-nez p10, :cond_1

    goto/16 :goto_4

    .line 2006
    :cond_1
    if-eqz v11, :cond_2

    if-eqz v8, :cond_2

    iget v8, v8, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    if-ltz v8, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    move v8, v9

    .line 2007
    :goto_1
    if-eqz v5, :cond_3

    iget-object v11, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v11, v3, v4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 2008
    :cond_3
    const/4 v11, 0x2

    if-ne v6, v11, :cond_5

    .line 2009
    if-eqz p10, :cond_4

    move v9, v10

    :cond_4
    invoke-virtual {v5, v7, v9}, Lcom/project7/localmanager/LocalEventEngine;->finishStoryBattle(IZ)Ljava/util/List;

    move-result-object v9

    goto :goto_2

    .line 2010
    :cond_5
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "battle"

    invoke-virtual {v5, v11, v9}, Lcom/project7/localmanager/LocalEventEngine;->trace(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    .line 2011
    :goto_2
    iget-object v11, v0, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v11, v3, v4}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 2012
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "Project7Gateway"

    const/4 v13, 0x5

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 2013
    nop

    .line 2018
    const-string v14, "completeEventReplyStart"

    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v14

    .line 2019
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->eventRewardDocument(I)[B

    move-result-object v15

    .line 2016
    invoke-static {v2, v14, v15}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v14

    .line 2013
    invoke-direct {v0, v1, v13, v14}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2022
    nop

    .line 2027
    const-string v14, "completeEventReplyEnd"

    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v14

    .line 2028
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->eventDocument(I)[B

    move-result-object v15

    .line 2025
    invoke-static {v2, v14, v15}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v14

    .line 2022
    invoke-direct {v0, v1, v13, v14}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2031
    move-object/from16 v14, p6

    invoke-interface {v14, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2032
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "event completed event="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " condition=battle["

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    goto :goto_3

    .line 2035
    :cond_6
    invoke-direct/range {p0 .. p5}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 2036
    if-eqz v8, :cond_7

    .line 2037
    nop

    .line 2038
    const-string v8, "get_city_data_reply"

    invoke-static {v8}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v8

    iget-object v9, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v9, v3, v4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v9

    invoke-static {v4, v9}, Lcom/project7/localmanager/BsonLite;->cityDataReplyDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v9

    .line 2037
    invoke-static {v2, v8, v9}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v8

    invoke-direct {v0, v1, v13, v8}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2039
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "combat action consumed scene="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " remaining="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_7
    if-ne v6, v10, :cond_8

    invoke-static/range {p9 .. p9}, Lcom/project7/localmanager/LocalCityProgress;->area(I)I

    move-result v6

    if-eqz v6, :cond_8

    .line 2042
    nop

    .line 2043
    const-string v6, "get_all_area_info_reply"

    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v6

    .line 2044
    invoke-static/range {p4 .. p4}, Lcom/project7/localmanager/LocalGatewayServer;->isHighSchoolUnlocked(Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v8

    iget-object v9, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v9, v3, v4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v9

    invoke-static {v8, v4, v9}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v8

    .line 2042
    invoke-static {v2, v6, v8}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v6

    invoke-direct {v0, v1, v13, v6}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2045
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "post-battle city state refreshed scene="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_8
    move-object/from16 v6, p7

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/project7/localmanager/LocalGatewayServer;->triggerPendingNewbees(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;)V

    .line 2048
    iget-object v6, v0, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v6, v3, v4}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 2049
    invoke-direct/range {p0 .. p5}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 2050
    nop

    .line 2051
    const-string v3, "pushEvents"

    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    .line 2052
    invoke-virtual/range {p5 .. p5}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v5

    .line 2051
    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object v4

    .line 2050
    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    invoke-direct {v0, v1, v13, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2053
    return-void

    .line 2004
    :cond_9
    :goto_4
    return-void
.end method

.method private handleBasicRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;)Z
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "remove_chat_channel_listener"

    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 932
    return v7

    .line 934
    :cond_0
    const-string v6, "evalEcho"

    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const-string v8, "m"

    const-string v9, "Project7Gateway"

    if-eqz v6, :cond_1

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client data sync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return v7

    .line 938
    :cond_1
    const-string v6, "checkGamePlaySwitchAsk"

    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x5

    if-eqz v6, :cond_8

    .line 939
    const-string v3, "g"

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 940
    const-string v5, "friendsummon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v15, "summon"

    if-nez v6, :cond_3

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 941
    const-string v6, "itemStore"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "huodongMain_2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "huodongMain_42"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 942
    const-string v6, "huodongMain_215"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "memoryPalace"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 943
    const-string v6, "exchange"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "dancengxunluo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "lunhuizhijing"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 944
    const-string v6, "furnitureSummon"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "funitureSummonLianchou"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 945
    const-string v6, "heroliberate"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v13

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v7

    .line 946
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-direct/range {p0 .. p2}, Lcom/project7/localmanager/LocalGatewayServer;->syncDrawCalendar(Ljava/io/OutputStream;[B)V

    .line 947
    :cond_5
    nop

    .line 948
    const-string v5, "checkGamePlaySwitchReply"

    invoke-static {v5}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v3, v15, v13

    const-string v3, ""

    if-nez v4, :cond_6

    move-object v13, v3

    goto :goto_2

    :cond_6
    move-object v13, v4

    :goto_2
    aput-object v13, v15, v7

    const-string v13, "s"

    aput-object v13, v15, v12

    .line 949
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v15, v11

    aput-object v8, v15, v10

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    const-string v3, "\u6b64\u73a9\u6cd5\u5c1a\u672a\u63a5\u5165\u672c\u5730\u7f51\u5173"

    :goto_3
    aput-object v3, v15, v14

    .line 948
    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 947
    invoke-static {v2, v5, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    invoke-direct {v0, v1, v14, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gameplay switch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return v7

    .line 953
    :cond_8
    const/4 v6, 0x7

    const-string v15, "buyMoney"

    const-string v16, "buyCardMallItem"

    const-string v17, "setSkinRequest"

    const-string v18, "queryItemDetail"

    const-string v19, "yuanbaoExchangeCrystal"

    const-string v20, "crystalExchangeSkinCoin"

    const-string v21, "buySkinRequest"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v8

    move v15, v13

    :goto_4
    const-string v11, " method="

    if-ge v15, v6, :cond_b

    aget-object v6, v8, v15

    .line 955
    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v3, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-nez v12, :cond_9

    .line 953
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x7

    const/4 v11, 0x3

    const/4 v12, 0x2

    goto :goto_4

    .line 956
    :cond_9
    iget-object v3, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v3, v5, v6, v4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateCommerce(Ljava/lang/String;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalCommerceEngine$Result;

    move-result-object v3

    .line 957
    iget-object v4, v3, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 958
    nop

    .line 959
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v10

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 958
    invoke-static {v2, v10, v8}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v8

    invoke-direct {v0, v1, v14, v8}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 960
    goto :goto_5

    .line 961
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commerce RPC completed account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    .line 962
    const-string v3, "showMessageStr"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return v7

    .line 965
    :cond_b
    const-string v6, "syncServerTime"

    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 966
    nop

    .line 967
    const-string v3, "onSyncServerTime"

    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    .line 968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    long-to-int v4, v4

    const-string v5, "t"

    invoke-static {v5, v4}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v4

    .line 966
    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    invoke-direct {v0, v1, v14, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 969
    return v7

    .line 971
    :cond_c
    const/16 v6, 0x16

    const-string v19, "setRoleIdRequest"

    const-string v20, "setDescribeRequest"

    const-string v21, "setBbsSkin"

    const-string v22, "read_cg"

    const-string v23, "changeName"

    const-string v24, "setHeadImage"

    const-string v25, "setImgState"

    const-string v26, "unlockCollectMark"

    const-string v27, "setHeroEmojiUsed"

    const-string v28, "requestEmojiRead"

    const-string v29, "addRecentEmoji"

    const-string v30, "setAssistHero"

    const-string v31, "requestNameCardChange"

    const-string v32, "setNameCardFirstSee"

    const-string v33, "setTitleShowList"

    const-string v34, "setBadgeShowList"

    const-string v35, "updateTitleNewState"

    const-string v36, "updateBadgeNewState"

    const-string v37, "updateTitleExchange"

    const-string v38, "requestUpdateCollectCover"

    const-string v39, "clearFirstGetFlag"

    const-string v40, "set_hero_shoucang"

    filled-new-array/range {v19 .. v40}, [Ljava/lang/String;

    move-result-object v8

    move v12, v13

    :goto_6
    if-ge v12, v6, :cond_12

    aget-object v15, v8, v12

    .line 976
    invoke-static {v15}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_d

    .line 971
    add-int/lit8 v12, v12, 0x1

    const/16 v6, 0x16

    goto :goto_6

    .line 977
    :cond_d
    iget-object v3, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v3, v5, v15, v4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateProfile(Ljava/lang/String;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalProfileEngine$Result;

    move-result-object v3

    .line 979
    iget-object v6, v3, Lcom/project7/localmanager/LocalProfileEngine$Result;->callback:Ljava/lang/String;

    if-eqz v6, :cond_e

    .line 980
    iget-object v6, v3, Lcom/project7/localmanager/LocalProfileEngine$Result;->callback:Ljava/lang/String;

    .line 981
    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v8, v3, Lcom/project7/localmanager/LocalProfileEngine$Result;->reply:[B

    .line 980
    invoke-static {v2, v6, v8}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v6

    invoke-direct {v0, v1, v14, v6}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 983
    :cond_e
    iget-object v6, v3, Lcom/project7/localmanager/LocalProfileEngine$Result;->extras:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v12, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 984
    invoke-static {v12}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v12

    iget-object v8, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v2, v12, v8}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v8

    .line 983
    invoke-direct {v0, v1, v14, v8}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_7

    .line 985
    :cond_f
    const-string v6, "changeName"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v3, Lcom/project7/localmanager/LocalProfileEngine$Result;->profile:[B

    if-eqz v6, :cond_10

    .line 986
    nop

    .line 987
    const-string v6, "updateCrystal"

    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v6

    new-array v8, v10, [Ljava/lang/Object;

    const-string v10, "v"

    aput-object v10, v8, v13

    iget-object v10, v3, Lcom/project7/localmanager/LocalProfileEngine$Result;->profile:[B

    const-string v12, "crystal"

    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    const-string v10, "bv"

    const/4 v12, 0x2

    aput-object v10, v8, v12

    iget-object v10, v3, Lcom/project7/localmanager/LocalProfileEngine$Result;->profile:[B

    .line 988
    const-string v12, "bind_crystal"

    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v8, v12

    .line 987
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v8

    .line 986
    invoke-static {v2, v6, v8}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    invoke-direct {v0, v1, v14, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 990
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile RPC completed account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    const-string v2, "setHeadImage"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "<avatar metadata/image redacted>"

    goto :goto_8

    :cond_11
    invoke-static/range {p4 .. p4}, Lcom/project7/localmanager/BsonLite;->debugDocument([B)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " role="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/project7/localmanager/LocalProfileEngine$Result;->profile:[B

    .line 992
    const-string v3, "role"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 990
    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return v7

    .line 995
    :cond_12
    return v13
.end method

.method private handleCalendar(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2131
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-interface {v0, p3, p6, v1, p4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateEconomy(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v0

    .line 2132
    if-eqz p5, :cond_0

    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, p3, p4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 2133
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, p3, p4}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 2134
    iget-object p3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 v1, 0x5

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v2, p4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 2135
    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    iget-object p4, p4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, v2, p4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p4

    .line 2134
    invoke-direct {p0, p1, v1, p4}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 2136
    :cond_1
    iget-boolean p3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    .line 2137
    const-string p3, "pullEventsReply"

    invoke-static {p3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object p3

    .line 2138
    invoke-virtual {p5}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object p4

    invoke-virtual {p5}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object p4

    .line 2137
    invoke-static {p2, p3, p4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    .line 2136
    invoke-direct {p0, p1, v1, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2139
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calendar method="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " accepted="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Project7Gateway"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    return-void
.end method

.method private handleClient(Ljava/net/Socket;Lcom/project7/localmanager/LocalGatewayServer$ClientSession;)V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 240
    new-instance v15, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalGatewayServer;->objectId()[B

    move-result-object v11

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalGatewayServer;->objectId()[B

    move-result-object v10

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 246
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 247
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 248
    new-instance v18, Ljava/util/LinkedHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashMap;-><init>()V

    .line 249
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 250
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 251
    nop

    .line 252
    nop

    .line 253
    nop

    .line 254
    const-string v8, "Project7Gateway"

    const-string v0, "client connected; awaiting local authentication"

    invoke-static {v8, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, ""

    const/16 v20, 0x0

    move-object/from16 v21, v7

    move-object/from16 v2, v20

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 256
    :goto_0
    iget-boolean v0, v12, Lcom/project7/localmanager/LocalGatewayServer;->closed:Z

    if-nez v0, :cond_45

    .line 259
    :try_start_0
    invoke-direct {v12, v14}, Lcom/project7/localmanager/LocalGatewayServer;->readFrame(Ljava/io/InputStream;)Lcom/project7/localmanager/LocalGatewayServer$Frame;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    .line 264
    nop

    .line 265
    iget v1, v0, Lcom/project7/localmanager/LocalGatewayServer$Frame;->method:I

    move-object/from16 v23, v4

    const/4 v4, 0x2

    if-nez v1, :cond_0

    .line 266
    invoke-static {}, Lcom/project7/localmanager/ProtoLite;->connectReply()[B

    move-result-object v0

    invoke-direct {v12, v15, v4, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 267
    nop

    .line 270
    const-string v0, "ClientAccount"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v0, v11, v1}, Lcom/project7/localmanager/ProtoLite;->entityInfo([B[B[B)[B

    move-result-object v0

    .line 267
    const/4 v1, 0x3

    invoke-direct {v12, v15, v1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    move-object/from16 v28, v2

    move-object/from16 v22, v3

    move-object v13, v8

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v14

    move-object/from16 v2, v23

    move-object v11, v5

    move-object/from16 v23, v7

    move-object v14, v10

    move-object v10, v6

    goto/16 :goto_19

    .line 272
    :cond_0
    iget v1, v0, Lcom/project7/localmanager/LocalGatewayServer$Frame;->method:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_42

    .line 275
    :try_start_1
    iget-object v0, v0, Lcom/project7/localmanager/LocalGatewayServer$Frame;->payload:[B

    invoke-static {v0}, Lcom/project7/localmanager/ProtoLite;->parseEntityMessage([B)Lcom/project7/localmanager/ProtoLite$EntityMessage;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    nop

    .line 281
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const-string v4, "mails"

    move-object/from16 v26, v7

    const-string v7, "mailbox"

    move-object/from16 v27, v14

    const-string v14, "id"

    move-object/from16 v28, v2

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->LOGIN:[B

    .line 282
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->LOGIN_WITH_URS:[B

    .line 283
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 284
    :cond_1
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v2, "psw"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :try_start_2
    iget-object v2, v12, Lcom/project7/localmanager/LocalGatewayServer;->accountStore:Lcom/project7/localmanager/LocalAccountStore;

    invoke-virtual {v2, v1, v0}, Lcom/project7/localmanager/LocalAccountStore;->authenticate(Ljava/lang/String;Ljava/lang/String;)Lcom/project7/localmanager/LocalAccountStore$Result;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    nop

    .line 294
    iget-boolean v1, v0, Lcom/project7/localmanager/LocalAccountStore$Result;->accepted:Z

    if-nez v1, :cond_2

    .line 295
    const-string v1, "\u8d26\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    invoke-direct {v12, v15, v11, v1}, Lcom/project7/localmanager/LocalGatewayServer;->sendLoginFailure(Ljava/io/OutputStream;[BLjava/lang/String;)V

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local login rejected account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/project7/localmanager/LocalAccountStore$Result;->username:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 300
    :cond_2
    invoke-direct {v12, v13}, Lcom/project7/localmanager/LocalGatewayServer;->claimSession(Lcom/project7/localmanager/LocalGatewayServer$ClientSession;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 301
    const-string v0, "\u4e0a\u4e00\u6b21\u8fde\u63a5\u4ecd\u5728\u4fdd\u5b58\uff0c\u8bf7\u7a0d\u540e\u91cd\u65b0\u767b\u5f55"

    invoke-direct {v12, v15, v11, v0}, Lcom/project7/localmanager/LocalGatewayServer;->sendLoginFailure(Ljava/io/OutputStream;[BLjava/lang/String;)V

    .line 302
    return-void

    .line 306
    :cond_3
    move-object/from16 v2, p1

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 307
    iget-object v6, v0, Lcom/project7/localmanager/LocalAccountStore$Result;->username:Ljava/lang/String;

    .line 308
    iget-object v1, v12, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, v6}, Lcom/project7/localmanager/LocalTutorialStore;->load(Ljava/lang/String;)Lcom/project7/localmanager/LocalTutorialStore$Progress;

    move-result-object v5

    .line 309
    iget-object v1, v12, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, v6, v5}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    .line 310
    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeDailyEngine;->payload([B)[B

    move-result-object v3

    .line 311
    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->generation([B)Ljava/lang/String;

    move-result-object v21

    .line 312
    nop

    .line 313
    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 312
    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 314
    invoke-static {v7, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    goto :goto_1

    .line 316
    :cond_4
    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->starterHeroForUsername(Ljava/lang/String;)I

    move-result v4

    .line 317
    new-instance v7, Lcom/project7/localmanager/LocalEventEngine;

    iget-object v14, v12, Lcom/project7/localmanager/LocalGatewayServer;->eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v2, v12, Lcom/project7/localmanager/LocalGatewayServer;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    .line 321
    invoke-static {v4}, Lcom/project7/localmanager/LocalGatewayServer;->starterEventForHero(I)I

    move-result v35

    move-object/from16 v31, v7

    move-object/from16 v32, v14

    move-object/from16 v33, v2

    move-object/from16 v34, v5

    move-object/from16 v36, v1

    invoke-direct/range {v31 .. v36}, Lcom/project7/localmanager/LocalEventEngine;-><init>(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalNewbeeCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)V

    .line 324
    iget-object v2, v12, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v2, v6, v5}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 325
    invoke-static {v1, v5}, Lcom/project7/localmanager/BsonLite;->withTutorialProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 327
    const-string v4, "hakopania"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 328
    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 330
    :cond_5
    nop

    .line 333
    const-string v4, "ClientAvatar"

    invoke-static {v4}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v10, v2}, Lcom/project7/localmanager/ProtoLite;->entityInfo([B[B[B)[B

    move-result-object v2

    .line 330
    const/4 v4, 0x3

    invoke-direct {v12, v15, v4, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 335
    nop

    .line 338
    const-string v2, "become_player"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v10, v2, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 335
    const/4 v4, 0x5

    invoke-direct {v12, v15, v4, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 340
    invoke-direct {v12, v15, v10}, Lcom/project7/localmanager/LocalGatewayServer;->syncClientCompatibility(Ljava/io/OutputStream;[B)V

    .line 341
    const-string v2, "syncAllNote"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v14, "nd"

    const/16 v23, 0x0

    aput-object v14, v4, v23

    .line 342
    const-string v14, "np"

    invoke-static {v1, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    const/16 v22, 0x1

    aput-object v14, v4, v22

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 341
    invoke-static {v10, v2, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    const/4 v4, 0x5

    invoke-direct {v12, v15, v4, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "diary login account="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalDiaryEngine;->diagnostic([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {v1}, Lcom/project7/localmanager/LocalImageAvatar;->cache([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 346
    iget-object v4, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-static {v4}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v10, v4, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    const/4 v4, 0x5

    invoke-direct {v12, v15, v4, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_2

    .line 347
    :cond_6
    iget-object v1, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    .line 348
    iget-object v2, v12, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v14, "q7ResumeWeekResult"

    invoke-interface {v2, v6, v14, v4, v5}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    .line 350
    iget-object v4, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    move-object/from16 v23, v1

    iget-object v1, v14, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 351
    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v14, v14, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v10, v1, v14}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    .line 350
    const/4 v14, 0x5

    invoke-direct {v12, v15, v14, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    move-object/from16 v1, v23

    goto :goto_3

    .line 352
    :cond_7
    move-object/from16 v23, v1

    invoke-direct {v12, v6, v5, v2}, Lcom/project7/localmanager/LocalGatewayServer;->acknowledgeCgNotices(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 353
    iget-object v1, v12, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    iget-boolean v0, v0, Lcom/project7/localmanager/LocalAccountStore$Result;->registered:Z

    if-eqz v0, :cond_8

    const-string v0, "\u5df2\u6ce8\u518c\u5e76\u767b\u5f55\uff1a"

    goto :goto_4

    :cond_8
    const-string v0, "\u672c\u5730\u8d26\u53f7\u5df2\u767b\u5f55\uff1a"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\u4e1a\u52a1 RPC \u7b49\u5f85\u5b9e\u73b0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 358
    move-object v2, v3

    move-object v4, v7

    move-object v13, v8

    move-object/from16 v24, v9

    move-object v14, v10

    move-object/from16 v3, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v26

    move-object/from16 v26, v11

    goto/16 :goto_18

    .line 289
    :catch_0
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v15, v11, v1}, Lcom/project7/localmanager/LocalGatewayServer;->sendLoginFailure(Ljava/io/OutputStream;[BLjava/lang/String;)V

    .line 291
    const-string v1, "local login rejected"

    invoke-static {v8, v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    return-void

    .line 358
    :cond_9
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const-string v2, "p"

    move-object/from16 v31, v11

    const-string v11, "t"

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v13, Lcom/project7/localmanager/LocalGatewayServer;->HEARTBEAT_SERVER:[B

    .line 359
    invoke-static {v1, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 360
    nop

    .line 363
    const-string v0, "on_heartbeat"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v10, v0, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    .line 360
    const/4 v1, 0x5

    invoke-direct {v12, v15, v1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 365
    const-string v0, "heartbeat acknowledged"

    invoke-static {v8, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz v6, :cond_10

    .line 367
    iget-object v0, v12, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v0, v6, v5}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    .line 368
    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->generation([B)Ljava/lang/String;

    move-result-object v1

    .line 369
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 370
    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 371
    sget-object v13, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 372
    iget-object v3, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    move-object/from16 v32, v1

    iget-object v1, v13, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 373
    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v13, v13, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v10, v1, v13}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    .line 372
    const/4 v13, 0x5

    invoke-direct {v12, v15, v13, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    move-object/from16 v1, v32

    goto :goto_5

    .line 374
    :cond_a
    move-object/from16 v32, v1

    move-object/from16 v3, v32

    .line 376
    :cond_b
    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeDailyEngine;->payload([B)[B

    move-result-object v1

    .line 377
    if-eqz v1, :cond_c

    move-object/from16 v13, v28

    invoke-static {v1, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v28

    if-nez v28, :cond_d

    .line 378
    nop

    .line 379
    const-string v13, "syncHeroXinqing"

    invoke-static {v13}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v13

    .line 378
    invoke-static {v10, v13, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v13

    move-object/from16 v28, v1

    const/4 v1, 0x5

    invoke-direct {v12, v15, v1, v13}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 380
    move-object/from16 v13, v28

    goto :goto_6

    .line 377
    :cond_c
    move-object/from16 v13, v28

    .line 382
    :cond_d
    :goto_6
    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 383
    const-string v28, "syncJingshenliPower"

    move-object/from16 v32, v3

    invoke-static/range {v28 .. v28}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v28, v5

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v29, 0x0

    aput-object v2, v5, v29

    .line 384
    const-string v2, "jpv"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v22, 0x1

    aput-object v2, v5, v22

    const/4 v2, 0x2

    aput-object v11, v5, v2

    .line 385
    const-string v2, "jpvt"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v11, 0x3

    aput-object v2, v5, v11

    const/4 v2, 0x4

    const-string v11, "cjsla"

    aput-object v11, v5, v2

    .line 386
    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v5, v2

    .line 384
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 383
    invoke-static {v10, v3, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    invoke-direct {v12, v15, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 387
    nop

    .line 388
    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 387
    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 389
    invoke-static {v1, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    if-eqz v2, :cond_e

    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 392
    const-string v2, "addMailRep"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "m"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 391
    invoke-static {v10, v2, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    .line 390
    const/4 v4, 0x5

    invoke-direct {v12, v15, v4, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_8

    :cond_e
    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 393
    :goto_8
    goto :goto_7

    .line 394
    :cond_f
    move-object/from16 v24, v9

    move-object v14, v10

    move-object v2, v13

    move-object/from16 v4, v23

    move-object/from16 v23, v26

    move-object/from16 v5, v28

    move-object/from16 v26, v31

    move-object/from16 v3, v32

    move-object v13, v8

    goto/16 :goto_18

    .line 366
    :cond_10
    move-object/from16 v13, v28

    move-object/from16 v28, v5

    move-object/from16 v22, v3

    move-object/from16 v24, v9

    move-object v14, v10

    move-object/from16 v2, v23

    move-object/from16 v23, v26

    move-object/from16 v11, v28

    move-object/from16 v26, v31

    move-object v10, v6

    move-object/from16 v28, v13

    move-object v13, v8

    goto/16 :goto_17

    .line 359
    :cond_11
    move-object/from16 v13, v28

    const/4 v4, 0x5

    const/4 v7, 0x0

    move-object/from16 v28, v5

    const/4 v5, 0x1

    goto :goto_9

    .line 358
    :cond_12
    move-object/from16 v13, v28

    const/4 v4, 0x5

    const/4 v7, 0x0

    move-object/from16 v28, v5

    const/4 v5, 0x1

    .line 395
    :goto_9
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v4, Lcom/project7/localmanager/LocalGatewayServer;->RELIABLE_RPC_CALL:[B

    .line 396
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 397
    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v22, v3

    move-object v3, v10

    move-object/from16 v14, v23

    move-object/from16 v11, v28

    move-object v5, v6

    move-object v7, v6

    move-object v6, v11

    move-object/from16 v23, v7

    move-object/from16 v28, v13

    move-object/from16 v13, v26

    move-object v7, v14

    move-object/from16 v37, v8

    move-object/from16 v8, v16

    move-object/from16 v24, v9

    move-object/from16 v9, v17

    move-object/from16 v25, v10

    move-object/from16 v10, v18

    move-object/from16 v29, v11

    move-object/from16 v26, v31

    move-object/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lcom/project7/localmanager/LocalGatewayServer;->handleReliableRpc(Ljava/io/OutputStream;[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    .line 409
    move-object/from16 v3, v25

    move-object/from16 v4, v23

    move-object/from16 v5, v29

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    move-object v2, v14

    move-object/from16 v10, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v29

    move-object/from16 v23, v13

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 396
    :cond_13
    move-object/from16 v22, v3

    move-object/from16 v37, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v10, v23

    move-object/from16 v29, v28

    move-object/from16 v23, v6

    move-object/from16 v28, v13

    move-object/from16 v13, v26

    move-object/from16 v26, v31

    goto :goto_a

    .line 395
    :cond_14
    move-object/from16 v22, v3

    move-object/from16 v37, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v10, v23

    move-object/from16 v29, v28

    move-object/from16 v23, v6

    move-object/from16 v28, v13

    move-object/from16 v13, v26

    move-object/from16 v26, v31

    .line 410
    :goto_a
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    move-object/from16 v9, v25

    invoke-static {v1, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v6, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 411
    move v8, v5

    move-object/from16 v1, p0

    move/from16 v25, v7

    const/4 v5, 0x5

    move-object v7, v2

    move-object v2, v15

    move-object v3, v9

    move-object/from16 v30, v14

    move v14, v5

    move-object v5, v6

    move-object/from16 v6, v23

    move-object/from16 v38, v7

    move-object/from16 v7, v29

    move v14, v8

    move-object v8, v10

    move-object v14, v9

    move-object/from16 v9, v16

    move-object/from16 v33, v10

    move-object/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcom/project7/localmanager/LocalGatewayServer;->handleSuppressionRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 413
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v1, "battleYazhiAsk"

    invoke-direct {v12, v15, v14, v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v10, v23

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v23, v13

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 410
    :cond_15
    move-object/from16 v38, v2

    move/from16 v25, v7

    move-object/from16 v33, v10

    move-object/from16 v30, v14

    move-object v14, v9

    .line 414
    :cond_16
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v5, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 415
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object/from16 v6, v23

    move-object/from16 v7, v29

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->handleDailyRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object/from16 v10, v23

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v23, v13

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 417
    :cond_17
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v5, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 418
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object/from16 v6, v23

    move-object/from16 v7, v29

    move-object/from16 v8, v33

    invoke-direct/range {v1 .. v8}, Lcom/project7/localmanager/LocalGatewayServer;->handleSpecialItemRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 419
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v1, "specialItemRpc"

    invoke-direct {v12, v15, v14, v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v10, v23

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v23, v13

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 420
    :cond_18
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v5, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 421
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object/from16 v6, v23

    move-object/from16 v7, v29

    move-object/from16 v8, v33

    invoke-direct/range {v1 .. v8}, Lcom/project7/localmanager/LocalGatewayServer;->handleWeekRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 422
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v1, "weekLifecycleRpc"

    invoke-direct {v12, v15, v14, v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v10, v23

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v23, v13

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 423
    :cond_19
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v5, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 424
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object/from16 v6, v23

    move-object/from16 v7, v29

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->handleHomeRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object/from16 v10, v23

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v23, v13

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 426
    :cond_1a
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v5, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 427
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object/from16 v6, v23

    move-object/from16 v7, v29

    move-object/from16 v8, v33

    invoke-direct/range {v1 .. v8}, Lcom/project7/localmanager/LocalGatewayServer;->handleServiceRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 428
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v1, "cityServiceRpc"

    invoke-direct {v12, v15, v14, v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v10, v23

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v23, v13

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 429
    :cond_1b
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v5, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 430
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object/from16 v6, v23

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->handleResourceRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 432
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v2, "resourceRpc"

    invoke-direct {v12, v15, v14, v1, v2}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    .line 433
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    move-object/from16 v10, v23

    move-object/from16 v9, v29

    move-object/from16 v8, v33

    invoke-direct {v12, v0, v10, v9, v8}, Lcom/project7/localmanager/LocalGatewayServer;->refreshResourceProfile([BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    move-object v2, v8

    move-object v11, v9

    move-object/from16 v23, v13

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 430
    :cond_1c
    move-object/from16 v10, v23

    move-object/from16 v9, v29

    move-object/from16 v8, v33

    goto :goto_b

    .line 429
    :cond_1d
    move-object/from16 v10, v23

    move-object/from16 v9, v29

    move-object/from16 v8, v33

    .line 434
    :goto_b
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v5, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 435
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->handleBasicRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 437
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v1, "basicProfileRpc"

    invoke-direct {v12, v15, v14, v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object v2, v8

    move-object v11, v9

    move-object/from16 v23, v13

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 438
    :cond_1e
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v5, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const/16 v23, 0x0

    .line 439
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v6, v10

    move-object v7, v9

    move-object/from16 v33, v8

    move-object/from16 v29, v9

    move-object/from16 v9, v23

    invoke-direct/range {v1 .. v9}, Lcom/project7/localmanager/LocalGatewayServer;->handleConstructionRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 441
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v1, "constructionRpc"

    invoke-direct {v12, v15, v14, v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v23, v13

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 438
    :cond_1f
    move-object/from16 v33, v8

    move-object/from16 v29, v9

    .line 442
    :cond_20
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v5, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 443
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v6, v10

    move-object/from16 v7, v29

    move-object/from16 v8, v33

    invoke-direct/range {v1 .. v8}, Lcom/project7/localmanager/LocalGatewayServer;->handleDayRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 445
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v1, "dayRpc"

    invoke-direct {v12, v15, v14, v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v23, v13

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 446
    :cond_21
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    .line 447
    const-string v2, "incDayWhenNoActionVal"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const-string v3, "clearCurDailySettlement"

    if-nez v1, :cond_22

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    .line 448
    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 449
    :cond_22
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 450
    move-object v8, v2

    goto :goto_c

    :cond_23
    move-object v8, v3

    .line 451
    :goto_c
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v4, v10

    move-object/from16 v5, v29

    move-object/from16 v6, v33

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->handleCalendar(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/lang/String;)V

    .line 452
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-direct {v12, v15, v14, v0, v8}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    .line 453
    move-object/from16 v23, v13

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v13, v37

    goto/16 :goto_17

    :cond_24
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    .line 454
    const-string v7, "zhaiRequest"

    invoke-static {v7}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 455
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v4, v10

    move-object/from16 v5, v29

    move-object/from16 v6, v33

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->handleRest(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 456
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-direct {v12, v15, v14, v0, v7}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v23, v13

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 457
    :cond_25
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->REQUEST_TRIGGER_DA_XUAN_WO:[B

    .line 458
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 459
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v1, "requestTriggerDaXuanWo"

    invoke-direct {v12, v15, v14, v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v23, v13

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 465
    :cond_26
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->SET_PLAYER_NAME:[B

    .line 466
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 467
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-direct {v12, v15, v14, v0, v10}, Lcom/project7/localmanager/LocalGatewayServer;->handleSetPlayerName(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v23, v13

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object/from16 v13, v37

    goto/16 :goto_17

    .line 473
    :cond_27
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->CHECK_GAMEPLAY_SWITCH:[B

    .line 474
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 475
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v1, "g"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    nop

    .line 481
    const-string v1, "checkGamePlaySwitchReply"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    .line 482
    const/4 v2, 0x1

    invoke-static {v0, v2, v13}, Lcom/project7/localmanager/BsonLite;->gamePlaySwitchReplyDocument(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v2

    .line 479
    invoke-static {v14, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    .line 476
    const/4 v2, 0x5

    invoke-direct {v12, v15, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGamePlaySwitch allowed gamePlay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v37

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    move-object/from16 v23, v13

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object v13, v9

    goto/16 :goto_17

    .line 474
    :cond_28
    move-object/from16 v9, v37

    goto :goto_d

    .line 473
    :cond_29
    move-object/from16 v9, v37

    .line 486
    :goto_d
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->REQUEST_LUCKY_DRAW_CARD:[B

    .line 487
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 488
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v2, "idx"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 489
    iget-object v2, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-static {v2, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 490
    if-nez v1, :cond_2a

    move/from16 v1, v25

    goto :goto_e

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 491
    :goto_e
    if-nez v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_f

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 492
    :goto_f
    nop

    .line 497
    const-string v3, "replyLuckyDrawCard"

    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    .line 498
    const/4 v4, 0x1

    invoke-static {v4, v1, v2}, Lcom/project7/localmanager/BsonLite;->luckyDrawCardReplyDocument(ZII)[B

    move-result-object v4

    .line 495
    invoke-static {v14, v3, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v3

    .line 492
    const/4 v4, 0x5

    invoke-direct {v12, v15, v4, v3}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 501
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v3, "requestLuckyDrawCard"

    invoke-direct {v12, v15, v14, v0, v3}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lucky draw card completed index="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    move-object/from16 v23, v13

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object v13, v9

    goto/16 :goto_17

    :cond_2c
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->REQUEST_FILE:[B

    .line 505
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 506
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-static {v0, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 507
    if-nez v0, :cond_2d

    const/4 v1, 0x1

    goto :goto_10

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 508
    :goto_10
    nop

    .line 513
    const-string v0, "replyFile"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 514
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->luckyDrawFileContentsReplyDocument(ZI)[B

    move-result-object v2

    .line 511
    invoke-static {v14, v0, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    .line 508
    const/4 v2, 0x5

    invoke-direct {v12, v15, v2, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lucky draw file contents completed type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object/from16 v23, v13

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object v13, v9

    goto/16 :goto_17

    :cond_2e
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->REQUEST_QUIT_FILE:[B

    .line 519
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 520
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-static {v1, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 521
    if-nez v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_11

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 522
    :goto_11
    nop

    .line 527
    const-string v2, "replyQuitFile"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    .line 528
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/project7/localmanager/BsonLite;->luckyDrawQuitReplyDocument(ZI)[B

    move-result-object v3

    .line 525
    invoke-static {v14, v2, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 522
    const/4 v3, 0x5

    invoke-direct {v12, v15, v3, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 531
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v2, "requestQuitFile"

    invoke-direct {v12, v15, v14, v0, v2}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lucky draw file closed type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v23, v13

    move-object/from16 v11, v29

    move-object/from16 v2, v33

    move-object v13, v9

    goto/16 :goto_17

    :cond_30
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->GET_ALL_AREA_INFO_REQUEST:[B

    .line 535
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 536
    invoke-static/range {v29 .. v29}, Lcom/project7/localmanager/LocalGatewayServer;->isHighSchoolUnlocked(Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    .line 537
    nop

    .line 542
    const-string v2, "get_all_area_info_reply"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, v12, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    .line 543
    move-object/from16 v11, v29

    invoke-interface {v3, v10, v11}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v3

    invoke-static {v1, v11, v3}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v3

    .line 540
    invoke-static {v14, v2, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 537
    const/4 v3, 0x5

    invoke-direct {v12, v15, v3, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 546
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v2, "getAllAreaInfoRequest"

    invoke-direct {v12, v15, v14, v0, v2}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all area info completed highSchool="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move-object/from16 v23, v13

    move-object/from16 v2, v33

    move-object v13, v9

    goto/16 :goto_17

    .line 535
    :cond_31
    move-object/from16 v11, v29

    goto :goto_12

    .line 534
    :cond_32
    move-object/from16 v11, v29

    .line 549
    :goto_12
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->GET_AREA_INFO_REQUEST:[B

    .line 550
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 551
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    move-object/from16 v2, v30

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 552
    invoke-static {v11}, Lcom/project7/localmanager/LocalGatewayServer;->isHighSchoolUnlocked(Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v2

    .line 553
    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalGatewayServer;->resolveAreaId(Ljava/lang/Integer;Z)I

    move-result v1

    .line 554
    nop

    .line 559
    const-string v3, "get_area_info_reply"

    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, v12, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    .line 561
    invoke-interface {v4, v10, v11}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v4

    .line 560
    invoke-static {v1, v2, v11, v4}, Lcom/project7/localmanager/BsonLite;->areaInfoReplyDocument(IZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v2

    .line 557
    invoke-static {v14, v3, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 554
    const/4 v3, 0x5

    invoke-direct {v12, v15, v3, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 564
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    const-string v2, "getAreaInfoRequest"

    invoke-direct {v12, v15, v14, v0, v2}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "area info completed area="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    move-object/from16 v23, v13

    move-object/from16 v2, v33

    move-object v13, v9

    goto/16 :goto_17

    :cond_33
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->COMBAT_OFFLINE_FINISH:[B

    .line 568
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 569
    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v7, v33

    move-object/from16 v8, v16

    move-object/from16 v23, v13

    move-object v13, v9

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/project7/localmanager/LocalGatewayServer;->handleCombatOfflineFinish(Ljava/io/OutputStream;[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v2, v33

    goto/16 :goto_17

    .line 568
    :cond_34
    move-object/from16 v23, v13

    move-object v13, v9

    goto :goto_13

    .line 567
    :cond_35
    move-object/from16 v23, v13

    move-object v13, v9

    .line 579
    :goto_13
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const-string v8, "combatCancelRpc"

    if-eqz v1, :cond_37

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    iget-object v5, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 580
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->handleCombatCancelRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 581
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    const-string v2, "battleStageGiveup"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 582
    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v7, v33

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->finishAbandonedStory(Ljava/io/OutputStream;[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 583
    :cond_36
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-direct {v12, v15, v14, v0, v8}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v2, v33

    goto/16 :goto_17

    .line 584
    :cond_37
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    .line 585
    const-string v2, "battleRealFailWithEventMode"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 586
    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v14

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v7, v33

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->finishAbandonedStory(Ljava/io/OutputStream;[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 587
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-direct {v12, v15, v14, v0, v8}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    move-object/from16 v2, v33

    goto/16 :goto_17

    .line 588
    :cond_38
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v2, Lcom/project7/localmanager/LocalGatewayServer;->ENTER_PLACE:[B

    .line 589
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 590
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    move-object/from16 v2, v38

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    if-nez v1, :cond_3a

    .line 592
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 593
    if-nez v0, :cond_39

    move-object/from16 v1, v20

    goto :goto_14

    :cond_39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 595
    :cond_3a
    :goto_14
    move-object/from16 v2, v33

    if-eqz v2, :cond_3b

    .line 596
    invoke-virtual {v2, v1}, Lcom/project7/localmanager/LocalEventEngine;->enterPlace(Ljava/lang/String;)V

    .line 597
    iget-object v0, v12, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v10, v11}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 599
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterPlace completed scene="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    goto/16 :goto_17

    .line 589
    :cond_3c
    move-object/from16 v2, v33

    goto :goto_15

    .line 588
    :cond_3d
    move-object/from16 v2, v33

    .line 600
    :goto_15
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v3, Lcom/project7/localmanager/LocalGatewayServer;->TUTORIAL_BEGIN:[B

    .line 601
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tutorialBegin accepted pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    if-nez v2, :cond_3e

    .line 604
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_16

    :cond_3e
    invoke-virtual {v2}, Lcom/project7/localmanager/LocalEventEngine;->processingNewbees()Ljava/util/Set;

    move-result-object v1

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 605
    :cond_3f
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    sget-object v3, Lcom/project7/localmanager/LocalGatewayServer;->TUTORIAL_END:[B

    .line 606
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tutorialEnd accepted parameters="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 608
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->debugDocument([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 609
    :cond_40
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    .line 610
    const-string v3, "exceptUpload"

    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 611
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-direct {v12, v1}, Lcom/project7/localmanager/LocalGatewayServer;->handleClientException([B)V

    .line 612
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    invoke-direct {v12, v15, v14, v0, v3}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    goto :goto_17

    .line 614
    :cond_41
    iget-object v1, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->hex([B)Ljava/lang/String;

    move-result-object v1

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled RPC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->knownMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " md5="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " parameters="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 618
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->debugDocument([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-static {v13, v3}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v3, v12, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6536\u5230\u672a\u5b9e\u73b0\u7684\u4e1a\u52a1 RPC\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->knownMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nMD5\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 620
    const/4 v5, 0x1

    invoke-interface {v3, v5, v4}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 625
    iget-object v0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->knownMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-direct {v12, v15, v14, v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->completeEmptyCallback(Ljava/io/OutputStream;[B[BLjava/lang/String;)V

    .line 632
    :goto_17
    move-object v4, v2

    move-object v6, v10

    move-object v5, v11

    move-object/from16 v3, v22

    move-object/from16 v2, v28

    :goto_18
    move-object/from16 v0, v21

    goto/16 :goto_1a

    .line 276
    :catch_1
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v22, v3

    move-object v13, v8

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v14

    move-object/from16 v2, v23

    move-object v11, v5

    move-object/from16 v23, v7

    move-object v14, v10

    move-object v10, v6

    .line 277
    const-string v1, "ignoring malformed entity RPC"

    invoke-static {v13, v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    iget-object v0, v12, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    const-string v1, "\u5ffd\u7565\u65e0\u6cd5\u89e3\u6790\u7684\u4e1a\u52a1 RPC\uff0c\u8fde\u63a5\u4fdd\u6301\u4e2d"

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 279
    move-object v4, v2

    move-object v6, v10

    move-object v5, v11

    move-object v8, v13

    move-object v10, v14

    move-object/from16 v3, v22

    move-object/from16 v7, v23

    move-object/from16 v9, v24

    move-object/from16 v11, v26

    move-object/from16 v14, v27

    move-object/from16 v2, v28

    move-object/from16 v13, p2

    goto/16 :goto_0

    .line 633
    :cond_42
    move-object/from16 v28, v2

    move-object/from16 v22, v3

    move-object v13, v8

    move-object/from16 v24, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v14

    move-object/from16 v2, v23

    move-object v11, v5

    move-object/from16 v23, v7

    move-object v14, v10

    move-object v10, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandled service method "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/project7/localmanager/LocalGatewayServer$Frame;->method:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_19
    move-object v4, v2

    move-object v6, v10

    move-object v5, v11

    move-object/from16 v0, v21

    move-object/from16 v3, v22

    move-object/from16 v2, v28

    :goto_1a
    if-eqz v5, :cond_43

    iget-object v1, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 636
    iget-object v0, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    .line 637
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->clear()V

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->clear()V

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    move-object/from16 v21, v0

    goto :goto_1b

    .line 639
    :cond_43
    move-object/from16 v21, v0

    :goto_1b
    move-object v8, v13

    move-object v10, v14

    move-object/from16 v7, v23

    move-object/from16 v9, v24

    move-object/from16 v11, v26

    move-object/from16 v14, v27

    move-object/from16 v13, p2

    goto/16 :goto_0

    .line 260
    :catch_2
    move-exception v0

    .line 261
    iget-object v0, v12, Lcom/project7/localmanager/LocalGatewayServer;->activeSession:Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

    move-object/from16 v1, p2

    if-ne v1, v0, :cond_44

    .line 262
    iget-object v0, v12, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    const-string v1, "\u6e38\u620f\u5df2\u65ad\u5f00\n\u7b49\u5f85\u91cd\u65b0\u8fde\u63a5"

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 263
    :cond_44
    return-void

    .line 640
    :cond_45
    return-void
.end method

.method private handleClientException([B)V
    .locals 6

    .line 762
    const-string v0, "e"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p1

    .line 763
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 764
    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 765
    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 766
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 767
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client exception report id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Project7Gateway"

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v1, "BaseException: delay_exception_gc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 770
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r?\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 771
    iget-object v2, p0, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5ba2\u6237\u7aef\u5f02\u5e38\u62a5\u544a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 772
    goto :goto_0

    .line 773
    :cond_3
    return-void
.end method

.method private handleCombatAdmission(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;I[B)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Lcom/project7/localmanager/LocalEventEngine;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1754
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v0, p7

    move/from16 v12, p8

    move-object/from16 v1, p9

    iget-object v2, v7, Lcom/project7/localmanager/LocalGatewayServer;->combatReplies:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;

    invoke-virtual {v2, v0, v6, v9}, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->bind(Ljava/util/Set;Ljava/lang/String;[B)V

    .line 1755
    iget-object v3, v2, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->values:Ljava/util/Map;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;

    .line 1756
    const-string v14, "combatOfflineReply"

    const-string v5, "Project7Gateway"

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eqz v13, :cond_5

    .line 1759
    iget-boolean v0, v13, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->delivered:Z

    if-eqz v0, :cond_0

    return-void

    .line 1760
    :cond_0
    iget-object v0, v7, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v0, v6, v10}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v16

    .line 1761
    iget-object v0, v13, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->requestHash:[B

    invoke-static/range {p9 .. p9}, Lcom/project7/localmanager/LocalGatewayServer;->combatHash([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1762
    move-object/from16 v0, p0

    move-object v1, v13

    move v15, v3

    move/from16 v3, p8

    move-object/from16 v4, v16

    move-object/from16 v18, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/LocalGatewayServer;->currentCombatReply(Lcom/project7/localmanager/LocalGatewayServer$CombatReply;Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;I[BLcom/project7/localmanager/LocalEventEngine;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v13, v18

    goto :goto_0

    .line 1766
    :cond_1
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/LocalGatewayServer;->emitCombatControls(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalGatewayServer$CombatReply;[BZ)V

    .line 1767
    iget v0, v13, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    if-eq v0, v15, :cond_2

    iget v0, v13, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1768
    :cond_3
    invoke-direct {v7, v8, v9, v13}, Lcom/project7/localmanager/LocalGatewayServer;->emitCombatCores(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalGatewayServer$CombatReply;)V

    .line 1769
    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, v13, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->parameters:[B

    invoke-static {v9, v0, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {v7, v8, v1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1770
    iput-boolean v15, v13, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->delivered:Z

    .line 1771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "combat admission reply restored seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, v18

    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    return-void

    .line 1761
    :cond_4
    move-object v13, v5

    .line 1763
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stale/mismatched combat admission retry ignored seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    return-void

    .line 1774
    :cond_5
    move v15, v3

    move v3, v4

    move-object v13, v5

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "combat admission retry has no retained reply seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    return-void

    .line 1779
    :cond_6
    new-instance v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;

    const/4 v4, 0x0

    invoke-direct {v5, v4}, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;-><init>(Lcom/project7/localmanager/LocalGatewayServer$1;)V

    invoke-static/range {p9 .. p9}, Lcom/project7/localmanager/LocalGatewayServer;->combatHash([B)[B

    move-result-object v4

    iput-object v4, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->requestHash:[B

    .line 1780
    const-string v4, "t"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    const-string v3, "s"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 1781
    iput v3, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->scene:I

    .line 1782
    const-string v15, "h"

    invoke-static {v1, v15}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1783
    move-object/from16 v25, v14

    const-string v14, "d"

    invoke-static {v1, v14}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v26

    .line 1784
    iget-object v8, v7, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v8, v6, v10}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v8

    .line 1785
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v17

    const/16 v27, 0x0

    if-nez v17, :cond_7

    if-lez v3, :cond_7

    const/16 v17, 0x1

    goto :goto_1

    :cond_7
    move/from16 v17, v27

    .line 1786
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    if-eqz v19, :cond_8

    iget-object v9, v7, Lcom/project7/localmanager/LocalGatewayServer;->combatCatalog:Lcom/project7/localmanager/LocalCombatCatalog;

    if-eqz v9, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/project7/localmanager/LocalCombatCatalog;->supportsHero(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    move/from16 v0, v27

    :goto_3
    and-int v17, v17, v0

    move-object/from16 v9, p2

    move-object/from16 v0, p7

    goto :goto_2

    .line 1787
    :cond_9
    nop

    .line 1788
    const-string v0, "f"

    const-string v9, "q7Battle"

    const-string v18, "m"

    move-object/from16 v28, v2

    const-string v2, "showMessageStr"

    move-object/from16 v29, v14

    const/4 v14, 0x1

    if-eq v4, v14, :cond_e

    const/4 v14, 0x2

    if-eq v4, v14, :cond_e

    .line 1789
    invoke-static {v4}, Lcom/project7/localmanager/LocalDailyEngine;->battleType(I)Z

    move-result v14

    and-int v14, v17, v14

    .line 1790
    if-eqz v14, :cond_c

    .line 1791
    iget-object v8, v7, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    move/from16 p6, v14

    const-string v14, "q7DailyBegin"

    invoke-interface {v8, v6, v14, v1, v10}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v1

    .line 1792
    iget-object v8, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v14, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->controls:Ljava/util/List;

    move-object/from16 v17, v8

    iget-object v8, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1793
    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v14, p6

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v8, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    move/from16 v14, v27

    goto :goto_4

    .line 1794
    :cond_b
    move-object/from16 v30, v13

    move-object/from16 v8, v17

    goto :goto_5

    :cond_c
    move/from16 p6, v14

    iget-object v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->controls:Ljava/util/List;

    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    move-object/from16 v30, v13

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v18, v13, v27

    const-string v17, "\u8be5\u6218\u6597\u6a21\u5f0f\u5c1a\u672a\u63a5\u5165\u672c\u5730\u7f51\u5173\uff0c\u672a\u6263\u9664\u8d44\u6e90"

    const/16 v18, 0x1

    aput-object v17, v13, v18

    .line 1795
    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v13

    invoke-direct {v14, v2, v13}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 1794
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v14, p6

    .line 1796
    :goto_5
    if-eqz v14, :cond_d

    .line 1797
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalGatewayServer;->hex([B)Ljava/lang/String;

    move-result-object v21

    iget-object v1, v7, Lcom/project7/localmanager/LocalGatewayServer;->combatCatalog:Lcom/project7/localmanager/LocalCombatCatalog;

    .line 1796
    move/from16 v17, v4

    move/from16 v18, v3

    move-object/from16 v19, v15

    move-object/from16 v20, v26

    move-object/from16 v22, v8

    move-object/from16 v23, v1

    invoke-static/range {v17 .. v23}, Lcom/project7/localmanager/LocalDailyEngine;->combatReply(IILjava/util/List;[BLjava/lang/String;[BLcom/project7/localmanager/LocalCombatCatalog;)[B

    move-result-object v1

    iput-object v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->parameters:[B

    .line 1836
    :cond_d
    move-object/from16 v32, v9

    move-object/from16 v31, v15

    move-object/from16 v9, v30

    const/4 v6, 0x0

    goto/16 :goto_c

    .line 1788
    :cond_e
    move-object/from16 v30, v13

    .line 1798
    invoke-static {v8}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1799
    nop

    .line 1800
    iget-object v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->controls:Ljava/util/List;

    new-instance v13, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v18, v14, v27

    const-string v17, "\u8bf7\u5148\u9000\u51fa\u5f53\u524d\u65e5\u5e38\u6218\u6597"

    move-object/from16 v19, v8

    const/4 v8, 0x1

    aput-object v17, v14, v8

    .line 1801
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v14

    invoke-direct {v13, v2, v14}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 1800
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v9

    move-object/from16 v31, v15

    move-object/from16 v8, v19

    move/from16 v14, v27

    move-object/from16 v9, v30

    const/4 v6, 0x0

    goto/16 :goto_c

    .line 1803
    :cond_f
    move-object/from16 v19, v8

    const/4 v8, 0x1

    .line 1804
    if-ne v4, v8, :cond_10

    invoke-static {v3}, Lcom/project7/localmanager/LocalCityProgress;->area(I)I

    move-result v13

    if-nez v13, :cond_10

    .line 1805
    nop

    .line 1806
    iget-object v13, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->controls:Ljava/util/List;

    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    move-object/from16 v31, v15

    const/4 v8, 0x2

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v18, v15, v27

    const-string v8, "\u8be5\u5730\u533a\u5173\u5361\u5c1a\u672a\u63a5\u5165\u672c\u5730\u7f51\u5173\uff0c\u672a\u4fee\u6539\u8fdb\u5ea6"

    const/16 v17, 0x1

    aput-object v8, v15, v17

    .line 1807
    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v8

    invoke-direct {v14, v2, v8}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 1806
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v17, v27

    goto :goto_6

    .line 1804
    :cond_10
    move-object/from16 v31, v15

    .line 1809
    :goto_6
    const/4 v2, 0x2

    if-ne v4, v2, :cond_13

    if-eqz v17, :cond_13

    .line 1810
    if-eqz v11, :cond_11

    invoke-virtual {v11, v3}, Lcom/project7/localmanager/LocalEventEngine;->beginStoryBattle(I)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    goto :goto_7

    :cond_11
    move/from16 v2, v27

    .line 1811
    :goto_7
    if-eqz v2, :cond_12

    iget-object v8, v7, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v8, v6, v10}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1813
    :cond_12
    move/from16 v17, v2

    :cond_13
    const/4 v2, 0x1

    if-ne v4, v2, :cond_14

    if-eqz v17, :cond_14

    .line 1814
    iget-object v2, v7, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const-string v8, "begin"

    invoke-interface {v2, v6, v8, v1, v10}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateEconomy(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v1

    .line 1815
    iget-object v8, v1, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    iget-object v2, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->controls:Ljava/util/List;

    iget-object v13, v1, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1816
    iget-boolean v2, v1, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    move v14, v2

    goto :goto_8

    .line 1818
    :cond_14
    move/from16 v14, v17

    move-object/from16 v8, v19

    const/4 v1, 0x0

    :goto_8
    if-eqz v14, :cond_19

    .line 1819
    const/16 v2, 0x65

    if-ne v3, v2, :cond_15

    if-eqz v11, :cond_15

    invoke-virtual/range {p5 .. p5}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v2

    const/16 v8, 0x413

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1820
    invoke-virtual {v11, v8}, Lcom/project7/localmanager/LocalEventEngine;->startEvent(I)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v8, p6

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v7, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v2, v6, v10}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1822
    :cond_15
    invoke-direct {v7, v6, v10, v11}, Lcom/project7/localmanager/LocalGatewayServer;->prepareEventEffects(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    iget-object v8, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 1823
    nop

    .line 1824
    if-nez v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "local-"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_16
    iget-object v1, v1, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 1825
    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 1824
    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    move-object/from16 v19, v1

    .line 1826
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalGatewayServer;->hex([B)Ljava/lang/String;

    move-result-object v22

    iget-object v1, v7, Lcom/project7/localmanager/LocalGatewayServer;->combatCatalog:Lcom/project7/localmanager/LocalCombatCatalog;

    .line 1823
    move/from16 v17, v4

    move/from16 v18, v3

    move-object/from16 v20, v31

    move-object/from16 v21, v26

    move-object/from16 v23, v8

    move-object/from16 v24, v1

    invoke-static/range {v17 .. v24}, Lcom/project7/localmanager/BsonLite;->combatOfflineReplyDocument(IILjava/lang/String;Ljava/lang/Iterable;[BLjava/lang/String;[BLcom/project7/localmanager/LocalCombatCatalog;)[B

    move-result-object v1

    iput-object v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->parameters:[B

    .line 1827
    const/4 v1, 0x2

    if-ne v4, v1, :cond_18

    .line 1828
    invoke-virtual {v11, v3}, Lcom/project7/localmanager/LocalEventEngine;->pendingStoryBattleOwners(I)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->owners:Ljava/util/Set;

    .line 1829
    invoke-static {v8}, Lcom/project7/localmanager/LocalServiceEngine;->cores([B)Ljava/util/Map;

    move-result-object v1

    .line 1830
    const/4 v13, 0x1

    :goto_a
    const/16 v15, 0x8

    if-gt v13, v15, :cond_17

    iget-object v15, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->cores:Ljava/util/List;

    move-object/from16 p6, v2

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v16, "c"

    aput-object v16, v6, v27

    .line 1831
    move-object/from16 v16, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v32, v9

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const-string v8, "b"

    const/4 v9, 0x2

    aput-object v8, v6, v9

    const/4 v8, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v6, v8

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    const-string v8, "updateBlackCore"

    invoke-direct {v2, v8, v6}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 1830
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p3

    move-object/from16 v2, p6

    move-object/from16 v8, v16

    move-object/from16 v9, v32

    goto :goto_a

    .line 1832
    :cond_17
    move-object/from16 p6, v2

    move-object/from16 v16, v8

    move-object/from16 v32, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "story combat black cores="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, v30

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1827
    :cond_18
    move-object/from16 p6, v2

    move-object/from16 v16, v8

    move-object/from16 v32, v9

    move-object/from16 v9, v30

    .line 1836
    :goto_b
    move-object/from16 v6, p6

    move-object/from16 v8, v16

    goto :goto_c

    .line 1818
    :cond_19
    move-object/from16 v32, v9

    move-object/from16 v9, v30

    const/4 v6, 0x0

    .line 1836
    :goto_c
    if-eqz v14, :cond_1a

    move v1, v4

    goto :goto_d

    :cond_1a
    move/from16 v1, v27

    :goto_d
    iput v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    .line 1837
    iget-object v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->parameters:[B

    if-nez v1, :cond_1b

    const/16 v17, 0x0

    .line 1838
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalGatewayServer;->hex([B)Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    iget-object v1, v7, Lcom/project7/localmanager/LocalGatewayServer;->combatCatalog:Lcom/project7/localmanager/LocalCombatCatalog;

    .line 1837
    const-string v19, ""

    move/from16 v18, v3

    move-object/from16 v21, v26

    move-object/from16 v24, v1

    invoke-static/range {v17 .. v24}, Lcom/project7/localmanager/BsonLite;->combatOfflineReplyDocument(IILjava/lang/String;Ljava/lang/Iterable;[BLjava/lang/String;[BLcom/project7/localmanager/LocalCombatCatalog;)[B

    move-result-object v1

    iput-object v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->parameters:[B

    .line 1839
    :cond_1b
    const-string v1, "weeknum"

    invoke-static {v8, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 1840
    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    iput v2, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->week:I

    move-object/from16 v2, v29

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->day:I

    .line 1841
    invoke-static {v8}, Lcom/project7/localmanager/LocalGatewayServer;->combatHash([B)[B

    move-result-object v1

    iput-object v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->profileHash:[B

    .line 1842
    move-object/from16 v2, v28

    iget-object v1, v2, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->latestAccepted:Ljava/lang/Integer;

    iput-object v1, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->acceptedAtPreparation:Ljava/lang/Integer;

    .line 1843
    nop

    .line 1844
    const/4 v1, 0x1

    if-ne v4, v1, :cond_1c

    move-object/from16 v1, v32

    goto :goto_e

    :cond_1c
    const-string v1, "q7DailyBattle"

    .line 1843
    :goto_e
    invoke-static {v8, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->fight:Ljava/lang/String;

    .line 1846
    invoke-virtual {v2, v12, v5}, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->put(ILcom/project7/localmanager/LocalGatewayServer$CombatReply;)V

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1847
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v13, v3

    move-object v3, v5

    move v15, v4

    move-object v4, v8

    move-object v8, v5

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/LocalGatewayServer;->emitCombatControls(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalGatewayServer$CombatReply;[BZ)V

    .line 1848
    if-eqz v6, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->emitEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 1849
    :cond_1d
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1, v8}, Lcom/project7/localmanager/LocalGatewayServer;->emitCombatCores(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalGatewayServer$CombatReply;)V

    .line 1850
    invoke-static/range {v25 .. v25}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, v8, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->parameters:[B

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v7, v0, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1851
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->delivered:Z

    .line 1852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offline combat admission type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " heroes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " accepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    return-void
.end method

.method private handleCombatCancelRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1858
    const-string v0, "battleStageGiveup"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 1859
    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v3, Lcom/project7/localmanager/LocalGatewayServer;->COMBAT_OFFLINE_RESET:[B

    invoke-static {p3, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-nez p3, :cond_0

    return v2

    .line 1860
    :cond_0
    const-string p3, "s"

    invoke-static {p4, p3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    .line 1861
    if-nez p4, :cond_1

    move p4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1862
    :goto_0
    iget-object v3, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v3, p5, p6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v3

    .line 1863
    const-string v4, "q7DailyBattle"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 1864
    const-string v5, "q7Battle"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 1865
    if-eqz v1, :cond_2

    invoke-static {p3, p4}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v6

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 1866
    :goto_1
    nop

    .line 1867
    invoke-static {v3}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x5

    if-eqz v3, :cond_5

    .line 1868
    if-eqz v1, :cond_3

    if-lez p4, :cond_8

    invoke-static {v4, p3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    if-ne p4, v3, :cond_8

    .line 1869
    :cond_3
    iget-object v2, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const-string v3, "q7DailyReset"

    invoke-interface {v2, p5, v3, v6, p6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p5

    .line 1870
    iget-object p6, p5, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_2
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v3, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 1871
    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, v3, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 1870
    invoke-direct {p0, p1, v8, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_2

    .line 1872
    :cond_4
    iget-object p5, p5, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p5}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result p5

    .line 1873
    xor-int/lit8 v2, p5, 0x1

    goto :goto_4

    .line 1874
    :cond_5
    if-eqz v1, :cond_6

    if-lez p4, :cond_8

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1875
    invoke-static {v5, p3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    if-ne p4, v3, :cond_8

    .line 1876
    :cond_6
    iget-object v2, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const-string v3, "reset"

    invoke-interface {v2, p5, v3, v6, p6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateEconomy(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object p5

    .line 1877
    iget-object p6, p5, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_3
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v3, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 1878
    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, v3, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 1877
    invoke-direct {p0, p1, v8, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_3

    .line 1879
    :cond_7
    iget-boolean v2, p5, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    .line 1882
    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 1883
    const-string p5, "battleStageGiveupReply"

    invoke-static {p5}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object p5

    invoke-static {p3, p4}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object p3

    .line 1882
    invoke-static {p2, p5, p3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    invoke-direct {p0, p1, v8, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1884
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "combat cancellation method="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    const-string v0, "combatOfflineReset"

    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " scene="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " receiptCleared="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Project7Gateway"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    return v7
.end method

.method private handleCombatOfflineFinish(Ljava/io/OutputStream;[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "[B[B",
            "Ljava/lang/String;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Lcom/project7/localmanager/LocalEventEngine;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1917
    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v6, "t"

    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1918
    const-string v7, "s"

    invoke-static {v0, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1919
    if-nez v6, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v9, v6

    .line 1920
    :goto_0
    if-nez v7, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v10, v6

    .line 1921
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/BsonLite;->combatWinValue([B)I

    move-result v6

    .line 1922
    const-string v7, "h"

    invoke-static {v0, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1923
    const-string v11, "x"

    invoke-static {v0, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 1924
    const-string v15, " scene="

    const/4 v14, 0x1

    const-string v8, "Project7Gateway"

    const-string v13, "combatOfflineReward"

    move/from16 v18, v6

    const/4 v6, 0x5

    if-eq v9, v14, :cond_4

    const/4 v14, 0x2

    if-eq v9, v14, :cond_4

    .line 1925
    invoke-static {v9}, Lcom/project7/localmanager/LocalDailyEngine;->battleType(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1926
    iget-object v5, v12, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const-string v14, "q7DailyFinish"

    invoke-interface {v5, v3, v14, v0, v4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    .line 1927
    nop

    .line 1928
    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 1929
    iget-object v5, v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 1930
    iget-object v5, v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-static {v5}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v4, v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v2, v5, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v4

    invoke-direct {v12, v1, v6, v4}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1931
    goto :goto_2

    .line 1932
    :cond_2
    if-eqz v3, :cond_3

    return-void

    .line 1934
    :cond_3
    invoke-static {v13}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 1935
    const/4 v3, 0x0

    invoke-static {v9, v10, v7, v11, v3}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I)[B

    move-result-object v3

    .line 1934
    invoke-static {v2, v0, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    invoke-direct {v12, v1, v6, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "non-story settlement rejected type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    return-void

    .line 1939
    :cond_4
    const/4 v14, 0x1

    if-ne v9, v14, :cond_5

    invoke-static {v10}, Lcom/project7/localmanager/LocalCityProgress;->area(I)I

    move-result v19

    if-eqz v19, :cond_5

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    .line 1940
    :goto_3
    const/4 v6, 0x2

    if-ne v9, v6, :cond_8

    if-eqz v5, :cond_7

    invoke-virtual {v5, v10}, Lcom/project7/localmanager/LocalEventEngine;->hasPendingStoryBattle(I)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 1941
    :cond_7
    :goto_4
    invoke-static {v13}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 1942
    const/4 v6, 0x0

    invoke-static {v9, v10, v7, v11, v6}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I)[B

    move-result-object v3

    .line 1941
    invoke-static {v2, v0, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {v12, v1, v2, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "story settlement rejected without matching admission scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    return-void

    .line 1940
    :cond_8
    const/4 v6, 0x0

    .line 1946
    :goto_5
    const/16 v16, 0x0

    .line 1947
    sget-object v17, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 1948
    if-eqz v14, :cond_b

    .line 1949
    iget-object v14, v12, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const-string v6, "finish"

    invoke-interface {v14, v3, v6, v0, v4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateEconomy(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v0

    .line 1950
    iget-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v3, v14, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 1951
    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v14, v14, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v2, v3, v14}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v3

    .line 1950
    const/4 v14, 0x5

    invoke-direct {v12, v1, v14, v3}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    move-object/from16 v3, p4

    goto :goto_6

    .line 1952
    :cond_9
    iget-boolean v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    if-eqz v3, :cond_a

    iget v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->win:I

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    .line 1953
    :goto_7
    iget-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 1954
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p3, v3

    const-string v3, "battle settlement accepted="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " replay="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reward="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->debugDocument([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1954
    invoke-static {v8, v3}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v0

    move-object/from16 v18, v6

    move/from16 v6, p3

    goto :goto_8

    .line 1948
    :cond_b
    move-object/from16 v20, v16

    move/from16 v6, v18

    move-object/from16 v18, v17

    .line 1958
    :goto_8
    nop

    .line 1963
    invoke-static {v13}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 1964
    move v13, v9

    move v14, v10

    move-object v3, v15

    move-object v15, v7

    move-object/from16 v16, v11

    move/from16 v17, v6

    invoke-static/range {v13 .. v18}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I[B)[B

    move-result-object v11

    .line 1961
    invoke-static {v2, v0, v11}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    .line 1958
    const/4 v11, 0x5

    invoke-direct {v12, v1, v11, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "offline combat finished type="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " win="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " heroes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v18, v6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move v8, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v11, v20

    invoke-direct/range {v0 .. v11}, Lcom/project7/localmanager/LocalGatewayServer;->finishStoryCombat(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;IIILcom/project7/localmanager/LocalEconomyEngine$Result;)V

    .line 1976
    return-void
.end method

.method private handleConstructionRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/lang/Integer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2063
    const-string v0, "areaBuildRequest"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "playerDestroyBuilding"

    const-string v4, "areaLevelUpRequest"

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2064
    :cond_0
    invoke-static {v4}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_0

    .line 2065
    :cond_1
    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 2066
    :goto_0
    if-nez v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 2067
    :cond_3
    iget-object p3, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {p3, p5, v0, p4, p6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateEconomy(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object p3

    .line 2068
    iget-object p4, p0, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {p4, p5, p6}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 2069
    iget-object p4, p3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 2070
    iget-object v4, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v5, "area_build_reply"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v5, "area_level_up_reply"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    if-eqz p8, :cond_5

    .line 2071
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    invoke-direct {p0, p1, p2, p8, v0}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 2072
    move-object p8, v2

    .line 2074
    :cond_5
    iget-object v4, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-static {v4}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, v4, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    invoke-direct {p0, p1, v3, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2075
    goto :goto_1

    .line 2076
    :cond_6
    if-eqz p8, :cond_7

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 2077
    :cond_7
    if-eqz p7, :cond_8

    iget-boolean p4, p3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    if-eqz p4, :cond_8

    .line 2078
    iget-object p4, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {p4, p5, p6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p4

    invoke-virtual {p7, p4}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 2079
    const-string p4, "pushEvents"

    invoke-static {p4}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object p4

    .line 2080
    invoke-virtual {p7}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object p5

    invoke-virtual {p7}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object p6

    invoke-static {p5, p6}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object p5

    .line 2079
    invoke-static {p2, p4, p5}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    invoke-direct {p0, p1, v3, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2082
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "city operation="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " accepted="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " actions="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Project7Gateway"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    const/4 p1, 0x1

    return p1
.end method

.method private handleDailyRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    const/4 v0, 0x0

    if-eqz p5, :cond_4

    if-nez p6, :cond_0

    goto :goto_2

    .line 645
    :cond_0
    sget-object v1, Lcom/project7/localmanager/LocalDailyEngine;->METHODS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 646
    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {p3, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 647
    :cond_1
    iget-object p3, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {p3, p5, v2, p4, p6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    .line 648
    iget-object p3, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v0, 0x5

    iget-object v1, p6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 649
    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    iget-object p6, p6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, v1, p6}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p6

    .line 648
    invoke-direct {p0, p1, v0, p6}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_1

    .line 650
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "daily feature="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " account="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " params="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/project7/localmanager/BsonLite;->debugDocument([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Project7Gateway"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 p1, 0x1

    return p1

    .line 653
    :cond_3
    return v0

    .line 644
    :cond_4
    :goto_2
    return v0
.end method

.method private handleDayRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2090
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    const-string v8, "statusCheck"

    invoke-static {v8}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    const-string v9, "Project7Gateway"

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_6

    .line 2091
    const-string v3, "s"

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2092
    iget-object v7, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v7, v5, v6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v5

    .line 2093
    const-string v7, "nextday"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalEconomyEngine;->nextDayBlocker([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 2094
    :goto_0
    const-string v8, "statusCheckReply"

    invoke-static {v8}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "r"

    aput-object v15, v14, v11

    .line 2095
    const-string v15, "ok"

    if-nez v6, :cond_1

    move-object/from16 v16, v15

    goto :goto_1

    :cond_1
    const-string v16, "blocked"

    :goto_1
    aput-object v16, v14, v12

    const/4 v13, 0x2

    aput-object v3, v14, v13

    if-nez v4, :cond_2

    const-string v3, ""

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    const/16 v16, 0x3

    aput-object v3, v14, v16

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 2094
    invoke-static {v2, v8, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v3

    invoke-direct {v0, v1, v10, v3}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2096
    if-eqz v6, :cond_3

    .line 2097
    const-string v3, "showMessageStr"

    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    new-array v8, v13, [Ljava/lang/Object;

    const-string v14, "m"

    aput-object v14, v8, v11

    aput-object v6, v8, v12

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v8

    .line 2096
    invoke-static {v2, v3, v8}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v3

    invoke-direct {v0, v1, v10, v3}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2098
    :cond_3
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v5}, Lcom/project7/localmanager/LocalEconomyEngine;->hasDailySettlement([B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2099
    const-string v3, "weeknum"

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 2100
    nop

    .line 2101
    const-string v5, "showDailySettlement"

    invoke-static {v5}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "c"

    aput-object v8, v7, v11

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    aput-object v8, v7, v12

    const-string v8, "l"

    aput-object v8, v7, v13

    .line 2102
    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    aput-object v3, v7, v16

    .line 2101
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 2100
    invoke-static {v2, v5, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2104
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status check="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_5

    move-object v6, v15

    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    return v12

    .line 2107
    :cond_6
    const-string v8, "canteenRequest"

    invoke-static {v8}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v3, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_7

    return v11

    .line 2108
    :cond_7
    iget-object v3, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v3, v5, v8, v4, v6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateEconomy(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v3

    .line 2109
    iget-object v4, v0, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v4, v5, v6}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 2110
    iget-object v4, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v11, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 2111
    invoke-static {v11}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v11

    iget-object v8, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v2, v11, v8}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v8

    .line 2110
    invoke-direct {v0, v1, v10, v8}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_3

    .line 2112
    :cond_8
    if-eqz v7, :cond_9

    iget-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, v5, v6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 2113
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canteen accepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " replay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    return v12
.end method

.method private handleHomeRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    const/4 v0, 0x0

    if-eqz p5, :cond_3

    if-nez p6, :cond_0

    goto :goto_1

    .line 659
    :cond_0
    sget-object v1, Lcom/project7/localmanager/LocalHomeEngine;->METHODS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {p3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 660
    iget-object p3, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {p3, p5, v4, p4, p6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    .line 661
    const-string p5, "_cbid_"

    invoke-static {p4, p5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    .line 660
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/project7/localmanager/LocalGatewayServer;->emitHomeResult(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Integer;)[B

    .line 662
    const/4 p1, 0x1

    return p1

    .line 659
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 664
    :cond_2
    return v0

    .line 658
    :cond_3
    :goto_1
    return v0
.end method

.method private handleReliableRpc(Ljava/io/OutputStream;[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "[B[B",
            "Ljava/lang/String;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Lcom/project7/localmanager/LocalEventEngine;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalPatrolEngine$Result;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v7, p9

    move-object/from16 v6, p10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 1108
    const-string v1, "w"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 1109
    const-string v5, "Project7Gateway"

    if-nez v1, :cond_0

    .line 1110
    const-string v0, "reliableRpcCall missing wrapper"

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void

    .line 1113
    :cond_0
    const-string v2, "r"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1114
    const-string v3, "m"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    const-string v14, "p"

    invoke-static {v1, v14}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 1116
    move-object/from16 v18, v3

    const-string v3, "_cbid_"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1117
    if-nez v4, :cond_1

    .line 1118
    const-string v0, "reliableRpcCall missing sequence"

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return-void

    .line 1122
    :cond_1
    nop

    .line 1127
    const-string v0, "reliableRpcAck"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 1128
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v19, v14

    const-string v14, "s"

    invoke-static {v14, v6}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v6

    .line 1125
    invoke-static {v13, v0, v6}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    .line 1122
    const/4 v6, 0x5

    invoke-direct {v11, v12, v6, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reliable RPC acknowledged seq="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " method="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    const-string v14, " callback="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " parameters="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    const-string v14, "setHeadImage"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "<avatar metadata/image redacted>"

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->debugDocument([B)Ljava/lang/String;

    move-result-object v14

    :goto_0
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const-string v0, "enterPatrolRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "patrolReward"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1139
    :cond_3
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1140
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v11, v12, v13, v0, v2}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 1141
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate patrol RPC ignored seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return-void

    .line 1145
    :cond_5
    const-string v0, "combatOfflineRequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v14, " seq="

    if-eqz v0, :cond_8

    .line 1146
    nop

    .line 1147
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1146
    move-object v7, v1

    move-object/from16 v1, p0

    move-object v6, v2

    move-object/from16 v2, p1

    move-object v15, v3

    move-object/from16 v3, p2

    move-object/from16 v22, v14

    move-object v14, v4

    move-object/from16 v4, p4

    move-object v8, v5

    move-object/from16 v5, p5

    move-object/from16 v9, p10

    move-object/from16 v23, v14

    move-object v14, v6

    move-object/from16 v6, p6

    move-object v10, v7

    move-object/from16 v7, p7

    move-object/from16 v24, v8

    move-object/from16 v8, p10

    move v9, v0

    invoke-direct/range {v1 .. v10}, Lcom/project7/localmanager/LocalGatewayServer;->handleCombatAdmission(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;I[B)V

    .line 1148
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v11, v12, v13, v0, v14}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 1149
    :cond_6
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5904\u7406\u4e1a\u52a1 RPC\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u5e8f\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v23

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 1150
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v0, v16

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 1151
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slow reliable RPC method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " elapsedMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v24

    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_7
    return-void

    .line 1156
    :cond_8
    move-object/from16 v0, p10

    move-object v15, v3

    move-object v3, v5

    move-object v5, v4

    move-object v4, v14

    move-object v14, v2

    move-object v2, v1

    const-string v1, "setChooseHeroes"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "puzzleRoomGetClue"

    if-nez v1, :cond_b

    .line 1157
    invoke-static {v14}, Lcom/project7/localmanager/LocalCommerceEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v14}, Lcom/project7/localmanager/LocalMailEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v14}, Lcom/project7/localmanager/LocalDrawEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1158
    invoke-static {v14}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v14}, Lcom/project7/localmanager/LocalEquipmentEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1159
    invoke-static {v14}, Lcom/project7/localmanager/LocalTreasureUpgradeEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1160
    invoke-static {v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1161
    invoke-static {v14}, Lcom/project7/localmanager/LocalMemoryExchangeEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1162
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1163
    const-string v1, "setHeadImage"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "setImgState"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1164
    invoke-static {v14}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v14}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1165
    invoke-static {v14}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "set_hero_shoucang"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1166
    const-string v1, "getGiftCardReward"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "monthCardGetFudaiReward"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1167
    const-string v1, "requestGetCurMonHead"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "rewardAchievement"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1168
    const-string v1, "requestNewAchievementReward"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "requestNewAchievementAutoShow"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1169
    :cond_9
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1170
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v11, v12, v13, v0, v14}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 1171
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate commerce RPC ignored seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    return-void

    .line 1174
    :cond_b
    nop

    .line 1175
    const/16 v22, 0x0

    const/4 v1, 0x0

    if-eqz v14, :cond_12

    invoke-static {v14}, Lcom/project7/localmanager/LocalHomeEngine;->handles(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 1176
    iget-object v6, v11, Lcom/project7/localmanager/LocalGatewayServer;->homeCallbacks:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;

    .line 1177
    iget-object v7, v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->owner:Ljava/util/Set;

    if-ne v7, v0, :cond_c

    iget-object v7, v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->account:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 1178
    :cond_c
    iput-object v0, v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->owner:Ljava/util/Set;

    iput-object v8, v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->account:Ljava/lang/String;

    iget-object v7, v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->values:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1180
    :cond_d
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1181
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v0, v8, v14, v2, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    .line 1182
    invoke-direct {v11, v12, v13, v0, v15}, Lcom/project7/localmanager/LocalGatewayServer;->emitHomeResult(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 1183
    iget-object v1, v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->values:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    iget-object v0, v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_e

    iget-object v0, v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->values:Ljava/util/Map;

    iget-object v1, v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    :cond_e
    const/16 v21, 0x1

    goto :goto_1

    :cond_f
    if-eqz v15, :cond_11

    .line 1186
    iget-object v0, v6, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->values:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1187
    if-nez v0, :cond_10

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v0, "_result_"

    aput-object v0, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v2, v6

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 1188
    :cond_10
    const-string v2, "serverCallbackCarrier"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "_r_"

    aput-object v7, v6, v1

    const/16 v21, 0x1

    aput-object v0, v6, v21

    const-string v0, "_cbid_"

    const/16 v23, 0x2

    aput-object v0, v6, v23

    const/4 v0, 0x3

    aput-object v15, v6, v0

    .line 1189
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 1188
    invoke-static {v13, v2, v0}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {v11, v12, v1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_1

    .line 1185
    :cond_11
    const/16 v21, 0x1

    .line 1191
    :goto_1
    nop

    .line 1192
    move-object v8, v4

    move-object v10, v5

    move-object v15, v14

    move/from16 v5, v21

    move-object v14, v3

    move-object/from16 v3, v22

    goto/16 :goto_3a

    .line 1175
    :cond_12
    const/16 v21, 0x1

    const/16 v23, 0x2

    const/16 v24, 0x5

    .line 1192
    if-eqz v14, :cond_14

    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v25

    move-object/from16 v1, p0

    move-object/from16 p3, v2

    move-object/from16 v2, p1

    move-object/from16 v28, v3

    move-object/from16 v27, v18

    move-object/from16 v3, p2

    move-object/from16 v29, v4

    move-object/from16 v4, v25

    move-object v11, v5

    move-object/from16 v5, p3

    move-object/from16 v30, v6

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->handleCombatCancelRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1194
    const-string v0, "battleStageGiveup"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->finishAbandonedStory(Ljava/io/OutputStream;[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    :cond_13
    move-object v10, v11

    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object/from16 v11, p0

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1192
    :cond_14
    move-object/from16 p3, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object v11, v5

    move-object/from16 v30, v6

    move-object/from16 v27, v18

    .line 1195
    :cond_15
    const-string v1, "battleYazhiAsk"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1196
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/project7/localmanager/LocalGatewayServer;->handleSuppressionRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;)Z

    :cond_16
    move-object v10, v11

    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object/from16 v11, p0

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1198
    :cond_17
    const-string v1, "battleRealFailWithEventMode"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1199
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->finishAbandonedStory(Ljava/io/OutputStream;[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    move-object v10, v11

    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object/from16 v11, p0

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1200
    :cond_18
    if-eqz v14, :cond_1c

    sget-object v1, Lcom/project7/localmanager/LocalDailyEngine;->METHODS:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1201
    if-eqz v15, :cond_19

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v10, v11

    move-object/from16 v11, p0

    invoke-direct {v11, v12, v13, v1, v14}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    goto :goto_2

    :cond_19
    move-object v10, v11

    move-object/from16 v11, p0

    move-object/from16 v22, v15

    .line 1202
    :goto_2
    invoke-static {v14}, Lcom/project7/localmanager/LocalDailyEngine;->repeatableReply(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1203
    :cond_1a
    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->handleDailyRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    .line 1688
    :cond_1b
    move-object v15, v14

    move/from16 v5, v21

    move-object/from16 v3, v22

    move-object/from16 v14, v28

    move-object/from16 v8, v29

    goto/16 :goto_3a

    .line 1200
    :cond_1c
    move-object v7, v11

    move-object/from16 v11, p0

    .line 1204
    if-eqz v14, :cond_1d

    move-object/from16 v6, p3

    invoke-static {v14, v6}, Lcom/project7/localmanager/LocalSpecialItemEngine;->handles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1205
    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v6

    move-object/from16 v6, p4

    move-object v10, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/project7/localmanager/LocalGatewayServer;->handleSpecialItemRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z

    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1204
    :cond_1d
    move-object/from16 v6, p3

    .line 1206
    :cond_1e
    if-eqz v14, :cond_21

    invoke-static {v14}, Lcom/project7/localmanager/LocalWeekEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "updateClientAvatarAsk"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1207
    :cond_1f
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1208
    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v6

    move-object/from16 v6, p4

    move-object v10, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/project7/localmanager/LocalGatewayServer;->handleWeekRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z

    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1207
    :cond_20
    move-object v10, v7

    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1209
    :cond_21
    invoke-static {v14}, Lcom/project7/localmanager/LocalConstructionEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1210
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1211
    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v6

    move-object/from16 v6, p4

    move-object v10, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, v15

    invoke-direct/range {v1 .. v9}, Lcom/project7/localmanager/LocalGatewayServer;->handleConstructionRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/lang/Integer;)Z

    .line 1213
    move-object v15, v14

    move/from16 v5, v21

    move-object/from16 v3, v22

    move-object/from16 v14, v28

    move-object/from16 v8, v29

    goto/16 :goto_3a

    .line 1210
    :cond_22
    move-object v10, v7

    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1215
    :cond_23
    if-eqz v14, :cond_28

    invoke-static {v14}, Lcom/project7/localmanager/LocalStoryEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1216
    const-string v1, "q7StoryList"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "findStoryData"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1217
    const-string v1, "requestStoryHttpInfo"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "requestSelfStoryHttpInfo"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_3

    :cond_24
    const/4 v2, 0x0

    goto :goto_4

    :cond_25
    :goto_3
    move/from16 v2, v21

    .line 1218
    :goto_4
    if-nez v2, :cond_27

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_5

    :cond_26
    move-object v10, v7

    goto :goto_6

    .line 1219
    :cond_27
    :goto_5
    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v6

    move-object/from16 v6, p4

    move-object v10, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/project7/localmanager/LocalGatewayServer;->handleServiceRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z

    .line 1220
    :goto_6
    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    :cond_28
    if-eqz v14, :cond_2d

    invoke-static {v14}, Lcom/project7/localmanager/LocalServiceEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {v14}, Lcom/project7/localmanager/LocalIntelligenceEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1221
    invoke-static {v14}, Lcom/project7/localmanager/LocalCommunityEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {v14}, Lcom/project7/localmanager/LocalHeroGiftEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {v14}, Lcom/project7/localmanager/LocalWingDrugEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1222
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1223
    const-string v1, "actionRewardRequest"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "updateSouvenirLevel"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_7

    :cond_29
    move-object v10, v7

    goto :goto_9

    .line 1224
    :cond_2a
    :goto_7
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_8

    :cond_2b
    move-object v10, v7

    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1225
    :cond_2c
    :goto_8
    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v6

    move-object/from16 v6, p4

    move-object v10, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/project7/localmanager/LocalGatewayServer;->handleServiceRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z

    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1220
    :cond_2d
    move-object v10, v7

    .line 1226
    :goto_9
    if-eqz v14, :cond_32

    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v6

    move-object v7, v6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->handleResourceRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1227
    move-object/from16 v6, p6

    if-eqz v6, :cond_30

    .line 1228
    if-eqz v15, :cond_2e

    .line 1229
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v11, v12, v13, v0, v14}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 1230
    move-object/from16 v3, v22

    goto :goto_a

    .line 1228
    :cond_2e
    move-object v3, v15

    .line 1232
    :goto_a
    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v11, v0, v8, v9, v6}, Lcom/project7/localmanager/LocalGatewayServer;->refreshResourceProfile([BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1233
    const-string v0, "requestLuckyDrawFile"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x5d

    const-string v1, "card_box"

    invoke-virtual {v6, v0, v1}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbeeForPanel(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1234
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v8, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1235
    :cond_2f
    move-object/from16 v4, p8

    move/from16 v5, v21

    invoke-direct {v11, v12, v13, v6, v4}, Lcom/project7/localmanager/LocalGatewayServer;->triggerPendingNewbees(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;)V

    move-object v15, v14

    move-object/from16 v14, v28

    move-object/from16 v8, v29

    goto/16 :goto_3a

    .line 1227
    :cond_30
    move/from16 v5, v21

    move-object/from16 p3, v15

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1226
    :cond_31
    move-object/from16 v6, p6

    move-object/from16 v4, p8

    move/from16 v5, v21

    goto :goto_b

    :cond_32
    move-object/from16 v4, p8

    move-object v7, v6

    move/from16 v5, v21

    move-object/from16 v6, p6

    .line 1237
    :goto_b
    if-eqz v14, :cond_33

    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v0, v4

    move-object/from16 v4, v18

    move-object/from16 v23, v10

    move v10, v5

    move-object v5, v7

    move-object v10, v6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->handleBasicRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    move-object/from16 p3, v15

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    :cond_33
    move-object v0, v4

    move-object/from16 v23, v10

    move-object v10, v6

    .line 1240
    :cond_34
    const-string v1, "incDayWhenNoActionVal"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    const-string v1, "clearCurDailySettlement"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move-object v7, v8

    move-object/from16 p3, v15

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_38

    .line 1243
    :cond_35
    const-string v1, "canteenRequest"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string v1, "statusCheck"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    move-object/from16 p3, v15

    move-object/from16 v10, v23

    move-object/from16 v6, v29

    move-object v15, v14

    move-object/from16 v14, v28

    move-object/from16 v34, v8

    move-object v8, v7

    move-object/from16 v7, v34

    goto/16 :goto_37

    .line 1245
    :cond_36
    const-string v1, "zhaiRequest"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1246
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->handleRest(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    move-object/from16 p3, v15

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    goto/16 :goto_39

    .line 1247
    :cond_37
    const-string v1, "statusSwitch"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1248
    move-object/from16 v6, v20

    invoke-static {v7, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1249
    if-nez v0, :cond_38

    .line 1250
    const-string v0, "statusSwitch missing requested status"

    move-object/from16 v5, v28

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1252
    :cond_38
    move-object/from16 v5, v28

    const-string v1, "summon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-direct/range {p0 .. p2}, Lcom/project7/localmanager/LocalGatewayServer;->syncDrawCalendar(Ljava/io/OutputStream;[B)V

    .line 1253
    :cond_39
    if-eqz v10, :cond_3a

    .line 1254
    invoke-virtual {v10, v0}, Lcom/project7/localmanager/LocalEventEngine;->updateStatus(Ljava/lang/String;)V

    .line 1255
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, v8, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1257
    :cond_3a
    nop

    .line 1262
    const-string v1, "statusSwitchReply"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    .line 1263
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->statusSwitchReplyDocument(Ljava/lang/String;)[B

    move-result-object v2

    .line 1260
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    .line 1257
    const/4 v4, 0x5

    invoke-direct {v11, v12, v4, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statusSwitch completed status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :goto_c
    move-object/from16 p3, v15

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v15, v14

    move-object v14, v5

    goto/16 :goto_39

    :cond_3b
    move-object/from16 v6, v20

    move-object/from16 v5, v28

    const/4 v4, 0x5

    const-string v1, "requestLuckyDrawFile"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1269
    const-string v1, "t"

    invoke-static {v7, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1270
    if-nez v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_d

    :cond_3c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1271
    :goto_d
    nop

    .line 1276
    const-string v2, "replyLuckyDrawFile"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    .line 1277
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/project7/localmanager/BsonLite;->luckyDrawFileReplyDocument(ZI)[B

    move-result-object v6

    .line 1274
    invoke-static {v13, v2, v6}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 1271
    invoke-direct {v11, v12, v4, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1280
    if-eqz v10, :cond_3d

    const/16 v2, 0x5d

    const-string v3, "card_box"

    invoke-virtual {v10, v2, v3}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbeeForPanel(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1281
    iget-object v2, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v2, v8, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1282
    const-string v2, "card-box tutorial activated by lucky draw request event=93"

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_3d
    invoke-direct {v11, v12, v13, v10, v0}, Lcom/project7/localmanager/LocalGatewayServer;->triggerPendingNewbees(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;)V

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lucky draw file opened type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    move-object/from16 p3, v15

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v15, v14

    move-object v14, v5

    goto/16 :goto_39

    :cond_3e
    const-string v1, "pullEvents"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " processing="

    if-eqz v1, :cond_42

    .line 1288
    if-eqz v10, :cond_3f

    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, v8, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 1289
    :cond_3f
    if-nez v10, :cond_40

    .line 1290
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_e

    :cond_40
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v1

    .line 1291
    :goto_e
    if-nez v10, :cond_41

    .line 1292
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_f

    :cond_41
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v3

    .line 1293
    :goto_f
    nop

    .line 1298
    const-string v6, "pullEventsReply"

    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v6

    .line 1299
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object v7

    .line 1296
    invoke-static {v13, v6, v7}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v6

    .line 1293
    invoke-direct {v11, v12, v4, v6}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pullEvents completed available="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-direct {v11, v12, v13, v10, v0}, Lcom/project7/localmanager/LocalGatewayServer;->triggerPendingNewbees(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;)V

    .line 1309
    move-object/from16 p3, v15

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v15, v14

    move-object v14, v5

    goto/16 :goto_39

    :cond_42
    const-string v1, "triggerExternalEvent"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v18, "pushEvents"

    const-string v3, "e"

    if-eqz v1, :cond_46

    .line 1310
    invoke-static {v7, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1311
    if-eqz v10, :cond_43

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/project7/localmanager/LocalEventEngine;->triggerExternalEvent(I)Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v1, 0x1

    goto :goto_10

    :cond_43
    const/4 v1, 0x0

    .line 1312
    :goto_10
    if-eqz v1, :cond_44

    iget-object v2, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v2, v8, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1314
    :cond_44
    nop

    .line 1315
    const-string v2, "triggerExternalEventReply"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 1314
    invoke-static {v13, v2, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    invoke-direct {v11, v12, v4, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1316
    if-eqz v1, :cond_45

    .line 1317
    invoke-static/range {v18 .. v18}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    .line 1318
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v6

    .line 1317
    invoke-static {v3, v6}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object v3

    .line 1316
    invoke-static {v13, v2, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    invoke-direct {v11, v12, v4, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1319
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "external UI event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " accepted="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    move-object/from16 p3, v15

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v15, v14

    move-object v14, v5

    goto/16 :goto_39

    :cond_46
    const-string v1, "startEvent"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v20, "startEventReply"

    if-eqz v1, :cond_4c

    if-eqz v10, :cond_4c

    .line 1321
    invoke-static {v7, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1322
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/project7/localmanager/LocalEventEngine;->startEvent(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1323
    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 1324
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, v8, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1325
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 p3, v15

    move v15, v4

    move-object/from16 v4, p4

    move-object/from16 v31, v5

    move-object/from16 v5, p5

    move-object v15, v6

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->syncPuzzleStart(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;I)V

    .line 1326
    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1327
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v1

    .line 1328
    if-eqz v18, :cond_47

    if-eqz v1, :cond_47

    iget-boolean v2, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->autoStart:Z

    if-eqz v2, :cond_47

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1331
    const-string v1, "evalCode"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v15, v2, v5

    .line 1332
    const-string v3, "if \'_q7_install_ui_event_bridge\' in globals():\n    _q7_install_ui_event_bridge(type(gg.avatar))\n"

    invoke-static {v3}, Lcom/project7/localmanager/LocalClientCompatibility;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 1331
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1337
    :cond_47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x413

    if-ne v1, v2, :cond_48

    if-eqz v18, :cond_48

    .line 1338
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncTutorialCityState(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V

    .line 1339
    :cond_48
    nop

    .line 1344
    invoke-static/range {v20 .. v20}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    .line 1345
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->eventReplyDocument(II)[B

    move-result-object v2

    .line 1342
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    .line 1339
    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v18, :cond_49

    const-string v2, "tutorial event started event="

    goto :goto_11

    .line 1349
    :cond_49
    const-string v2, "tutorial event start replayed event="

    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1348
    move-object/from16 v4, v31

    invoke-static {v4, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1322
    :cond_4a
    move-object v4, v5

    move-object/from16 p3, v15

    const/4 v5, 0x0

    .line 1350
    if-eqz v0, :cond_4b

    .line 1351
    nop

    .line 1352
    invoke-static/range {v20 .. v20}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->eventReplyDocument(II)[B

    move-result-object v2

    .line 1351
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1353
    nop

    .line 1354
    invoke-static/range {v18 .. v18}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object v3

    .line 1353
    invoke-static {v13, v1, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "story event rejected event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " blockers="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->blockedStoryEvents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1350
    :cond_4b
    :goto_12
    nop

    .line 1357
    :goto_13
    move-object v15, v14

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v14, v4

    goto/16 :goto_39

    .line 1320
    :cond_4c
    move-object/from16 v1, p7

    move-object v4, v5

    move-object/from16 p3, v15

    const/4 v5, 0x0

    move-object v15, v6

    move-object/from16 v6, v19

    .line 1357
    const-string v5, "reliableEcho"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1359
    const-string v0, "native reliable echo barrier"

    invoke-static {v4, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v14, v4

    goto/16 :goto_39

    .line 1360
    :cond_4d
    const-string v5, "q7CompleteUiEvent"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v19, "completeEventReplyEnd"

    const-string v24, "completeEventReplyStart"

    if-eqz v5, :cond_4f

    if-eqz v10, :cond_4f

    .line 1361
    invoke-static {v7, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1362
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v10, v3}, Lcom/project7/localmanager/LocalEventEngine;->completeImmediateEvent(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1363
    iget-object v2, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v2, v8, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1364
    nop

    .line 1365
    invoke-static/range {v24 .. v24}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->eventRewardDocument(I)[B

    move-result-object v3

    .line 1364
    invoke-static {v13, v2, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v11, v12, v3, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1366
    nop

    .line 1367
    invoke-static/range {v19 .. v19}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->eventDocument(I)[B

    move-result-object v5

    .line 1366
    invoke-static {v13, v2, v5}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    invoke-direct {v11, v12, v3, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1368
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1369
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v7, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1370
    invoke-static/range {v18 .. v18}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    .line 1371
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object v2

    .line 1370
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UI-only event completed after native UI event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1362
    :cond_4e
    move-object v7, v4

    .line 1374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI-only event acknowledgement ignored event="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1374
    invoke-static {v7, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :goto_14
    move-object v15, v14

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v14, v7

    goto/16 :goto_39

    .line 1360
    :cond_4f
    move-object v5, v4

    .line 1377
    const-string v4, "startEventOption"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    if-eqz v10, :cond_55

    .line 1378
    invoke-static {v7, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1379
    const-string v3, "se"

    invoke-static {v7, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 1380
    const-string v3, "op"

    invoke-static {v7, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1381
    const-string v6, " selectedEvent="

    if-eqz v0, :cond_53

    if-eqz v15, :cond_53

    .line 1382
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10, v3, v4}, Lcom/project7/localmanager/LocalEventEngine;->selectEventOption(II)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1383
    move-object v4, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 p8, v7

    move-object v7, v4

    move-object/from16 v4, p4

    move-object/from16 v32, v5

    move-object/from16 v5, p5

    move-object/from16 v33, v6

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1384
    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1385
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, v8, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1386
    nop

    .line 1391
    invoke-static/range {v24 .. v24}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    .line 1392
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->eventRewardDocument(I)[B

    move-result-object v2

    .line 1389
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    .line 1386
    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1395
    nop

    .line 1400
    invoke-static/range {v19 .. v19}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    .line 1401
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->eventDocument(I)[B

    move-result-object v3

    .line 1398
    invoke-static {v13, v1, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    .line 1395
    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1405
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncTutorialCityCompletion(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V

    .line 1406
    if-eqz p3, :cond_50

    .line 1407
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v11, v12, v13, v1, v14}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 1408
    goto :goto_15

    .line 1406
    :cond_50
    move-object/from16 v22, p3

    .line 1412
    :goto_15
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/project7/localmanager/LocalEventEngine;->startEvent(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1413
    invoke-interface {v7, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1414
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, v8, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1415
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->syncPuzzleStart(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;I)V

    .line 1416
    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1417
    nop

    .line 1418
    invoke-static/range {v20 .. v20}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    .line 1419
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->eventReplyDocument(II)[B

    move-result-object v2

    .line 1417
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_16

    .line 1412
    :cond_51
    move-object/from16 v8, p8

    .line 1421
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tutorial event option selected event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v33

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " option="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v32

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v22

    goto :goto_19

    .line 1382
    :cond_52
    move-object v3, v6

    move-object v8, v7

    goto :goto_17

    .line 1381
    :cond_53
    move-object v3, v6

    move-object v8, v7

    .line 1427
    :goto_17
    if-eqz v0, :cond_54

    if-eqz v15, :cond_54

    .line 1428
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate tutorial event option ignored event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " option="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1436
    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tutorial event option rejected event="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1436
    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :goto_18
    move-object/from16 v3, p3

    :goto_19
    move-object v15, v14

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v14, v5

    const/4 v5, 0x1

    goto/16 :goto_3a

    .line 1377
    :cond_55
    move-object v8, v7

    move-object v7, v1

    .line 1443
    const-string v1, "clientTraceProcessingEvent"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "c"

    if-eqz v1, :cond_5d

    if-eqz v10, :cond_5d

    .line 1444
    const-string v1, "k"

    invoke-static {v8, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1445
    const-string v1, "d"

    invoke-static {v8, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 1446
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    if-nez v1, :cond_56

    move-object/from16 v3, v22

    goto :goto_1a

    :cond_56
    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1448
    :goto_1a
    if-eqz v3, :cond_57

    .line 1449
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1450
    :cond_57
    if-eqz v1, :cond_58

    .line 1451
    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1453
    :cond_58
    :goto_1b
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v8

    move-object/from16 v4, p4

    move-object v6, v5

    move-object/from16 v5, p5

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->closePuzzleBeforeTrace(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1454
    invoke-virtual {v10, v15, v8}, Lcom/project7/localmanager/LocalEventEngine;->trace(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v18

    .line 1456
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    move-object/from16 v6, p4

    invoke-virtual {v1, v6, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1457
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1458
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_1c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1459
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v11, v12, v13, v6, v2}, Lcom/project7/localmanager/LocalGatewayServer;->sendTutorialHeroReward(Ljava/io/OutputStream;[BLjava/lang/String;I)V

    .line 1460
    nop

    .line 1465
    invoke-static/range {v24 .. v24}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    .line 1466
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->eventRewardDocument(I)[B

    move-result-object v3

    .line 1463
    invoke-static {v13, v2, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 1460
    const/4 v3, 0x5

    invoke-direct {v11, v12, v3, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1469
    nop

    .line 1474
    invoke-static/range {v19 .. v19}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    .line 1475
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->eventDocument(I)[B

    move-result-object v4

    .line 1472
    invoke-static {v13, v2, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 1469
    invoke-direct {v11, v12, v3, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1478
    invoke-interface {v7, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event completed event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " condition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v6

    move/from16 v6, v26

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncTutorialCityCompletion(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V

    .line 1481
    move-object v6, v7

    move-object/from16 v7, p7

    goto :goto_1c

    .line 1482
    :cond_59
    move-object v7, v6

    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    goto :goto_1d

    .line 1457
    :cond_5a
    move-object v7, v6

    .line 1485
    :goto_1d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1488
    if-eqz p3, :cond_5b

    .line 1489
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v5, v20

    invoke-direct {v11, v12, v13, v1, v5}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 1490
    move-object/from16 v3, v22

    goto :goto_1e

    .line 1488
    :cond_5b
    move-object/from16 v5, v20

    move-object/from16 v3, p3

    .line 1492
    :goto_1e
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-direct {v11, v12, v13, v10, v0}, Lcom/project7/localmanager/LocalGatewayServer;->triggerPendingNewbees(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;)V

    .line 1494
    :cond_5c
    move-object v15, v5

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    const/4 v5, 0x1

    goto/16 :goto_3a

    .line 1443
    :cond_5d
    move-object/from16 v7, p4

    move-object/from16 v34, v14

    move-object v14, v5

    move-object/from16 v5, v34

    .line 1494
    const-string v1, "clientAskTriggerNewbee"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    if-eqz v9, :cond_61

    .line 1495
    invoke-static {v8, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1496
    if-eqz v1, :cond_5e

    if-eqz v10, :cond_5e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/project7/localmanager/LocalEventEngine;->requestNewbee(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    const/4 v15, 0x1

    goto :goto_1f

    :cond_5e
    const/4 v15, 0x0

    .line 1497
    :goto_1f
    if-eqz v15, :cond_60

    .line 1498
    iget-object v2, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v2, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1499
    if-eqz p3, :cond_5f

    .line 1500
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v11, v12, v13, v2, v5}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 1501
    move-object/from16 v3, v22

    goto :goto_20

    .line 1499
    :cond_5f
    move-object/from16 v3, p3

    .line 1503
    :goto_20
    nop

    .line 1508
    const-string v2, "triggerClientNewbee"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    .line 1509
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->eventDocument(I)[B

    move-result-object v4

    .line 1506
    invoke-static {v13, v2, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 1503
    const/4 v4, 0x5

    invoke-direct {v11, v12, v4, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1512
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tutorial guidance requested/replayed event="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1497
    :cond_60
    move-object/from16 v3, p3

    .line 1515
    :goto_21
    move-object v15, v5

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    const/4 v5, 0x1

    goto/16 :goto_3a

    :cond_61
    const-string v1, "clientFinishNewbee"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    if-eqz v9, :cond_66

    .line 1516
    invoke-static {v8, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1517
    if-nez v10, :cond_62

    .line 1518
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_22

    :cond_62
    invoke-virtual {v10, v8}, Lcom/project7/localmanager/LocalEventEngine;->finishNewbees(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    :goto_22
    move-object v15, v1

    .line 1519
    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1520
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, v7, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalSouvenirEngine;->recoverShopUnlock([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1522
    :cond_63
    invoke-interface {v0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1523
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1524
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_23

    :cond_64
    move-object v7, v5

    goto :goto_24

    .line 1525
    :cond_65
    :goto_23
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object v7, v5

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1526
    :goto_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tutorial guidance completed events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " released="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    move-object v15, v7

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    goto/16 :goto_39

    :cond_66
    const-string v0, "checkProcessingEvent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-eqz v9, :cond_67

    .line 1529
    nop

    .line 1534
    const-string v0, "triggerProcessingEvent"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    .line 1535
    const-string v2, "pe"

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->intListDocument(Ljava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    .line 1532
    invoke-static {v13, v0, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    .line 1529
    const/4 v1, 0x5

    invoke-direct {v11, v12, v1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    move-object v15, v5

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    goto/16 :goto_39

    .line 1538
    :cond_67
    const-string v0, "passInitPrologue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    if-eqz v9, :cond_68

    .line 1539
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    .line 1540
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    move-object v15, v5

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    goto/16 :goto_39

    .line 1541
    :cond_68
    const-string v0, "updateEventCondClient"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "v"

    if-eqz v0, :cond_71

    if-eqz v9, :cond_71

    .line 1542
    invoke-static {v8, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1543
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_6c

    if-eqz v10, :cond_6c

    .line 1544
    invoke-static {v8, v4}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1545
    nop

    .line 1547
    if-nez v0, :cond_69

    goto :goto_25

    :cond_69
    :try_start_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v22, v0

    .line 1550
    :goto_25
    move-object/from16 v0, v22

    goto :goto_26

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    const-string v1, "invalid area entrance JSON"

    invoke-static {v14, v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v22

    .line 1551
    :goto_26
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6a

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1552
    invoke-virtual {v10, v1}, Lcom/project7/localmanager/LocalEventEngine;->updateAreaClick(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v15, 0x1

    goto :goto_27

    :cond_6a
    const/4 v15, 0x0

    .line 1553
    :goto_27
    if-eqz v15, :cond_6b

    .line 1554
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1556
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "area entrance condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " accepted="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " available="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " blockers="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->blockedStoryEvents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1556
    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    goto :goto_2b

    :cond_6c
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_6f

    if-eqz v10, :cond_6f

    .line 1560
    invoke-static {v8, v4}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1562
    if-nez v0, :cond_6d

    :goto_28
    move-object/from16 v0, v22

    goto :goto_29

    :cond_6d
    :try_start_1
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v22

    goto :goto_28

    .line 1563
    :goto_29
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_6e

    .line 1564
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/project7/localmanager/LocalEventEngine;->updateClientOperation(I)V

    .line 1565
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1569
    :cond_6e
    goto :goto_2a

    .line 1567
    :catch_1
    move-exception v0

    .line 1568
    const-string v1, "invalid client operation JSON"

    invoke-static {v14, v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 1570
    :cond_6f
    if-eqz v0, :cond_70

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1572
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    goto :goto_2b

    .line 1570
    :cond_70
    :goto_2a
    nop

    .line 1574
    :goto_2b
    move-object v15, v5

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    goto/16 :goto_39

    :cond_71
    const-string v0, "enterPlace"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    if-eqz v10, :cond_73

    .line 1575
    invoke-static {v8, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1576
    if-nez v0, :cond_72

    .line 1577
    invoke-static {v8, v15}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    :cond_72
    invoke-virtual {v10, v0}, Lcom/project7/localmanager/LocalEventEngine;->enterPlace(Ljava/lang/String;)V

    .line 1580
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1581
    move-object v15, v5

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    goto/16 :goto_39

    :cond_73
    const-string v0, "enterPatrolRequest"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "aid"

    if-eqz v0, :cond_81

    if-eqz v10, :cond_81

    .line 1582
    invoke-static {v8, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1583
    if-nez v0, :cond_74

    const/4 v15, 0x0

    goto :goto_2c

    :cond_74
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v15, v1

    .line 1584
    :goto_2c
    const-string v0, "hs"

    invoke-static {v8, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1585
    move-object/from16 v3, p9

    move-object/from16 v2, v23

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    .line 1586
    if-nez v0, :cond_79

    .line 1587
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v0, v7, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    .line 1588
    invoke-static {v9, v0, v15, v8}, Lcom/project7/localmanager/LocalPatrolEngine;->canResume(Lcom/project7/localmanager/LocalTutorialStore$Progress;[BILjava/util/List;)Z

    move-result v1

    .line 1590
    move-object/from16 v23, v2

    iget v2, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    if-nez v2, :cond_75

    iget-object v2, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    iget-object v3, v11, Lcom/project7/localmanager/LocalGatewayServer;->patrolCatalog:Lcom/project7/localmanager/LocalPatrolCatalog;

    invoke-virtual {v10, v15, v2, v3}, Lcom/project7/localmanager/LocalEventEngine;->patrolEvents(ILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)Ljava/util/List;

    move-result-object v2

    goto :goto_2d

    :cond_75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1591
    :goto_2d
    iget v3, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    if-nez v3, :cond_76

    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_76

    iget-boolean v3, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-eqz v3, :cond_76

    .line 1592
    invoke-static {v0}, Lcom/project7/localmanager/LocalPatrolEngine;->dayKey([B)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    .line 1593
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1594
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1595
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1596
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v0, v2, :cond_76

    const/4 v0, 0x1

    goto :goto_2e

    :cond_76
    const/4 v0, 0x0

    :goto_2e
    or-int/2addr v0, v1

    .line 1597
    if-eqz v0, :cond_77

    new-instance v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "resume paid patrol"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/project7/localmanager/LocalPatrolEngine$Result;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    move-object/from16 v19, v4

    move-object/from16 v24, v14

    move-object/from16 v10, v23

    const/16 v20, 0x0

    move-object/from16 v14, p9

    move/from16 v23, v15

    move-object v15, v5

    goto :goto_2f

    .line 1599
    :cond_77
    iget-boolean v0, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-eqz v0, :cond_78

    new-instance v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    .line 1600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u5de1\u67e5"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/project7/localmanager/LocalPatrolEngine$Result;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    move/from16 v20, v3

    move-object/from16 v19, v4

    move-object/from16 v24, v14

    move-object/from16 v10, v23

    move-object/from16 v14, p9

    move/from16 v23, v15

    move-object v15, v5

    goto :goto_2f

    :cond_78
    const/4 v3, 0x0

    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->patrolCatalog:Lcom/project7/localmanager/LocalPatrolCatalog;

    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    .line 1601
    invoke-interface {v1, v7, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v19

    .line 1600
    move-object/from16 v1, p5

    move-object/from16 v10, v23

    move-object/from16 v2, p6

    move/from16 v20, v3

    move-object/from16 v24, v14

    move-object/from16 v14, p9

    move-object/from16 v3, v19

    move-object/from16 v19, v4

    move v4, v15

    move/from16 v23, v15

    move-object v15, v5

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalPatrolEngine;->begin(Lcom/project7/localmanager/LocalPatrolCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;[BILjava/util/List;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object v0

    .line 1602
    :goto_2f
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1603
    invoke-interface {v14, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 1586
    :cond_79
    move-object v10, v2

    move-object/from16 v19, v4

    move-object/from16 v24, v14

    move/from16 v23, v15

    const/16 v20, 0x0

    move-object v15, v5

    .line 1606
    :goto_30
    if-eqz p3, :cond_7a

    .line 1607
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v11, v12, v13, v1, v15}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 1608
    move-object/from16 v3, v22

    goto :goto_31

    .line 1606
    :cond_7a
    move-object/from16 v3, p3

    .line 1610
    :goto_31
    iget-boolean v1, v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;->success:Z

    if-eqz v1, :cond_7e

    .line 1611
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v6, v4, v20

    .line 1612
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 1611
    const-string v4, "q7RecordPatrolAchievement"

    invoke-interface {v1, v7, v4, v2, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v1

    .line 1613
    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v5, v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 1614
    invoke-static {v5}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v4, v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v13, v5, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v4

    .line 1613
    const/4 v5, 0x5

    invoke-direct {v11, v12, v5, v4}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_32

    .line 1615
    :cond_7b
    invoke-static {v1}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->sent(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B

    move-result-object v1

    .line 1616
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7c

    iget-object v2, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const-string v4, "q7AckStoryProgress"

    invoke-interface {v2, v7, v4, v1, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    .line 1617
    :cond_7c
    const-string v1, "syncSandglass"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v19, v2, v20

    iget-object v4, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    .line 1618
    invoke-interface {v4, v7, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v4

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->sandglass([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 1617
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1619
    nop

    .line 1620
    const-string v1, "get_city_data_reply"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v4, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v4, v7, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v4

    invoke-static {v9, v4}, Lcom/project7/localmanager/BsonLite;->cityDataReplyDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v4

    .line 1619
    invoke-static {v13, v1, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1621
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1622
    iget-object v4, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1623
    if-eqz v4, :cond_7d

    .line 1624
    const-string v5, "updateCurFatigueValue"

    invoke-static {v5}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v2

    .line 1623
    invoke-static {v13, v5, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    const/4 v4, 0x5

    invoke-direct {v11, v12, v4, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1625
    :cond_7d
    goto :goto_33

    .line 1627
    :cond_7e
    nop

    .line 1628
    const-string v1, "enter_patrol_reply"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    iget-boolean v2, v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;->success:Z

    iget-object v4, v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;->events:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->patrolReplyDocument(ZLjava/lang/Iterable;)[B

    move-result-object v2

    .line 1627
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1629
    iget-boolean v1, v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;->success:Z

    if-eqz v1, :cond_7f

    .line 1632
    nop

    .line 1633
    invoke-static/range {v18 .. v18}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    .line 1634
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v4

    .line 1633
    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object v2

    .line 1632
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1636
    :cond_7f
    iget-boolean v1, v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;->success:Z

    if-nez v1, :cond_80

    .line 1637
    nop

    .line 1638
    const-string v1, "showMessageStr"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "\u5de1\u67e5\u6761\u4ef6\u4e0d\u6ee1\u8db3\uff0c\u8bf7\u68c0\u67e5\u5730\u533a\u72b6\u6001\u3001\u884c\u52a8\u529b\u548c\u6240\u9009\u89d2\u8272\u3002"

    move-object/from16 v4, v27

    invoke-static {v4, v2}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 1637
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1641
    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "patrol completed area="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " heroes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;->success:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;->events:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " actions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v24

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    move-object v14, v5

    move-object/from16 v8, v29

    const/4 v5, 0x1

    goto/16 :goto_3a

    .line 1581
    :cond_81
    move-object v15, v5

    move-object v5, v14

    move-object/from16 v10, v23

    const/16 v20, 0x0

    move-object/from16 v14, p9

    .line 1644
    const-string v0, "patrolReward"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    if-eqz v9, :cond_87

    .line 1645
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    .line 1646
    invoke-interface {v0, v7, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    .line 1645
    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalPatrolEngine;->claim(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Ljava/util/Map;

    move-result-object v0

    .line 1647
    iget-object v1, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1648
    new-instance v1, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    .line 1649
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "friendship claimed"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lcom/project7/localmanager/LocalPatrolEngine$Result;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    .line 1648
    invoke-interface {v14, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    if-eqz p3, :cond_82

    .line 1651
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v11, v12, v13, v1, v15}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 1652
    goto :goto_34

    .line 1650
    :cond_82
    move-object/from16 v22, p3

    .line 1654
    :goto_34
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1655
    nop

    .line 1656
    const-string v3, "updateFriendlyValue"

    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    .line 1657
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v4, v2}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v2

    .line 1655
    invoke-static {v13, v3, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v11, v12, v3, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1658
    goto :goto_35

    .line 1659
    :cond_83
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_84

    .line 1660
    const-string v1, "notify_add_friendly"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->friendlyRewardDocument(Ljava/util/Map;)[B

    move-result-object v2

    .line 1659
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1661
    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "patrol friendship claimed gains="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    .line 1663
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object v14, v5

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 1664
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v7, v9}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 1665
    if-eqz p6, :cond_86

    .line 1666
    invoke-static/range {v18 .. v18}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 1667
    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v2

    .line 1666
    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object v1

    .line 1665
    invoke-static {v13, v0, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {v11, v12, v1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_36

    .line 1662
    :cond_85
    move-object v14, v5

    .line 1669
    :cond_86
    :goto_36
    move-object/from16 v3, v22

    move-object/from16 v8, v29

    const/4 v5, 0x1

    goto/16 :goto_3a

    .line 1644
    :cond_87
    move-object v14, v5

    .line 1669
    const-string v0, "getAreaStagesRequest"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1670
    invoke-static {v8, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1671
    invoke-static/range {p5 .. p5}, Lcom/project7/localmanager/LocalGatewayServer;->isHighSchoolUnlocked(Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->resolveAreaId(Ljava/lang/Integer;Z)I

    move-result v0

    .line 1672
    nop

    .line 1677
    const-string v1, "get_area_stages_reply"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, v11, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    .line 1678
    invoke-interface {v2, v7, v9}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    invoke-static {v0, v9, v2}, Lcom/project7/localmanager/BsonLite;->areaStagesReplyDocument(ILcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v2

    .line 1675
    invoke-static {v13, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    .line 1672
    const/4 v2, 0x5

    invoke-direct {v11, v12, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "area stages completed area="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    move-object/from16 v8, v29

    goto/16 :goto_39

    .line 1683
    :cond_88
    nop

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unimplemented reliable RPC account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->debugDocument([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1684
    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p3

    move-object v8, v6

    move/from16 v5, v20

    goto :goto_3a

    .line 1243
    :cond_89
    move-object/from16 p3, v15

    move-object/from16 v10, v23

    move-object/from16 v6, v29

    move-object v15, v14

    move-object/from16 v14, v28

    move-object/from16 v34, v8

    move-object v8, v7

    move-object/from16 v7, v34

    .line 1244
    :goto_37
    invoke-static {v15}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v8

    move-object v8, v6

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v9, v8

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/project7/localmanager/LocalGatewayServer;->handleDayRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z

    move-object v8, v9

    goto :goto_39

    .line 1240
    :cond_8a
    move-object v7, v8

    move-object/from16 p3, v15

    move-object/from16 v10, v23

    move-object/from16 v8, v29

    move-object v15, v14

    move-object/from16 v14, v28

    .line 1241
    :goto_38
    move-object/from16 v0, p10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1242
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/LocalGatewayServer;->handleCalendar(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/lang/String;)V

    .line 1688
    :cond_8b
    :goto_39
    move-object/from16 v3, p3

    const/4 v5, 0x1

    :goto_3a
    if-eqz v3, :cond_8c

    .line 1689
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v11, v12, v13, v0, v15}, Lcom/project7/localmanager/LocalGatewayServer;->completeCallback(Ljava/io/OutputStream;[BILjava/lang/String;)V

    .line 1691
    :cond_8c
    iget-object v0, v11, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_8d

    const-string v2, "\u5df2\u5904\u7406\u4e1a\u52a1 RPC\uff1a"

    goto :goto_3b

    :cond_8d
    const-string v2, "\u4e1a\u52a1 RPC \u5c1a\u672a\u5b9e\u73b0\uff1a"

    :goto_3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u5e8f\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 1693
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v0, v16

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 1694
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slow reliable RPC method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " elapsedMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_8e
    return-void
.end method

.method private handleResourceRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;)Z
    .locals 68
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1000
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const-string v2, "queryMailDetail"

    const-string v3, "readMail"

    const-string v4, "delMail"

    const-string v5, "fetchAttachmentAndDel"

    const-string v6, "fetchAttachmentAndDelBatch"

    const-string v7, "fetchAttachmentAndDelBatch2"

    const-string v8, "requestLuckyDrawFile"

    const-string v9, "requestLuckyDrawCard"

    const-string v10, "requestFile"

    const-string v11, "requestQuitFile"

    const-string v12, "requestLuckyDrawFileAndOpenAll"

    const-string v13, "requestLuckyDrawAllLeftCard"

    const-string v14, "setChooseHeroes"

    const-string v15, "rookieGainRewards"

    const-string v16, "summoncoinExchange"

    const-string v17, "buyCardMallItem"

    const-string v18, "buyMoney"

    const-string v19, "getGiftCardReward"

    const-string v20, "monthCardGetFudaiReward"

    const-string v21, "GiftCardClickEvent"

    const-string v22, "requestGetCurMonHead"

    const-string v23, "rewardAchievement"

    const-string v24, "equipTreasureBatch"

    const-string v25, "unequipTreasure"

    const-string v26, "unequipAllTreasure"

    const-string v27, "unequipTreasureAllHero"

    const-string v28, "incHeroStarOrder"

    const-string v29, "tupoLiberateStage"

    const-string v30, "upgradeLiberate"

    const-string v31, "updateWanwufadian"

    const-string v32, "liberateChange"

    const-string v33, "upgradeAwakeStage"

    const-string v34, "changeAwakeSkinStyle"

    const-string v35, "seeAwakeSkillChanged"

    const-string v36, "changeTreasureForbid"

    const-string v37, "upgradeTreasure"

    const-string v38, "upgradeTreasureTargetLv"

    const-string v39, "upgradeAllTreasure"

    const-string v40, "memoryCrystalExchangeSuipian"

    const-string v41, "decomposeTreasure"

    const-string v42, "smeltTreasure"

    const-string v43, "transferTreasure"

    const-string v44, "composeTreasure"

    const-string v45, "composeTreasureBatch"

    const-string v46, "tupoTreasure"

    const-string v47, "refreshTreasureGoldAsk"

    const-string v48, "refreshTreasureOrangeAsk"

    const-string v49, "refreshTreasureApply"

    const-string v50, "refreshTreasureApplyOrange"

    const-string v51, "upgradeTreasureExp"

    const-string v52, "upgradeTreasureClassByItem"

    const-string v53, "requestItemHotRankList"

    const-string v54, "requestSaveTreasurePlan"

    const-string v55, "removeTreasurePlan"

    const-string v56, "requestUseTreasurePlan"

    const-string v57, "requestUnuseTreasurePlan"

    const-string v58, "dailyCheck"

    const-string v59, "requestMonDailyCheck"

    const-string v60, "requestMonDailyReCheck"

    const-string v61, "reqesutMonDailyTotalReward"

    const-string v62, "requestTaskList"

    const-string v63, "requesGetNewbieTaskReward"

    const-string v64, "requestNewbieTaskNodeReward"

    const-string v65, "updateNewAchievementTaskFromClient"

    const-string v66, "requestNewAchievementReward"

    const-string v67, "requestNewAchievementAutoShow"

    filled-new-array/range {v2 .. v67}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x42

    if-ge v4, v5, :cond_2

    aget-object v5, v2, v4

    .line 1019
    invoke-static {v5}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v6

    move-object/from16 v7, p3

    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1000
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1020
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1021
    iget-object v4, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    move-object/from16 v6, p4

    invoke-interface {v4, v1, v5, v6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateResources(Ljava/lang/String;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v4

    .line 1022
    iget-object v7, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v9, 0x5

    iget-object v10, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 1023
    invoke-static {v10}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v10

    iget-object v8, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    move-object/from16 v11, p2

    invoke-static {v11, v10, v8}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v8

    .line 1022
    move-object/from16 v10, p1

    invoke-direct {v0, v10, v9, v8}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_1

    .line 1024
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource RPC account="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " method="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parameters="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-static/range {p4 .. p4}, Lcom/project7/localmanager/BsonLite;->debugDocument([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " replies="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " elapsedMs="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v1, 0xf4240

    div-long/2addr v4, v1

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1024
    const-string v2, "Project7Gateway"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v1, 0x1

    return v1

    .line 1029
    :cond_2
    return v3
.end method

.method private handleRest(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2119
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v2, "zhaiRequest"

    invoke-interface {v0, p3, v2, v1, p4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateEconomy(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v0

    .line 2120
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, p3, p4}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 2121
    iget v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    const/4 v2, 0x5

    if-ltz v1, :cond_0

    .line 2122
    const-string v1, "get_city_data_reply"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v3, p3, p4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v3

    invoke-static {p4, v3}, Lcom/project7/localmanager/BsonLite;->cityDataReplyDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v3

    .line 2121
    invoke-static {p2, v1, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v1

    invoke-direct {p0, p1, v2, v1}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2123
    :cond_0
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v4, v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 2124
    invoke-static {v4}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v3, v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, v4, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v3

    .line 2123
    invoke-direct {p0, p1, v2, v3}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 2125
    :cond_1
    if-eqz p5, :cond_2

    iget-object p1, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {p1, p3, p4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 2126
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rest accepted="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " replay="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Project7Gateway"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    return-void
.end method

.method private handleServiceRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    new-instance v0, Ljava/util/ArrayList;

    const-string v13, "requestRecoverJingshenli"

    const-string v14, "readPendingNote"

    const-string v15, "readPlayerNote"

    const-string v16, "readPrivateMsg"

    const-string v17, "readSocialMsg"

    const-string v18, "replyPrivateMsg"

    const-string v19, "triggerSocialMsgEvent"

    const-string v20, "syncAllIntelligenceRequest"

    const-string v21, "readTodayIntelligence"

    const-string v22, "openIntelligenceRequest"

    const-string v23, "handleIntelligenceRequest"

    const-string v24, "delDestroyBuilding"

    const-string v25, "actionRewardRequest"

    const-string v26, "updateSouvenirLevel"

    const-string v27, "tryGiftToHero"

    const-string v28, "puzzleRoomGetClue"

    const-string v29, "dailyPureChooseHero"

    const-string v30, "requestFlashbackIncDay"

    filled-new-array/range {v13 .. v30}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 781
    sget-object v1, Lcom/project7/localmanager/LocalCommunityEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 782
    sget-object v1, Lcom/project7/localmanager/LocalStoryEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 783
    sget-object v1, Lcom/project7/localmanager/LocalStoryClueEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 784
    const-string v1, "daerweilaFirstChooseAsazile"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    sget-object v1, Lcom/project7/localmanager/LocalWingDrugEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 786
    sget-object v1, Lcom/project7/localmanager/LocalStoryDiscussion;->METHODS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 787
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 788
    invoke-static {v13}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v1

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    iget-object v0, v7, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    move-object/from16 v1, p4

    invoke-interface {v0, v10, v13, v1, v11}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v14

    .line 790
    const-string v15, "requestFlashbackIncDay"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v12, :cond_1

    .line 791
    invoke-virtual {v12, v2}, Lcom/project7/localmanager/LocalEventEngine;->updateClientOperation(I)V

    .line 792
    iget-object v0, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-virtual {v12, v0}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 793
    iget-object v0, v7, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v10, v11}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 795
    :cond_1
    const-string v0, "dailyPureChooseHero"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "replyPrivateMsg"

    if-nez v0, :cond_2

    invoke-static {v13}, Lcom/project7/localmanager/LocalHeroGiftEngine;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v13}, Lcom/project7/localmanager/LocalWingDrugEngine;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v12, :cond_3

    .line 796
    iget-object v0, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-virtual {v12, v0}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 797
    :cond_3
    const-string v0, "readPlayerNote"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, " method="

    const-string v4, "Project7Gateway"

    if-nez v0, :cond_4

    const-string v0, "readPendingNote"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 798
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "diary read account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 799
    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalDiaryEngine;->diagnostic([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-static {v4, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_5
    invoke-static {v13}, Lcom/project7/localmanager/LocalIntelligenceEngine;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v13}, Lcom/project7/localmanager/LocalHeroGiftEngine;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 801
    const-string v0, "triggerSocialMsgEvent"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 802
    :cond_6
    iget-object v0, v7, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v10, v11}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 803
    :cond_7
    iget-object v0, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 804
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v2, "q7StartSocialEvent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "e"

    if-eqz v1, :cond_9

    .line 805
    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 806
    if-eqz v12, :cond_8

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/project7/localmanager/LocalEventEngine;->startEvent(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 807
    iget-object v0, v7, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v0, v10, v11}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 808
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v12, 0x5

    move-object/from16 v2, p2

    move v12, v3

    move-object/from16 v3, p5

    move-object/from16 v31, v4

    move-object/from16 v4, p6

    move-object/from16 v32, v5

    move-object/from16 v5, p7

    move-object/from16 v33, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->syncPuzzleStart(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;I)V

    .line 809
    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 810
    nop

    .line 811
    const-string v0, "startEventReply"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v12}, Lcom/project7/localmanager/BsonLite;->eventReplyDocument(II)[B

    move-result-object v1

    .line 810
    invoke-static {v9, v0, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {v7, v8, v1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    move-object/from16 v12, p7

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    move-object/from16 v6, v33

    goto :goto_1

    .line 806
    :cond_8
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 v12, p7

    goto :goto_1

    .line 815
    :cond_9
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v3, "triggerIntelligenceEvents"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 816
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 817
    if-eqz v1, :cond_a

    iget-object v2, v11, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v11, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    move-object/from16 v12, p7

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    move-object/from16 v6, v33

    goto/16 :goto_1

    .line 819
    :cond_b
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 820
    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v9, v1, v0}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    .line 819
    const/4 v1, 0x5

    invoke-direct {v7, v8, v1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 821
    move-object/from16 v12, p7

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    move-object/from16 v6, v33

    goto/16 :goto_1

    .line 822
    :cond_c
    move v12, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    const/4 v1, 0x5

    invoke-static {v13}, Lcom/project7/localmanager/LocalWingDrugEngine;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 823
    :cond_d
    invoke-static {v14}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->sent(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B

    move-result-object v0

    .line 824
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v7, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const-string v3, "q7AckStoryProgress"

    invoke-interface {v2, v10, v3, v0, v11}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    .line 826
    :cond_e
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {v13}, Lcom/project7/localmanager/LocalHeroGiftEngine;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {v13}, Lcom/project7/localmanager/LocalWingDrugEngine;->handles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    move v6, v1

    if-eqz p7, :cond_10

    .line 827
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/LocalGatewayServer;->syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V

    .line 828
    const-string v0, "pushEvents"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 829
    invoke-virtual/range {p7 .. p7}, Lcom/project7/localmanager/LocalEventEngine;->availableEvents()Ljava/util/Set;

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Lcom/project7/localmanager/LocalEventEngine;->processingEvents()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object v1

    .line 828
    invoke-static {v9, v0, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    invoke-direct {v7, v8, v6, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 831
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city service account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return v12

    .line 834
    :cond_11
    return v2
.end method

.method private handleSetPlayerName(Ljava/io/OutputStream;[B[BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    const-string v0, "n"

    invoke-static {p3, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    const-string v1, "in"

    invoke-static {p3, v1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    .line 733
    if-eqz p4, :cond_0

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 737
    :goto_0
    if-eqz v1, :cond_1

    .line 738
    iget-object v2, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v2, p4, v0}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->savePlayerName(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_1
    const/4 v2, 0x5

    .line 745
    const-string v3, "setPlayerNameReply"

    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 748
    invoke-virtual {v4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 746
    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->playerNameReplyDocument(ZZ)[B

    move-result-object v4

    .line 743
    invoke-static {p2, v3, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    .line 740
    invoke-direct {p0, p1, v2, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 752
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setPlayerName completed account="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " playerName="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " accepted="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isNewName="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Project7Gateway"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void
.end method

.method private handleSpecialItemRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    const-string v0, "buyCardMallItem"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const-string v2, "requestSandglassToday"

    if-eqz v1, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 683
    :goto_0
    if-eqz v0, :cond_5

    invoke-static {v0, p4}, Lcom/project7/localmanager/LocalSpecialItemEngine;->handles(Ljava/lang/String;[B)Z

    move-result p3

    if-eqz p3, :cond_5

    if-eqz p5, :cond_5

    if-nez p6, :cond_2

    goto :goto_2

    .line 684
    :cond_2
    iget-object p3, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {p3, p5, v0, p4, p6}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    .line 685
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v1, p5, p6}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 686
    if-eqz p7, :cond_3

    iget-object v1, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, p6}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p6

    invoke-virtual {p7, p6}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 687
    :cond_3
    iget-object p3, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 p7, 0x5

    iget-object v1, p6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 688
    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    iget-object p6, p6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, v1, p6}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p6

    .line 687
    invoke-direct {p0, p1, p7, p6}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_1

    .line 689
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "special item account="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " method="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " params="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/project7/localmanager/BsonLite;->debugDocument([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Project7Gateway"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 p1, 0x1

    return p1

    .line 683
    :cond_5
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method private handleSuppressionRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "[B[B[B",
            "Ljava/lang/String;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Lcom/project7/localmanager/LocalEventEngine;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1981
    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v0, p4

    const-string v3, "battleYazhiAsk"

    invoke-static {v3}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v5, p3

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 1982
    :cond_0
    iget-object v4, v12, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface {v4, v6, v3, v0, v7}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateEconomy(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v13

    .line 1983
    iget-object v3, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v8, 0x5

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v9, v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 1984
    invoke-static {v9}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v9

    iget-object v4, v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v2, v9, v4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v4

    .line 1983
    invoke-direct {v12, v1, v8, v4}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 1985
    :cond_1
    const-string v3, "s"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v14

    .line 1986
    iget-boolean v4, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    const/4 v15, 0x1

    if-eqz v4, :cond_3

    .line 1987
    iget-boolean v4, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    if-nez v4, :cond_2

    .line 1988
    const-string v4, "battleYazhiReply"

    invoke-static {v4}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "a"

    aput-object v10, v9, v5

    invoke-static {v0, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v15

    const/4 v5, 0x2

    aput-object v3, v9, v5

    const/4 v3, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v3

    const/4 v3, 0x4

    const-string v5, "h"

    aput-object v5, v9, v3

    .line 1989
    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v9, v8

    const/4 v0, 0x6

    const-string v3, "r"

    aput-object v3, v9, v0

    const/4 v0, 0x7

    iget-object v3, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    aput-object v3, v9, v0

    .line 1988
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 1987
    invoke-static {v2, v4, v0}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v0

    invoke-direct {v12, v1, v8, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1990
    :cond_2
    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move v9, v14

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Lcom/project7/localmanager/LocalGatewayServer;->finishStoryCombat(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;Ljava/util/Set;IIILcom/project7/localmanager/LocalEconomyEngine$Result;)V

    .line 1992
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppression scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " accepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " replay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Project7Gateway"

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    return v15
.end method

.method private handleWeekRpc(Ljava/io/OutputStream;[B[B[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 696
    :cond_0
    const-string v8, "updateClientAvatarAsk"

    invoke-static {v8}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    const-string v9, "Project7Gateway"

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-eqz v8, :cond_3

    .line 697
    iget-object v3, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v3, v4, v5}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v3

    .line 698
    iget-object v8, v0, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v8, v4, v5}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 699
    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->withTutorialProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v3

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v3

    .line 700
    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalWeekEngine;->awaitingEntrance([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v5

    const-string v8, "s"

    const/4 v12, 0x2

    if-eqz v5, :cond_1

    .line 701
    const-string v5, "evalCode"

    invoke-static {v5}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v5

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v8, v13, v7

    const-string v14, "exec(\'gg.event_trigger_cache = None\\ngg.avatar_status = None\')"

    aput-object v14, v13, v11

    .line 702
    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v13

    .line 701
    invoke-static {v2, v5, v13}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v5

    invoke-direct {v0, v1, v10, v5}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "week entrance transient cache reset account="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_1
    const-string v4, "updateClientAvatarReply"

    invoke-static {v4}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v8, v5, v7

    new-instance v7, Lcom/project7/localmanager/BsonLite$BinaryValue;

    .line 706
    invoke-static {v3}, Lcom/project7/localmanager/LocalAvatarPayload;->encode([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/project7/localmanager/BsonLite$BinaryValue;-><init>([B)V

    aput-object v7, v5, v11

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    .line 705
    invoke-static {v2, v4, v5}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    invoke-direct {v0, v1, v10, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 707
    if-eqz v6, :cond_2

    invoke-virtual {v6, v3}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 708
    :cond_2
    return v11

    .line 710
    :cond_3
    sget-object v8, Lcom/project7/localmanager/LocalWeekEngine;->METHODS:[Ljava/lang/String;

    array-length v12, v8

    move v13, v7

    :goto_0
    if-ge v13, v12, :cond_7

    aget-object v14, v8, v13

    .line 711
    invoke-static {v14}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v15

    invoke-static {v3, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v15

    if-nez v15, :cond_4

    .line 710
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 712
    :cond_4
    iget-object v3, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    .line 713
    iget-object v7, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    move-object/from16 v8, p4

    invoke-interface {v7, v4, v14, v8, v5}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v7

    .line 714
    iget-object v8, v0, Lcom/project7/localmanager/LocalGatewayServer;->tutorialStore:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v8, v4, v5}, Lcom/project7/localmanager/LocalTutorialStore;->save(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 715
    if-eqz v6, :cond_5

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-virtual {v6, v3}, Lcom/project7/localmanager/LocalEventEngine;->resetWeekContext([B)V

    .line 716
    :cond_5
    iget-object v3, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v6, v5, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 717
    invoke-static {v6}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v5, v5, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v2, v6, v5}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v5

    .line 716
    invoke-direct {v0, v1, v10, v5}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_1

    .line 718
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "week lifecycle account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " week="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 719
    const-string v3, "weeknum"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "w"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return v11

    .line 722
    :cond_7
    return v7

    .line 695
    :cond_8
    :goto_2
    return v7
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 7

    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2408
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 2409
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "%02x"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2411
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isHighSchoolUnlocked(Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 1

    .line 2150
    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v0, 0x3ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static knownMethodName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2270
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "e14f329db4d0e69178add0cb0fb2721b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "43891612ade9652116a491adc872870a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "c98b48ce939a85367850f73c46262135"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "2685968efbe18f8ce157ba5cd205fdb2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "0bd2b958144ca852b93120c95f57eaa6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "86b7f6b757903e376b56a0d6d6adfd07"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v0, "1855aef234af3e9d1edf66c0ff95ae2d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "6f714ca281f3444f391d2c0b6b533d2b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 2288
    const-string p0, "unknown"

    return-object p0

    .line 2286
    :pswitch_0
    const-string p0, "uploadTouchHistory"

    return-object p0

    .line 2284
    :pswitch_1
    const-string p0, "logCheckCheat"

    return-object p0

    .line 2282
    :pswitch_2
    const-string p0, "exceptUpload"

    return-object p0

    .line 2280
    :pswitch_3
    const-string p0, "tutorialBegin"

    return-object p0

    .line 2278
    :pswitch_4
    const-string p0, "enterPlace"

    return-object p0

    .line 2276
    :pswitch_5
    const-string p0, "requestTriggerDaXuanWo"

    return-object p0

    .line 2274
    :pswitch_6
    const-string p0, "uploadDeviceInfo"

    return-object p0

    .line 2272
    :pswitch_7
    const-string p0, "syncAllIntelligenceRequest"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71148177 -> :sswitch_7
        -0x5ff608f1 -> :sswitch_6
        -0x524b8ad1 -> :sswitch_5
        -0x4f5285b3 -> :sswitch_4
        -0x34817738 -> :sswitch_3
        -0x16d019f4 -> :sswitch_2
        0x1ef82cae -> :sswitch_1
        0x37110cd0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$emitEventEffects$5(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Z
    .locals 1

    .line 909
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v0, "get_all_area_info_reply"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$0()Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;
    .locals 2

    .line 101
    new-instance v0, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;-><init>(Lcom/project7/localmanager/LocalGatewayServer$1;)V

    return-object v0
.end method

.method static synthetic lambda$new$1()Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;
    .locals 2

    .line 144
    new-instance v0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;-><init>(Lcom/project7/localmanager/LocalGatewayServer$1;)V

    return-object v0
.end method

.method static synthetic lambda$new$2(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Project7Connection"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 153
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 154
    return-object v0
.end method

.method static synthetic lambda$syncPuzzleStart$4(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Z
    .locals 1

    .line 842
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v0, "syncPuzzleRoomClue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static md5(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2354
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2355
    :catch_0
    move-exception p0

    .line 2356
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MD5 unavailable"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private objectId()[B
    .locals 2

    .line 2347
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 2348
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 2349
    return-object v0
.end method

.method private prepareEventEffects(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_0

    iget-object v4, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v4, v1, v2}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 869
    :cond_0
    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/project7/localmanager/LocalEventEngine;->messagePublishers()Ljava/util/Set;

    move-result-object v4

    .line 870
    :goto_0
    iget-object v5, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    sget-object v6, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v7, "effects"

    invoke-interface {v5, v1, v7, v6, v2}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v5

    .line 871
    if-nez v3, :cond_2

    return-object v5

    .line 872
    :cond_2
    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0x8

    if-ge v8, v9, :cond_9

    .line 873
    iget-object v9, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-virtual {v3, v9}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 874
    invoke-virtual/range {p3 .. p3}, Lcom/project7/localmanager/LocalEventEngine;->messagePublishers()Ljava/util/Set;

    move-result-object v9

    .line 875
    invoke-interface {v4, v9}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_3

    return-object v5

    .line 876
    :cond_3
    invoke-interface {v4, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 877
    iget-object v9, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    sget-object v10, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-interface {v9, v1, v7, v10, v2}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v9

    .line 879
    iget-object v10, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 880
    invoke-static {v11}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;

    move-result-object v12

    .line 881
    nop

    .line 882
    const/4 v14, 0x0

    :goto_3
    iget-object v15, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 883
    iget-object v15, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 884
    if-eqz v12, :cond_4

    invoke-static {v15}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    .line 885
    :cond_4
    iget-object v6, v15, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    iget-object v13, v11, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v15, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    iget-object v13, v11, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v6, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 887
    :goto_4
    move v13, v14

    goto :goto_5

    .line 882
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, -0x1

    .line 887
    :goto_5
    if-ltz v13, :cond_7

    iget-object v6, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6, v13, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 888
    :cond_7
    iget-object v6, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    :goto_6
    goto :goto_2

    .line 890
    :cond_8
    iget-object v6, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v6, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 872
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 893
    :cond_9
    iget-object v2, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-virtual {v3, v2}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "story message closure budget exhausted; no player event forced account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Project7Gateway"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return-object v5
.end method

.method private static readByte(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2386
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    .line 2387
    if-ltz p0, :cond_0

    .line 2390
    return p0

    .line 2388
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private static readExactly(Ljava/io/InputStream;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2394
    new-array v0, p1, [B

    .line 2395
    const/4 v1, 0x0

    .line 2396
    :goto_0
    if-ge v1, p1, :cond_1

    .line 2397
    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 2398
    if-ltz v2, :cond_0

    .line 2401
    add-int/2addr v1, v2

    .line 2402
    goto :goto_0

    .line 2399
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 2403
    :cond_1
    return-object v0
.end method

.method private readFrame(Ljava/io/InputStream;)Lcom/project7/localmanager/LocalGatewayServer$Frame;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2327
    invoke-static {p1}, Lcom/project7/localmanager/LocalGatewayServer;->readLeInt(Ljava/io/InputStream;)I

    move-result v0

    .line 2328
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/high16 v2, 0x4000000

    if-gt v0, v2, :cond_0

    .line 2331
    invoke-static {p1}, Lcom/project7/localmanager/LocalGatewayServer;->readByte(Ljava/io/InputStream;)I

    move-result v2

    .line 2332
    invoke-static {p1}, Lcom/project7/localmanager/LocalGatewayServer;->readByte(Ljava/io/InputStream;)I

    move-result v3

    .line 2333
    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->readExactly(Ljava/io/InputStream;I)[B

    move-result-object p1

    .line 2334
    new-instance v0, Lcom/project7/localmanager/LocalGatewayServer$Frame;

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    invoke-direct {v0, v1, p1}, Lcom/project7/localmanager/LocalGatewayServer$Frame;-><init>(I[B)V

    return-object v0

    .line 2329
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid frame size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static readLeInt(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2371
    invoke-static {p0}, Lcom/project7/localmanager/LocalGatewayServer;->readByte(Ljava/io/InputStream;)I

    move-result v0

    .line 2372
    invoke-static {p0}, Lcom/project7/localmanager/LocalGatewayServer;->readByte(Ljava/io/InputStream;)I

    move-result v1

    .line 2373
    invoke-static {p0}, Lcom/project7/localmanager/LocalGatewayServer;->readByte(Ljava/io/InputStream;)I

    move-result v2

    .line 2374
    invoke-static {p0}, Lcom/project7/localmanager/LocalGatewayServer;->readByte(Ljava/io/InputStream;)I

    move-result p0

    .line 2375
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private refreshResourceProfile([BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1056
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v4, :cond_9

    const-string v5, "requestItemHotRankList"

    invoke-static {v5}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 1057
    :cond_0
    const-string v6, "incHeroStarOrder"

    const-string v7, "tupoLiberateStage"

    const-string v8, "upgradeLiberate"

    const-string v9, "updateWanwufadian"

    const-string v10, "liberateChange"

    const-string v11, "upgradeAwakeStage"

    const-string v12, "changeAwakeSkinStyle"

    const-string v13, "seeAwakeSkillChanged"

    const-string v14, "rewardAchievement"

    const-string v15, "requestNewAchievementReward"

    const-string v16, "requestNewAchievementAutoShow"

    const-string v17, "updateNewAchievementTaskFromClient"

    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0xc

    if-ge v7, v8, :cond_2

    aget-object v8, v5, v7

    .line 1061
    invoke-static {v8}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v1, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1062
    iget-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, v2, v3}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 1063
    return-void

    .line 1057
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1066
    :cond_2
    const/4 v5, 0x7

    const-string v9, "requestLuckyDrawFile"

    const-string v10, "requestLuckyDrawCard"

    const-string v11, "requestFile"

    const-string v12, "requestQuitFile"

    const-string v13, "requestLuckyDrawFileAndOpenAll"

    const-string v14, "requestLuckyDrawAllLeftCard"

    const-string v15, "setChooseHeroes"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v7

    move v9, v6

    :goto_1
    if-ge v9, v5, :cond_4

    aget-object v10, v7, v9

    .line 1068
    invoke-static {v10}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1071
    iget-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, v2, v3}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 1072
    return-void

    .line 1066
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1075
    :cond_4
    sget-object v5, Lcom/project7/localmanager/LocalTreasureOperationEngine;->METHODS:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1076
    invoke-static {v7}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1077
    iget-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, v2, v3}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 1078
    return-void

    .line 1080
    :cond_5
    goto :goto_2

    .line 1081
    :cond_6
    const-string v9, "equipTreasureBatch"

    const-string v10, "unequipTreasure"

    const-string v11, "unequipAllTreasure"

    const-string v12, "unequipTreasureAllHero"

    const-string v13, "requestSaveTreasurePlan"

    const-string v14, "removeTreasurePlan"

    const-string v15, "requestUseTreasurePlan"

    const-string v16, "requestUnuseTreasurePlan"

    const-string v17, "changeTreasureForbid"

    const-string v18, "upgradeTreasure"

    const-string v19, "upgradeTreasureTargetLv"

    const-string v20, "upgradeAllTreasure"

    filled-new-array/range {v9 .. v20}, [Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-ge v6, v8, :cond_8

    aget-object v7, v5, v6

    .line 1085
    invoke-static {v7}, Lcom/project7/localmanager/LocalGatewayServer;->digest(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1087
    iget-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, v2, v3}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 1088
    return-void

    .line 1081
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1091
    :cond_8
    iget-object v1, v0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, v2, v3}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 1092
    return-void

    .line 1056
    :cond_9
    :goto_4
    return-void
.end method

.method private static resolveAreaId(Ljava/lang/Integer;Z)I
    .locals 2

    .line 2143
    if-nez p1, :cond_1

    .line 2144
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0

    .line 2146
    :cond_1
    const/4 p1, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_3
    :goto_1
    return p1
.end method

.method private sendLoginFailure(Ljava/io/OutputStream;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2234
    nop

    .line 2239
    const-string v0, "onLoginFail"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    .line 2240
    invoke-static {p3}, Lcom/project7/localmanager/BsonLite;->loginFailureDocument(Ljava/lang/String;)[B

    move-result-object p3

    .line 2237
    invoke-static {p2, v0, p3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    .line 2234
    const/4 p3, 0x5

    invoke-direct {p0, p1, p3, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2243
    return-void
.end method

.method private sendTutorialHeroReward(Ljava/io/OutputStream;[BLjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2160
    const/16 v0, 0x3e9

    if-ne p4, v0, :cond_1

    .line 2161
    const/16 v0, 0x18

    .line 2165
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v1, p3, v0}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->ensureHero(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_0

    .line 2166
    return-void

    .line 2168
    :cond_0
    const/4 p3, 0x5

    .line 2173
    const-string v1, "addHero"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    .line 2174
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->addHeroDocument(I)[B

    move-result-object v2

    .line 2171
    invoke-static {p2, v1, v2}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    .line 2168
    invoke-direct {p0, p1, p3, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tutorial hero granted event="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " hero="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Project7Gateway"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    return-void

    .line 2163
    :cond_1
    return-void
.end method

.method private static starterEventForHero(I)I
    .locals 1

    .line 2185
    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/16 p0, 0x40e

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    const/16 p0, 0x40f

    goto :goto_0

    :cond_1
    const/16 p0, 0x410

    :goto_0
    return p0
.end method

.method private static starterHeroForUsername(Ljava/lang/String;)I
    .locals 0

    .line 2181
    const/4 p0, 0x7

    return p0
.end method

.method private syncClientCompatibility(Ljava/io/OutputStream;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1033
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    invoke-interface {v0}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->clientCompatibility()Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    .line 1036
    const-string v2, "evalCode"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "s"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/project7/localmanager/LocalClientCompatibility;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 1034
    invoke-static {p2, v2, v0}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1037
    :cond_0
    return-void
.end method

.method private syncDrawCalendar(Ljava/io/OutputStream;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2056
    nop

    .line 2057
    const-string v0, "evalCode"

    invoke-static {v0}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "s"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "import com.data.cdata.activity_config as ac; import com.data.cdata.chouka_info as ci; import com.utils.runtime_mapping_table as mt; ac.data=dict(ac.data); ac.data[175]=dict(ac.data[175]); ci.data=dict(ci.data); ci.data[484]=dict(ci.data[484]); ac.data[175][\'open_range\']=(2021,9,22,7,0,0,2035,9,22,7,0,0); ci.data[484][\'begin_time\']=(2016,1,1,7,0,0,0,0,0); ci.data[484][\'end_time\']=(2035,9,22,7,0,0,0,0,0); mt.reload(); mt._CELL_MAPPING_CONFIG.setdefault(\'chouka_info\',{}).setdefault(484,{}).update({\'begin_time\':ci.data[484][\'begin_time\'],\'end_time\':ci.data[484][\'end_time\']}); print(\'local_draw_calendar_v3\', ci.data[484][\'end_time\'], mt.get_table(\'chouka_info\').data.get(484,{}).get(\'end_time\'))"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 2056
    invoke-static {p2, v0, v1}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2058
    return-void
.end method

.method private syncEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    nop

    .line 863
    invoke-direct {p0, p3, p4, p5}, Lcom/project7/localmanager/LocalGatewayServer;->prepareEventEffects(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v6

    .line 862
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/project7/localmanager/LocalGatewayServer;->emitEventEffects(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 864
    return-void
.end method

.method private syncPuzzleStart(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "e"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 841
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 840
    const-string v2, "q7PuzzleBegin"

    invoke-interface {v0, p3, v2, v1, p4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    .line 842
    iget-object p4, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p4

    sget-object v0, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda3;->INSTANCE:Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda3;

    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 844
    iget-object p4, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-virtual {p5, p4}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 845
    iget-object p3, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 846
    const/4 p5, 0x5

    iget-object p6, p4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-static {p6}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object p6

    iget-object p4, p4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {p2, p6, p4}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p4

    invoke-direct {p0, p1, p5, p4}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 847
    :cond_1
    return-void

    .line 843
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "authorized puzzle room could not resume event="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 839
    :cond_3
    :goto_1
    return-void
.end method

.method private syncTutorialCityCompletion(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    const/16 v0, 0x3ec

    if-eq p5, v0, :cond_0

    const/16 v0, 0x417

    if-eq p5, v0, :cond_0

    const/16 v0, 0x3f5

    if-ne p5, v0, :cond_1

    .line 1051
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/project7/localmanager/LocalGatewayServer;->syncTutorialCityState(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V

    .line 1052
    :cond_1
    return-void
.end method

.method private syncTutorialCityState(Ljava/io/OutputStream;[BLjava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1041
    invoke-static {p4}, Lcom/project7/localmanager/LocalGatewayServer;->isHighSchoolUnlocked(Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1042
    :cond_0
    const/4 v0, 0x5

    .line 1043
    const-string v1, "get_all_area_info_reply"

    invoke-static {v1}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/project7/localmanager/LocalGatewayServer;->profileProvider:Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;

    .line 1044
    invoke-interface {v3, p3, p4}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p3

    .line 1043
    invoke-static {v2, p4, p3}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p3

    .line 1042
    invoke-static {p2, v1, p3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 1045
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "city battle state refreshed after event="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Project7Gateway"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return-void
.end method

.method private triggerPendingNewbees(Ljava/io/OutputStream;[BLcom/project7/localmanager/LocalEventEngine;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "[B",
            "Lcom/project7/localmanager/LocalEventEngine;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2194
    if-nez p3, :cond_0

    .line 2195
    return-void

    .line 2197
    :cond_0
    invoke-virtual {p3}, Lcom/project7/localmanager/LocalEventEngine;->processingNewbees()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2198
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2199
    goto :goto_0

    .line 2201
    :cond_1
    const/4 v1, 0x5

    .line 2206
    const-string v2, "triggerClientNewbee"

    invoke-static {v2}, Lcom/project7/localmanager/LocalGatewayServer;->md5(Ljava/lang/String;)[B

    move-result-object v2

    .line 2207
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->eventDocument(I)[B

    move-result-object v3

    .line 2204
    invoke-static {p2, v2, v3}, Lcom/project7/localmanager/ProtoLite;->entityMessage([B[B[B)[B

    move-result-object v2

    .line 2201
    invoke-direct {p0, p1, v1, v2}, Lcom/project7/localmanager/LocalGatewayServer;->writeFrame(Ljava/io/OutputStream;I[B)V

    .line 2210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pending tutorial guidance pushed event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Project7Gateway"

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    goto :goto_0

    .line 2212
    :cond_2
    return-void
.end method

.method private writeFrame(Ljava/io/OutputStream;I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2338
    array-length v0, p3

    add-int/lit8 v0, v0, 0x2

    .line 2339
    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalGatewayServer;->writeLeInt(Ljava/io/OutputStream;I)V

    .line 2340
    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2341
    ushr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 2342
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 2343
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 2344
    return-void
.end method

.method private static writeLeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2379
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2380
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2381
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2382
    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2383
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 2294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->closed:Z

    .line 2295
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->clients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

    invoke-virtual {v1}, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->close()V

    goto :goto_0

    .line 2296
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->connections:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 2297
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->socket:Ljava/net/ServerSocket;

    .line 2298
    if-eqz v0, :cond_1

    .line 2300
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2302
    goto :goto_1

    .line 2301
    :catch_0
    move-exception v0

    .line 2304
    :cond_1
    :goto_1
    return-void
.end method

.method public synthetic lambda$run$3$LocalGatewayServer(Lcom/project7/localmanager/LocalGatewayServer$ClientSession;)V
    .locals 4

    .line 204
    :try_start_0
    iget-object v0, p1, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->client:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 205
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/project7/localmanager/LocalGatewayServer;->handleClient(Ljava/net/Socket;Lcom/project7/localmanager/LocalGatewayServer$ClientSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 204
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 210
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 206
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 207
    :goto_1
    :try_start_5
    iget-boolean v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->closed:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->cancelled:Z

    if-nez v1, :cond_1

    .line 208
    const-string v1, "Project7Gateway"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connection ended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 210
    :cond_1
    :goto_2
    iget-object v0, p1, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 211
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->clients:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 212
    nop

    .line 213
    return-void

    .line 210
    :goto_3
    iget-object v1, p1, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 211
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer;->clients:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 212
    throw v0
.end method

.method public run()V
    .locals 11

    .line 192
    const-string v0, "Project7Gateway"

    const-string v1, "\n\u8d26\u53f7\u6a21\u677f\uff1ahakopania"

    const-string v2, "\u76d1\u542c\u5730\u5740\uff1a127.0.0.1:"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/net/ServerSocket;

    iget v6, p0, Lcom/project7/localmanager/LocalGatewayServer;->port:I

    const/4 v7, 0x4

    const-string v8, "127.0.0.1"

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 193
    :try_start_1
    iput-object v5, p0, Lcom/project7/localmanager/LocalGatewayServer;->socket:Ljava/net/ServerSocket;

    .line 194
    iget-object v6, p0, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/project7/localmanager/LocalGatewayServer;->port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n\u8d26\u53f7\u6a21\u677f\uff1ahakopania\n\u7b49\u5f85\u6e38\u620f\u8fde\u63a5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v8, v7}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 195
    :goto_0
    iget-boolean v6, p0, Lcom/project7/localmanager/LocalGatewayServer;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    .line 197
    :try_start_2
    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v6

    .line 198
    invoke-virtual {v6, v8}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 199
    const/16 v7, 0x3a98

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 200
    new-instance v7, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

    invoke-direct {v7, v6}, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;-><init>(Ljava/net/Socket;)V

    .line 201
    iget-object v6, p0, Lcom/project7/localmanager/LocalGatewayServer;->clients:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :try_start_3
    iget-object v6, p0, Lcom/project7/localmanager/LocalGatewayServer;->connections:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v7}, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda0;-><init>(Lcom/project7/localmanager/LocalGatewayServer;Lcom/project7/localmanager/LocalGatewayServer$ClientSession;)V

    invoke-virtual {v6, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    goto :goto_1

    .line 214
    :catch_0
    move-exception v6

    .line 215
    :try_start_4
    iget-object v6, p0, Lcom/project7/localmanager/LocalGatewayServer;->clients:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v7}, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 218
    :catch_1
    move-exception v6

    .line 219
    :try_start_5
    iget-boolean v7, p0, Lcom/project7/localmanager/LocalGatewayServer;->closed:Z

    if-nez v7, :cond_0

    .line 220
    const-string v7, "client connection failed"

    invoke-static {v0, v7, v6}, Lcom/project7/localmanager/LocalDiagnosticLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    iget-object v7, p0, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7f51\u5173\u8fde\u63a5\u9519\u8bef\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    :cond_0
    :goto_1
    goto :goto_0

    .line 225
    :cond_1
    :try_start_6
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 231
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->clients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

    invoke-virtual {v5}, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->close()V

    goto :goto_2

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->connections:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 233
    iput-object v3, p0, Lcom/project7/localmanager/LocalGatewayServer;->socket:Ljava/net/ServerSocket;

    .line 234
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 192
    :catchall_0
    move-exception v6

    :try_start_7
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    :try_start_8
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 231
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 225
    :catch_2
    move-exception v5

    .line 226
    :try_start_9
    iget-boolean v6, p0, Lcom/project7/localmanager/LocalGatewayServer;->closed:Z

    if-nez v6, :cond_3

    .line 227
    const-string v6, "gateway listener failed"

    invoke-static {v0, v6, v5}, Lcom/project7/localmanager/LocalDiagnosticLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u65e0\u6cd5\u76d1\u542c 127.0.0.1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/project7/localmanager/LocalGatewayServer;->port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->clients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

    invoke-virtual {v5}, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->close()V

    goto :goto_4

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->connections:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 233
    iput-object v3, p0, Lcom/project7/localmanager/LocalGatewayServer;->socket:Ljava/net/ServerSocket;

    .line 234
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/project7/localmanager/LocalGatewayServer;->port:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 235
    nop

    .line 236
    return-void

    .line 231
    :goto_6
    iget-object v5, p0, Lcom/project7/localmanager/LocalGatewayServer;->clients:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

    invoke-virtual {v6}, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->close()V

    goto :goto_7

    .line 232
    :cond_5
    iget-object v5, p0, Lcom/project7/localmanager/LocalGatewayServer;->connections:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 233
    iput-object v3, p0, Lcom/project7/localmanager/LocalGatewayServer;->socket:Ljava/net/ServerSocket;

    .line 234
    iget-object v3, p0, Lcom/project7/localmanager/LocalGatewayServer;->listener:Lcom/project7/localmanager/LocalGatewayServer$StatusListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/project7/localmanager/LocalGatewayServer;->port:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/project7/localmanager/LocalGatewayServer$StatusListener;->onStatus(ZLjava/lang/String;)V

    .line 235
    throw v0
.end method
