.class final Lcom/project7/localmanager/LocalTutorialStore$Progress;
.super Ljava/lang/Object;
.source "LocalTutorialStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalTutorialStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Progress"
.end annotation


# instance fields
.field final availableEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final completedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field economyCommit:Ljava/lang/String;

.field final eventCompletions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final eventConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final eventDays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final finishedNewbees:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field inEmergency:Z

.field initPrologue:Z

.field patrolActions:I

.field patrolArea:I

.field patrolCount:I

.field patrolDay:Ljava/lang/String;

.field final patrolEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final patrolFatigue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field patrolFavor:I

.field final patrolFriendly:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final patrolHeroes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final patrolReplays:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field patrolRewardPending:Z

.field final processingEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final processingNewbees:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sandglassActions:I

.field scene:Ljava/lang/String;

.field status:Ljava/lang/String;

.field weekCommit:Ljava/lang/String;

.field weekIndex:I


# direct methods
.method private constructor <init>(Ljava/util/Set;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    .line 94
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventDays:Ljava/util/Map;

    .line 95
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    .line 97
    iput v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    .line 98
    iput-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->economyCommit:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    .line 104
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    .line 121
    iput-object p1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    .line 122
    iput-object p2, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 123
    iput-boolean p3, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    .line 124
    iput-object p4, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 125
    iput-object p5, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    .line 126
    iput-object p6, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    .line 127
    iput-object p7, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    .line 128
    iput-boolean p8, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    .line 129
    iput-object p9, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    .line 130
    iput-object p10, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->scene:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private static addLegacyEvent(Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 281
    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "0"

    goto :goto_0

    .line 285
    :catch_0
    move-exception p0

    goto :goto_1

    .line 281
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 282
    if-eqz p1, :cond_1

    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_1
    :goto_1
    return-void
.end method

.method static completed()Lcom/project7/localmanager/LocalTutorialStore$Progress;
    .locals 12

    .line 144
    new-instance v11, Lcom/project7/localmanager/LocalTutorialStore$Progress;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v8, 0x0

    const-string v9, "city"

    const-string v10, "city"

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/project7/localmanager/LocalTutorialStore$Progress;-><init>(Ljava/util/Set;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method static fresh()Lcom/project7/localmanager/LocalTutorialStore$Progress;
    .locals 12

    .line 134
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 135
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v11, Lcom/project7/localmanager/LocalTutorialStore$Progress;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x1

    const/4 v8, 0x1

    const-string v9, "emergency"

    const-string v10, ""

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/project7/localmanager/LocalTutorialStore$Progress;-><init>(Ljava/util/Set;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method static fromProperties(Ljava/util/Properties;)Lcom/project7/localmanager/LocalTutorialStore$Progress;
    .locals 15

    .line 152
    const-string v0, "availableEvents"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 153
    const-string v0, "processingEvents"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 154
    const-string v0, "completedEvents"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 157
    const-string v0, "schemaVersion"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const-string v0, "availableEvent"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->addLegacyEvent(Ljava/util/Set;Ljava/lang/String;)V

    .line 159
    const-string v0, "processingEvent"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->addLegacyEvent(Ljava/util/Set;Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/16 v2, 0x3e8

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_1
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 166
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 167
    const-string v7, "condition."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 168
    nop

    .line 169
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 170
    invoke-virtual {p0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 168
    invoke-interface {v9, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_2
    goto :goto_0

    .line 174
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_5

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v13

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v5

    .line 176
    :goto_2
    new-instance v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;

    .line 179
    const-string v2, "initPrologue"

    const-string v7, "true"

    invoke-virtual {p0, v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x417

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move v5, v13

    .line 181
    :goto_3
    const-string v2, "processingNewbees"

    invoke-virtual {p0, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    .line 182
    const-string v2, "finishedNewbees"

    invoke-virtual {p0, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 185
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 184
    const-string v10, "inEmergency"

    invoke-virtual {p0, v10, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 186
    if-eqz v0, :cond_7

    const-string v0, "emergency"

    goto :goto_4

    :cond_7
    const-string v0, "city"

    :goto_4
    const-string v2, "status"

    invoke-virtual {p0, v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 187
    const-string v0, "scene"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v2, v14

    invoke-direct/range {v2 .. v12}, Lcom/project7/localmanager/LocalTutorialStore$Progress;-><init>(Ljava/util/Set;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "patrol.count"

    invoke-static {p0, v0, v13}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->integer(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    .line 190
    const-string v0, "patrol.area"

    invoke-static {p0, v0, v13}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->integer(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    .line 191
    const-string v0, "patrol.day"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    const-string v3, "event.day."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventDays:Ljava/util/Map;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_8
    const-string v3, "event.completed."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 195
    invoke-static {p0, v2, v13}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->integer(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v3

    .line 196
    if-lez v3, :cond_9

    iget-object v4, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_9
    goto :goto_5

    .line 199
    :cond_a
    const-string v0, "patrol.actions"

    const/4 v2, -0x1

    invoke-static {p0, v0, v2}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->integer(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    .line 200
    const-string v0, "patrol.sandglass"

    invoke-static {p0, v0, v2}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->integer(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    .line 201
    const-string v0, "economy.commit"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->economyCommit:Ljava/lang/String;

    .line 202
    const-string v0, "week.commit"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    .line 203
    const-string v0, "week.index"

    invoke-static {p0, v0, v13}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->integer(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    .line 204
    const-string v0, "patrol.favor"

    invoke-static {p0, v0, v13}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->integer(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFavor:I

    .line 205
    nop

    .line 206
    const-string v0, "patrol.rewardPending"

    const-string v2, "false"

    invoke-virtual {p0, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    .line 207
    iget-object v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    const-string v2, "patrol.heroes"

    invoke-virtual {p0, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 208
    iget-object v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    const-string v2, "patrol.events"

    invoke-virtual {p0, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    iget-object v0, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    const-string v2, "patrol.replays"

    invoke-virtual {p0, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    const/4 v2, 0x2

    const-string v3, "patrol.fatigue."

    const-string v4, "patrol.friendly."

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    move v5, v13

    :goto_7
    if-ge v5, v2, :cond_d

    aget-object v6, v4, v5

    .line 212
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 214
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 215
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    goto :goto_8

    .line 216
    :cond_b
    iget-object v6, v14, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    :goto_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p0, v1, v13}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->integer(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_9

    .line 217
    :catch_0
    move-exception v6

    .line 211
    :cond_c
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 222
    :cond_d
    goto :goto_6

    .line 223
    :cond_e
    return-object v14
.end method

.method private static integer(Ljava/util/Properties;Ljava/lang/String;I)I
    .locals 1

    .line 228
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 229
    :catch_0
    move-exception p0

    .line 230
    return p2
.end method

.method private static join(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 310
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 311
    invoke-static {v0}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->joinOrdered(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static joinOrdered(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 318
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$recordCondition$0(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 235
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method private static parseSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 292
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 295
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 297
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 298
    if-eqz v3, :cond_1

    .line 299
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_1
    goto :goto_1

    .line 301
    :catch_0
    move-exception v3

    .line 295
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_2
    return-object v0

    .line 293
    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method recordCondition(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    sget-object v1, Lcom/project7/localmanager/LocalTutorialStore$Progress$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalTutorialStore$Progress$$ExternalSyntheticLambda0;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 236
    return-void
.end method

.method toProperties()Ljava/util/Properties;
    .locals 5

    .line 239
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 240
    const-string v1, "schemaVersion"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v1}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->join(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "availableEvents"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v1}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->join(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processingEvents"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 243
    iget-boolean v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "initPrologue"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v1}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->joinOrdered(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "completedEvents"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event.completed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {v1}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->join(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processingNewbees"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-static {v1}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->join(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "finishedNewbees"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    iget-boolean v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "inEmergency"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    const-string v3, "status"

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->scene:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const-string v1, "scene"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    iget v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patrol.count"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    iget v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patrol.area"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    const-string v2, "patrol.day"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventDays:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event.day."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 257
    :cond_3
    iget v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patrol.actions"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    iget v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patrol.sandglass"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->economyCommit:Ljava/lang/String;

    const-string v2, "economy.commit"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    const-string v2, "week.commit"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    iget v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "week.index"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    iget v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFavor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patrol.favor"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    iget-boolean v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patrol.rewardPending"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-static {v1}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->join(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patrol.heroes"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-static {v1}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->join(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patrol.events"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-static {v1}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->join(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patrol.replays"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "patrol.fatigue."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    goto :goto_3

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "patrol.friendly."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    goto :goto_4

    .line 273
    :cond_5
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "condition."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v2}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->join(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    goto :goto_5

    .line 276
    :cond_6
    return-object v0
.end method
