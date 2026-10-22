.class public final synthetic Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda1;

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

    check-cast p1, [B

    invoke-static {p1}, Lcom/project7/localmanager/LocalIntelligenceEngine;->lambda$refresh$0([B)Z

    move-result p1

    return p1
.end method
