.class final enum Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;
.super Ljava/lang/Enum;
.source "LocalStoryRuleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalStoryRuleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

.field public static final enum AFTER_CONTENT:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

.field public static final enum AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    const-string v1, "AFTER_ROUTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    const-string v3, "AFTER_CONTENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_CONTENT:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->$VALUES:[Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;
    .locals 1

    .line 7
    const-class v0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    return-object p0
.end method

.method public static values()[Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;
    .locals 1

    .line 7
    sget-object v0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->$VALUES:[Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    invoke-virtual {v0}, [Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    return-object v0
.end method
