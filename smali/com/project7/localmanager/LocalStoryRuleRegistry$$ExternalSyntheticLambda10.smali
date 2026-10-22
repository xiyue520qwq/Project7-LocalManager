.class public final synthetic Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;


# static fields
.field public static final synthetic INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda10;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda10;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda10;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/project7/localmanager/LocalStoryTargetEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    return-void
.end method
