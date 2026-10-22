.class final Lcom/project7/localmanager/LocalStoryRuleRegistry;
.super Ljava/lang/Object;
.source "LocalStoryRuleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;,
        Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;,
        Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;
    }
.end annotation


# static fields
.field static final RULES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 19
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    new-instance v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v5, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v6, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda1;

    const-string v2, "confidence"

    const-string v3, "getCenterConfidence"

    const-string v4, "current-week"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v12, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v13, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda0;

    const-string v9, "an-city-locks"

    const-string v10, "areaLock"

    const-string v11, "routes4,4-1;events7044,7045,7048,7049"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda3;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda3;

    const-string v4, "chapter-city"

    const-string v5, "areaFree,areaFight,areaLock,areaUnlock,cineLockHeroes,banHeroes,recoverBanHeroes"

    const-string v6, "12"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda10;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda10;

    const-string v4, "shared-targets"

    const-string v5, "story_target.subTarget_count,completeRouteTarget"

    const-string v6, "known-native-targets;current-week;routes4,12,14-specialized"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda4;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda4;

    const-string v4, "deep-echo-meters"

    const-string v5, "gainRelyVal,gainSupportVal,completeRouteTarget"

    const-string v6, "route14-family;current-week"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda12;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda12;

    const-string v4, "wing-story"

    const-string v5, "gainBaiyuVal"

    const-string v6, "route7-family;committed-menu6-cycle;signed-event-only"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda13;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda13;

    const-string v4, "yisake-story"

    const-string v5, "gainYisakeVal"

    const-string v6, "route9-family;new-current-week-completions;published-only"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda5;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda5;

    const-string v4, "clues"

    const-string v5, "procClue,procFailClue"

    const-string v6, "all"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_CONTENT:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda2;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda2;

    const-string v4, "ark-raids"

    const-string v5, "areaStrike,refreshMission,areaFree"

    const-string v6, "reviewed-six;route3-1;current-week"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_CONTENT:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda11;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda11;

    const-string v4, "wing-garden"

    const-string v5, "special_agreement"

    const-string v6, "original3147/agreement2;committed-menu6-cycle;completed-only"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_CONTENT:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda7;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda7;

    const-string v4, "story-heroes"

    const-string v5, "rewards.hero"

    const-string v6, "reviewed6030;current-week-completion"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_CONTENT:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda8;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda8;

    const-string v4, "story-items"

    const-string v5, "rewards.items"

    const-string v6, "reviewed1004724;current-week-completion"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_CONTENT:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda6;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda6;

    const-string v4, "friendship"

    const-string v5, "rewards.friends"

    const-string v6, "ordinary;chapter12-separate"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    sget-object v7, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_CONTENT:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    sget-object v8, Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda9;->INSTANCE:Lcom/project7/localmanager/LocalStoryRuleRegistry$$ExternalSyntheticLambda9;

    const-string v4, "memory-pieces"

    const-string v5, "rewards.items.memoryFrag"

    const-string v6, "reviewed-nonrepeatable;current-week-completion"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalStoryRuleRegistry;->RULES:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 3

    .line 36
    sget-object v0, Lcom/project7/localmanager/LocalStoryRuleRegistry;->RULES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;

    iget-object v2, v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;->phase:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    if-ne v2, p0, :cond_0

    iget-object v1, v1, Lcom/project7/localmanager/LocalStoryRuleRegistry$Rule;->handler:Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;

    invoke-interface {v1, p1, p2, p3}, Lcom/project7/localmanager/LocalStoryRuleRegistry$Handler;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method static pendingTargets(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Set;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalEventCatalog;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventCatalog;->targetCounts:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventCatalog;->targetEffects:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 46
    if-eqz v1, :cond_2

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    goto :goto_1

    .line 48
    :cond_3
    return-object v0
.end method
