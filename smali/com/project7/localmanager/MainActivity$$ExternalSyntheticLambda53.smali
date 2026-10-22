.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda53;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda53;-><init>()V

    sput-object v0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda53;->INSTANCE:Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda53;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->flush()V

    return-void
.end method
