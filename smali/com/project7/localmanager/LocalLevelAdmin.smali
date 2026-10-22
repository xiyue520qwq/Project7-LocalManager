.class final Lcom/project7/localmanager/LocalLevelAdmin;
.super Ljava/lang/Object;
.source "LocalLevelAdmin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalEconomyCatalog;ZI)[B
    .locals 5

    .line 36
    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalLevelAdmin;->validate(ZI)V

    .line 37
    const-string v0, "exp"

    const-string v1, "level"

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 38
    invoke-static {p0, v1, p3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0, v0, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 40
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x6e

    if-gt v1, v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2

    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p1, Lcom/project7/localmanager/LocalEconomyCatalog;->levels:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v4, v4, v2

    if-gt v1, v4, :cond_2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/project7/localmanager/LocalEconomyCatalog;->levels:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    aget p2, p2, v2

    if-eq v0, p2, :cond_2

    .line 44
    :cond_1
    new-instance p2, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    invoke-direct {p2, p0}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 45
    invoke-static {p2, p1, p3}, Lcom/project7/localmanager/LocalEconomyEngine;->addExperience(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;I)V

    .line 46
    iget-object p0, p2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    return-object p0

    .line 43
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5f53\u524d\u7b49\u7ea7\u6216\u7ecf\u9a8c\u5f02\u5e38\uff0c\u8bf7\u5148\u4f7f\u7528\u8bbe\u5b9a\u7b49\u7ea7\u4fee\u590d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static grantAllHeroes([BLcom/project7/localmanager/LocalResourceCatalog;)Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;
    .locals 8

    .line 14
    iget-object v0, p1, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 16
    const/4 p0, 0x0

    .line 17
    iget-object v1, p1, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 19
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v3, "hero"

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 21
    add-int/lit8 p0, p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object p1, p1, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {v1, v0, p0, p1}, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;-><init>([BII)V

    return-object v1

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u89d2\u8272\u76ee\u5f55\u4e3a\u7a7a\uff0c\u53d6\u6d88\u53d1\u653e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validate(ZI)V
    .locals 1

    .line 27
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 28
    if-lt p1, v0, :cond_0

    const/16 p0, 0x6e

    if-gt p1, p0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7b49\u7ea7\u8303\u56f4\u4e3a1-110"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_1
    if-lt p1, v0, :cond_2

    const p0, 0x3b9aca00

    if-gt p1, p0, :cond_2

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u589e\u52a0\u7ecf\u9a8c\u8303\u56f4\u4e3a1-1000000000"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
