.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda54;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda54;-><init>()V

    sput-object v0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda54;->INSTANCE:Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda54;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/project7/localmanager/MainActivity;->lambda$addHistoricalSections$36(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
