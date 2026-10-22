.class public final Lcom/project7/localmanager/GatewayService;
.super Landroid/app/Service;
.source "GatewayService.java"


# static fields
.field private static final ACTION_START:Ljava/lang/String; = "com.project7.localmanager.START"

.field private static final ACTION_STOP:Ljava/lang/String; = "com.project7.localmanager.STOP"

.field private static final CHANNEL_ID:Ljava/lang/String; = "local_gateway"

.field private static final RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile statusText:Ljava/lang/String;


# instance fields
.field private server:Lcom/project7/localmanager/LocalGatewayServer;

.field private serverThread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$JBt7z0i9dmC8S8rwaMa6_hXprXk(Lcom/project7/localmanager/GatewayService;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/project7/localmanager/GatewayService;->onGatewayStatus(ZLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/project7/localmanager/GatewayService;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    const-string v0, "\u76d1\u542c\u5730\u5740\uff1a127.0.0.1:23333\n\u8d26\u53f7\u6a21\u677f\uff1ahakopania"

    sput-object v0, Lcom/project7/localmanager/GatewayService;->statusText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 146
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "local_gateway"

    const-string v2, "\u672c\u5730\u7f51\u5173"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 151
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/project7/localmanager/GatewayService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 152
    return-void
.end method

.method public static isRunning()Z
    .locals 1

    .line 36
    sget-object v0, Lcom/project7/localmanager/GatewayService;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private notification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 3

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/project7/localmanager/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 136
    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "local_gateway"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    const/4 v2, 0x7

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalIcons;->resource(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 138
    const-string v2, "Project7 \u672c\u5730\u7ba1\u7406"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 136
    return-object p1
.end method

.method private onGatewayStatus(ZLjava/lang/String;)V
    .locals 1

    .line 119
    sget-object v0, Lcom/project7/localmanager/GatewayService;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    sput-object p2, Lcom/project7/localmanager/GatewayService;->statusText:Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_0

    const-string v0, "I"

    goto :goto_0

    :cond_0
    const-string v0, "W"

    :goto_0
    invoke-static {v0, p2}, Lcom/project7/localmanager/LocalDiagnosticLog;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-eqz p1, :cond_1

    .line 123
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Lcom/project7/localmanager/GatewayService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 124
    const/4 p2, 0x7

    const-string v0, "\u672c\u5730\u7f51\u5173\u6b63\u5728\u8fd0\u884c"

    invoke-direct {p0, v0}, Lcom/project7/localmanager/GatewayService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 126
    :cond_1
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/project7/localmanager/GatewayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.project7.localmanager.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    return-void
.end method

.method private declared-synchronized startGateway()V
    .locals 11

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/project7/localmanager/GatewayService;->serverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 76
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_1
    new-instance v4, Lcom/project7/localmanager/LocalProfileStore;

    invoke-direct {v4, p0}, Lcom/project7/localmanager/LocalProfileStore;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v5, Lcom/project7/localmanager/LocalTutorialStore;

    invoke-direct {v5, p0}, Lcom/project7/localmanager/LocalTutorialStore;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    new-instance v3, Lcom/project7/localmanager/LocalAccountStore;

    invoke-direct {v3, p0}, Lcom/project7/localmanager/LocalAccountStore;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v6, Lcom/project7/localmanager/LocalEventCatalog;

    invoke-direct {v6, p0}, Lcom/project7/localmanager/LocalEventCatalog;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v7, Lcom/project7/localmanager/LocalNewbeeCatalog;

    invoke-direct {v7, p0}, Lcom/project7/localmanager/LocalNewbeeCatalog;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v8, Lcom/project7/localmanager/LocalCombatCatalog;

    invoke-direct {v8, p0}, Lcom/project7/localmanager/LocalCombatCatalog;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v9, Lcom/project7/localmanager/LocalPatrolCatalog;

    invoke-direct {v9, p0}, Lcom/project7/localmanager/LocalPatrolCatalog;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Lcom/project7/localmanager/LocalGatewayServer;

    const/16 v2, 0x5b25

    new-instance v10, Lcom/project7/localmanager/GatewayService$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0}, Lcom/project7/localmanager/GatewayService$$ExternalSyntheticLambda0;-><init>(Lcom/project7/localmanager/GatewayService;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/project7/localmanager/LocalGatewayServer;-><init>(ILcom/project7/localmanager/LocalAccountStore;Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;Lcom/project7/localmanager/LocalTutorialStore;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalNewbeeCatalog;Lcom/project7/localmanager/LocalCombatCatalog;Lcom/project7/localmanager/LocalPatrolCatalog;Lcom/project7/localmanager/LocalGatewayServer$StatusListener;)V

    iput-object v0, p0, Lcom/project7/localmanager/GatewayService;->server:Lcom/project7/localmanager/LocalGatewayServer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    nop

    .line 102
    :try_start_3
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/project7/localmanager/GatewayService;->server:Lcom/project7/localmanager/LocalGatewayServer;

    const-string v2, "project7-local-gateway"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/project7/localmanager/GatewayService;->serverThread:Ljava/lang/Thread;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65e0\u6cd5\u52a0\u8f7d\u539f\u59cb\u4e8b\u4ef6\u8868\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/project7/localmanager/GatewayService;->onGatewayStatus(ZLjava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/project7/localmanager/GatewayService;->stopSelf()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static statusText()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/project7/localmanager/GatewayService;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/project7/localmanager/GatewayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.project7.localmanager.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    return-void
.end method

.method private declared-synchronized stopGateway()V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/project7/localmanager/GatewayService;->server:Lcom/project7/localmanager/LocalGatewayServer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/project7/localmanager/LocalGatewayServer;->close()V

    .line 109
    iput-object v1, p0, Lcom/project7/localmanager/GatewayService;->server:Lcom/project7/localmanager/LocalGatewayServer;

    .line 111
    :cond_0
    iput-object v1, p0, Lcom/project7/localmanager/GatewayService;->serverThread:Ljava/lang/Thread;

    .line 112
    sget-object v0, Lcom/project7/localmanager/GatewayService;->RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    const-string v0, "\u76d1\u542c\u5730\u5740\uff1a127.0.0.1:23333\n\u8d26\u53f7\u6a21\u677f\uff1ahakopania"

    sput-object v0, Lcom/project7/localmanager/GatewayService;->statusText:Ljava/lang/String;

    .line 114
    const-string v0, "I"

    const-string v1, "\u672c\u5730\u7f51\u5173\u5df2\u505c\u6b62"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 71
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    invoke-virtual {p0}, Lcom/project7/localmanager/GatewayService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->initialize(Ljava/io/File;)V

    .line 47
    invoke-direct {p0}, Lcom/project7/localmanager/GatewayService;->createNotificationChannel()V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/project7/localmanager/GatewayService;->stopGateway()V

    .line 66
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 67
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 52
    if-nez p1, :cond_0

    const-string p1, "com.project7.localmanager.START"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 53
    :goto_0
    const-string p2, "com.project7.localmanager.STOP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/project7/localmanager/GatewayService;->stopGateway()V

    .line 55
    invoke-virtual {p0}, Lcom/project7/localmanager/GatewayService;->stopSelf()V

    .line 56
    const/4 p1, 0x2

    return p1

    .line 58
    :cond_1
    const/4 p1, 0x7

    const-string p2, "\u672c\u5730\u7f51\u5173\u6b63\u5728\u8fd0\u884c"

    invoke-direct {p0, p2}, Lcom/project7/localmanager/GatewayService;->notification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/project7/localmanager/GatewayService;->startForeground(ILandroid/app/Notification;)V

    .line 59
    invoke-direct {p0}, Lcom/project7/localmanager/GatewayService;->startGateway()V

    .line 60
    const/4 p1, 0x1

    return p1
.end method
