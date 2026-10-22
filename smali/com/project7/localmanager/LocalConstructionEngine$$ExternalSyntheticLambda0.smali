.class public final synthetic Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/project7/localmanager/LocalConstructionEngine;->lambda$apply$0(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
