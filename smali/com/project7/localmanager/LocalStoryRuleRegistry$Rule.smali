.class final Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;
.super Ljava/lang/Object;
.source "LocalStoryRuleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalStoryRuleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Rule"
.end annotation


# instance fields
.field final handler:Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;

.field final name:Ljava/lang/String;

.field final phase:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

.field final scope:Ljava/lang/String;

.field final sourceField:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;->sourceField:Ljava/lang/String;

    iput-object p3, p0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;->scope:Ljava/lang/String;

    iput-object p4, p0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;->phase:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    iput-object p5, p0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;->handler:Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;

    .line 17
    return-void
.end method
