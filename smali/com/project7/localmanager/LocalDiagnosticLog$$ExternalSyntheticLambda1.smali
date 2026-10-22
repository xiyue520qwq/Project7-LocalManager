.class public final synthetic Lcom/project7/localmanager/LocalDiagnosticLog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/project7/localmanager/LocalDiagnosticLog$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/project7/localmanager/LocalDiagnosticLog$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/project7/localmanager/LocalDiagnosticLog$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalDiagnosticLog$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalDiagnosticLog$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
