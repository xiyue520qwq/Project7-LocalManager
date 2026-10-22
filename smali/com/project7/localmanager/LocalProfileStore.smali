.class final Lcom/project7/localmanager/LocalProfileStore;
.super Ljava/lang/Object;
.source "LocalProfileStore.java"

# interfaces
.implements Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;


# static fields
.field private static final PROFILE_LOCK:Ljava/lang/Object;


# instance fields
.field private final activities:Lcom/project7/localmanager/LocalActivityStore;

.field private commerceCatalog:Lcom/project7/localmanager/LocalCommerceCatalog;

.field private constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

.field private final context:Landroid/content/Context;

.field private dailyCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

.field private economyCatalog:Lcom/project7/localmanager/LocalEconomyCatalog;

.field private eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

.field private featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

.field private final fullRefreshTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private homeCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

.field private final profilesDirectory:Ljava/io/File;

.field private resourceCatalog:Lcom/project7/localmanager/LocalResourceCatalog;

.field private weekCatalog:Lcom/project7/localmanager/LocalWeekCatalog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->fullRefreshTimes:Ljava/util/Map;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "profiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    .line 57
    new-instance v0, Lcom/project7/localmanager/LocalActivityStore;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/project7/localmanager/LocalActivityStore;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->activities:Lcom/project7/localmanager/LocalActivityStore;

    .line 58
    return-void
.end method

.method private daily()Lcom/project7/localmanager/LocalFeatureCatalog;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->dailyCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "daily.tsv"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->dailyCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->dailyCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    return-object v0
.end method

.method private economy()Lcom/project7/localmanager/LocalEconomyCatalog;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->economyCatalog:Lcom/project7/localmanager/LocalEconomyCatalog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/project7/localmanager/LocalEconomyCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "economy.tsv"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalEconomyCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->economyCatalog:Lcom/project7/localmanager/LocalEconomyCatalog;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->economyCatalog:Lcom/project7/localmanager/LocalEconomyCatalog;

    return-object v0
.end method

.method private events()Lcom/project7/localmanager/LocalEventCatalog;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalEventCatalog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->eventCatalog:Lcom/project7/localmanager/LocalEventCatalog;

    return-object v0
.end method

.method private features()Lcom/project7/localmanager/LocalFeatureCatalog;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "features.tsv"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    .line 41
    iget-object v0, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    new-instance v1, Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "personal.tsv"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iget-object v1, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 42
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    new-instance v1, Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "growth.tsv"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iget-object v1, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 43
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    new-instance v1, Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "treasure.tsv"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iget-object v1, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    new-instance v1, Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "suppression.tsv"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iget-object v1, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    new-instance v1, Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "intelligence.tsv"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iget-object v1, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 46
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    new-instance v1, Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "city_services.tsv"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iget-object v1, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    new-instance v1, Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "achievements.tsv"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iget-object v1, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->home()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v0

    iget-object v0, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "HS:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v2, v2, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->featureCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    return-object v0
.end method

.method private home()Lcom/project7/localmanager/LocalFeatureCatalog;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->homeCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/project7/localmanager/LocalFeatureCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "home.tsv"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->homeCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->homeCatalog:Lcom/project7/localmanager/LocalFeatureCatalog;

    return-object v0
.end method

.method static synthetic lambda$syncSupplyChange$2(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Z
    .locals 1

    .line 613
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v0, "get_city_data_reply"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$updateEconomy$0(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Z
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "updateCurFatigueValue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    .line 489
    const-string v1, "updateFriendlyValue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v0, "get_city_data_reply"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 488
    :goto_1
    return p0
.end method

.method static synthetic lambda$updateEconomy$1(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Z
    .locals 1

    .line 509
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v0, "syncAllIntelligence"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static readAll(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 672
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array v1, p0, [B

    .line 673
    const/4 v2, 0x0

    .line 674
    :goto_0
    if-ge v2, p0, :cond_1

    .line 675
    sub-int v3, p0, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 676
    if-ltz v3, :cond_0

    .line 679
    add-int/2addr v2, v3

    .line 680
    goto :goto_0

    .line 677
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v1, "truncated profile file"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    :cond_1
    nop

    .line 682
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 681
    return-object v1

    .line 671
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private readTemplate(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    const-string v0, "hakopania"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 665
    const-string p1, "hakopania.bson"

    goto :goto_0

    .line 666
    :cond_0
    const-string p1, "new_player.bson"

    .line 667
    :goto_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/project7/localmanager/AssetData;->readAll(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private static syncSupplyChange([B[BLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/List<",
            "Lcom/project7/localmanager/LocalResourceEngine$Reply;",
            ">;)V"
        }
    .end annotation

    .line 607
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "acr"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 608
    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 609
    invoke-interface {p0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    .line 611
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "get_city_data_reply"

    if-ge v3, v4, :cond_3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v4, v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 612
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v4, v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v6, "updateDay"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 611
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 612
    :cond_2
    :goto_1
    move p0, v3

    .line 613
    :cond_3
    sget-object v3, Lcom/project7/localmanager/LocalProfileStore$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalProfileStore$$ExternalSyntheticLambda0;

    invoke-interface {p2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 614
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "cd"

    aput-object v6, v4, v2

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    invoke-direct {v3, v5, p1}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {p2, p0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 615
    new-instance p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "clearActionReward"

    goto :goto_2

    :cond_4
    const-string p1, "gainActionReward"

    :goto_2
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-direct {p0, p1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    return-void
.end method

.method private weeks()Lcom/project7/localmanager/LocalWeekCatalog;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->weekCatalog:Lcom/project7/localmanager/LocalWeekCatalog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/project7/localmanager/LocalWeekCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "weeks.tsv"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalWeekCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->weekCatalog:Lcom/project7/localmanager/LocalWeekCatalog;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->weekCatalog:Lcom/project7/localmanager/LocalWeekCatalog;

    return-object v0
.end method

.method private static writeAtomic(Ljava/io/File;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 687
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 688
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 689
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 692
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 695
    nop

    .line 696
    return-void

    .line 693
    :catch_0
    move-exception p0

    .line 694
    new-instance p1, Ljava/io/IOException;

    const-string v0, "cannot atomically commit profile file"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 687
    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method declared-synchronized adjustCommanderLevel(Ljava/lang/String;ZI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 630
    :try_start_0
    sget-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 631
    :try_start_1
    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalLevelAdmin;->validate(ZI)V

    .line 632
    invoke-static {}, Lcom/project7/localmanager/GatewayService;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 633
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 634
    new-instance v1, Lcom/project7/localmanager/LocalAccountStore;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalAccountStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/project7/localmanager/LocalAccountStore;->listAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 636
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bson"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 637
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 638
    invoke-static {v1}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object p1

    .line 639
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->economy()Lcom/project7/localmanager/LocalEconomyCatalog;

    move-result-object v2

    invoke-static {p1, v2, p2, p3}, Lcom/project7/localmanager/LocalLevelAdmin;->apply([BLcom/project7/localmanager/LocalEconomyCatalog;ZI)[B

    move-result-object p2

    .line 640
    invoke-static {}, Lcom/project7/localmanager/GatewayService;->isRunning()Z

    move-result p3

    if-nez p3, :cond_1

    .line 641
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v1, p2}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 642
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    .line 640
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u7f51\u5173\u5df2\u542f\u52a8\uff0c\u53d6\u6d88\u7b49\u7ea7\u8c03\u6574\uff0c\u8bf7\u505c\u6b62\u540e\u91cd\u8bd5"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 637
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u8bf7\u5148\u767b\u5f55\u8be5\u8d26\u53f7\u4e00\u6b21\uff0c\u751f\u6210\u65b0\u624b\u5b58\u6863\u540e\u518d\u8c03\u6574"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 635
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u8d26\u53f7\u4e0d\u5b58\u5728\u6216\u5df2\u5220\u9664"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 632
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u8bf7\u5148\u9000\u51fa\u6e38\u620f\u5e76\u505c\u6b62\u672c\u5730\u7f51\u5173"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 643
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 629
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clientCompatibility()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/project7/localmanager/LocalCommerceCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "commerce.tsv"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceCatalog;-><init>(Ljava/io/InputStream;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v2, "event"

    const-string v3, "combat"

    const-string v4, "suppression"

    const-string v5, "party"

    const-string v6, "shop"

    const-string v7, "star"

    const-string v8, "draw"

    const-string v9, "local_content"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    .line 75
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "client_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v8, "local_content"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ".py"

    goto :goto_1

    :cond_0
    const-string v8, "_compat.py"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-static {v6, v7}, Lcom/project7/localmanager/AssetData;->readAll(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalClientCompatibility;->module(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/project7/localmanager/LocalProfileStore;->activities:Lcom/project7/localmanager/LocalActivityStore;

    invoke-virtual {v3, v0}, Lcom/project7/localmanager/LocalActivityStore;->clientSource(Lcom/project7/localmanager/LocalCommerceCatalog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    .line 80
    const-string v5, "client_activity_compat.py"

    invoke-static {v4, v5}, Lcom/project7/localmanager/AssetData;->readAll(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v3, "activity"

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalClientCompatibility;->module(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "import com.data.cdata.chouka_info as _q7_hci; import com.data.cdata.furniture_delivery as _q7_hfd; import com.utils.runtime_mapping_table as _q7_hmt; _q7_hci.data=dict(_q7_hci.data); _q7_hci.data[162]=dict(_q7_hci.data[162]); _q7_hfd.data=dict(_q7_hfd.data); _q7_hfd.data[162]=dict(_q7_hfd.data[162]); _q7_hci.data[162].update({\'begin_time\':(2019,9,11,7,0,5,0,0,0),\'end_time\':(2035,9,11,7,0,5,0,0,0)}); _q7_hfd.data[162].update({\'begin_time\':_q7_hci.data[162][\'begin_time\'],\'end_time\':_q7_hci.data[162][\'end_time\']}); _q7_hmt.reload(); _q7_hmt._CELL_MAPPING_CONFIG.setdefault(\'chouka_info\',{}).setdefault(162,{}).update({\'begin_time\':_q7_hci.data[162][\'begin_time\'],\'end_time\':_q7_hci.data[162][\'end_time\']})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized delete(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 238
    :try_start_0
    sget-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    :try_start_1
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bson"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 242
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 237
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ensureHero(Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 187
    :try_start_0
    sget-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bson"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 193
    invoke-static {v1}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object p1

    .line 194
    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->withHero([BI)[B

    move-result-object p2

    .line 195
    if-ne p2, p1, :cond_0

    .line 196
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 198
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->normalize([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object p1

    .line 199
    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 200
    const/4 p1, 0x1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 191
    :cond_1
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "profile does not exist"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized grantAllHeroes(Ljava/lang/String;)Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 647
    :try_start_0
    sget-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 648
    :try_start_1
    invoke-static {}, Lcom/project7/localmanager/GatewayService;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 649
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 650
    new-instance v1, Lcom/project7/localmanager/LocalAccountStore;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalAccountStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/project7/localmanager/LocalAccountStore;->listAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 652
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bson"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 654
    invoke-static {v1}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object p1

    .line 655
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalLevelAdmin;->grantAllHeroes([BLcom/project7/localmanager/LocalResourceCatalog;)Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;

    move-result-object v2

    .line 656
    new-instance v3, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;

    iget-object v4, v2, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;->profile:[B

    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->normalize([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v4

    iget v5, v2, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;->added:I

    iget v2, v2, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;->total:I

    invoke-direct {v3, v4, v5, v2}, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;-><init>([BII)V

    .line 657
    invoke-static {}, Lcom/project7/localmanager/GatewayService;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 658
    iget-object v2, v3, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;->profile:[B

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v3, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;->profile:[B

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 659
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 657
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string v1, "\u7f51\u5173\u5df2\u542f\u52a8\uff0c\u53d6\u6d88\u89d2\u8272\u53d1\u653e\uff0c\u8bf7\u505c\u6b62\u540e\u91cd\u8bd5"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 653
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v1, "\u8bf7\u5148\u767b\u5f55\u8be5\u8d26\u53f7\u4e00\u6b21\uff0c\u751f\u6210\u65b0\u624b\u5b58\u6863\u540e\u518d\u53d1\u653e"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 651
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "\u8d26\u53f7\u4e0d\u5b58\u5728\u6216\u5df2\u5220\u9664"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 648
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "\u8bf7\u5148\u9000\u51fa\u6e38\u620f\u5e76\u505c\u6b62\u672c\u5730\u7f51\u5173"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 660
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 646
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 91
    :try_start_0
    sget-object v8, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 93
    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "cannot create profile directory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    :goto_0
    new-instance v10, Ljava/io/File;

    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bson"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v2

    .line 100
    const/4 v11, 0x1

    xor-int/lit8 v12, v2, 0x1

    if-nez v12, :cond_2

    .line 101
    invoke-static {v10}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object v2

    move-object v13, v2

    goto :goto_1

    .line 103
    :cond_2
    invoke-direct {v1, v9}, Lcom/project7/localmanager/LocalProfileStore;->readTemplate(Ljava/lang/String;)[B

    move-result-object v2

    move-object v13, v2

    .line 105
    :goto_1
    nop

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v14, 0x3e8

    div-long/2addr v2, v14

    long-to-int v2, v2

    .line 107
    if-eqz v12, :cond_3

    .line 108
    invoke-static {v13, v9, v2}, Lcom/project7/localmanager/BsonLite;->withAccountIdentity([BLjava/lang/String;I)[B

    move-result-object v2

    goto :goto_2

    .line 109
    :cond_3
    invoke-static {v13, v9, v2}, Lcom/project7/localmanager/BsonLite;->withAccountCredentials([BLjava/lang/String;I)[B

    move-result-object v2

    .line 110
    :goto_2
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->withRequiredClientDefaults([B)[B

    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/project7/localmanager/LocalImageAvatar;->approveStored([B)[B

    move-result-object v2

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/LocalDailyEngine;->refreshExam([BJ)[B

    move-result-object v2

    .line 113
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->daily()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/project7/localmanager/LocalLunhuiEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;J)[B

    move-result-object v2

    .line 114
    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalWeekEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 115
    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 116
    iget-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    if-nez v3, :cond_4

    new-instance v3, Lcom/project7/localmanager/LocalConstructionCatalog;

    iget-object v4, v1, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "construction.tsv"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/project7/localmanager/LocalConstructionCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    .line 117
    :cond_4
    iget-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    invoke-static {v2, v3, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->repairIncome([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 118
    iget-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    invoke-static {v2, v3, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->restoreCentralBase([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 119
    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->refreshGuideState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/project7/localmanager/LocalIntelligenceEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/project7/localmanager/LocalIntelligenceEngine;->recoverEvents([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 122
    const-string v3, "role"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v11, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_6

    :cond_5
    const-string v4, "setRoleIdRequest"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "r"

    aput-object v7, v5, v6

    aput-object v3, v5, v11

    .line 124
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 123
    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/LocalProfileEngine;->apply([BLjava/lang/String;[B)Lcom/project7/localmanager/LocalProfileEngine$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/project7/localmanager/LocalProfileEngine$Result;->profile:[B

    .line 125
    :cond_6
    invoke-static {v2, v0, v9}, Lcom/project7/localmanager/BsonLite;->withTutorialHeroes([BLcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;)[B

    move-result-object v2

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->repairHeroDefaults([BLcom/project7/localmanager/LocalResourceCatalog;)[B

    move-result-object v2

    .line 127
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->normalize([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v2

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->home()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/LocalHomeEngine;->initialize([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalDrawCalendar;->repairSelection([BLcom/project7/localmanager/LocalResourceCatalog;)[B

    move-result-object v2

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/LocalCommerceEngine;->refreshStoreLimits([BJ)[B

    move-result-object v2

    .line 131
    invoke-static {v2}, Lcom/project7/localmanager/LocalAccountFeatures;->refreshRecharge([B)[B

    move-result-object v2

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v14

    long-to-int v3, v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalGiftEngine;->refresh([BI)[B

    move-result-object v2

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/LocalServiceEngine;->recover([BJ)[B

    move-result-object v2

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/project7/localmanager/LocalServiceEngine;->effects([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->capture(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B

    move-result-object v2

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->weeks()Lcom/project7/localmanager/LocalWeekCatalog;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->economy()Lcom/project7/localmanager/LocalEconomyCatalog;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalWeekEngine;->endings([BLcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Z)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->weeks()Lcom/project7/localmanager/LocalWeekCatalog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalWeekEngine;->refreshDifficulty([BLcom/project7/localmanager/LocalWeekCatalog;)[B

    move-result-object v2

    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalAchievementEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v2

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v14

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->refreshCounters([BJ)[B

    move-result-object v2

    .line 139
    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 140
    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalSuppressionEngine;->recoverHistory([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 141
    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalPatrolEngine;->alignDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 142
    invoke-static {v2}, Lcom/project7/localmanager/LocalEconomyEngine;->refreshCanteen([B)[B

    move-result-object v2

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/project7/localmanager/LocalSouvenirEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 144
    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalSouvenirEngine;->recoverShopUnlock([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 145
    invoke-static {v2}, Lcom/project7/localmanager/LocalEconomyEngine;->clearEmptyDailySettlement([B)[B

    move-result-object v2

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v0, v4, v5}, Lcom/project7/localmanager/LocalPersonalEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;J)[B

    move-result-object v2

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalAchievementEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v2

    .line 148
    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v14, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->weeks()Lcom/project7/localmanager/LocalWeekCatalog;

    move-result-object v6

    move-object v2, v14

    move-object v3, v13

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalCgEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 150
    iget-object v2, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 151
    if-eqz v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    const-string v6, "local_notice.txt"

    .line 152
    invoke-static {v5, v6}, Lcom/project7/localmanager/AssetData;->readAll(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 151
    invoke-static {v2, v3, v4, v11}, Lcom/project7/localmanager/LocalMailEngine;->enqueueWelcome([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;Z)[B

    move-result-object v2

    .line 153
    :cond_7
    invoke-static {v2}, Lcom/project7/localmanager/LocalTreasureMax;->fix([B)[B

    move-result-object v2

    invoke-static {v10, v2}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 154
    iget-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->fullRefreshTimes:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized resources()Lcom/project7/localmanager/LocalResourceCatalog;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->resourceCatalog:Lcom/project7/localmanager/LocalResourceCatalog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/project7/localmanager/LocalResourceCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "resources.tsv"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalResourceCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->resourceCatalog:Lcom/project7/localmanager/LocalResourceCatalog;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalProfileStore;->resourceCatalog:Lcom/project7/localmanager/LocalResourceCatalog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized savePlayerName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 207
    :try_start_0
    sget-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    :try_start_1
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bson"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    nop

    .line 214
    invoke-static {v1}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object p1

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 213
    invoke-static {p1, p2, v2}, Lcom/project7/localmanager/BsonLite;->withPlayerName([BLjava/lang/String;I)[B

    move-result-object p1

    .line 218
    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 219
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "profile does not exist"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sendSystemMail(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 620
    :try_start_0
    sget-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 621
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/project7/localmanager/LocalProfileStore;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    .line 622
    new-instance p2, Ljava/io/File;

    iget-object v1, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bson"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 623
    invoke-static {p2}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v1

    invoke-static {p1, v1, p3, p4, p5}, Lcom/project7/localmanager/LocalMailEngine;->enqueue([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    .line 624
    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 625
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 625
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 619
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    sget-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 165
    iget-object v4, p0, Lcom/project7/localmanager/LocalProfileStore;->fullRefreshTimes:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 168
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-ltz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bson"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/project7/localmanager/LocalProfileStore;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 172
    :cond_1
    :try_start_2
    invoke-static {v4}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object p1

    .line 173
    invoke-static {p1, v2, v3}, Lcom/project7/localmanager/LocalServiceEngine;->recover([BJ)[B

    move-result-object v1

    .line 174
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->home()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-static {v1, v2, v5, v6, v3}, Lcom/project7/localmanager/LocalHomeDailyEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;JZ)[B

    move-result-object v1

    .line 175
    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 176
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->home()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v1

    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v5

    invoke-static {v2, v1, v5, v6}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;J)V

    .line 177
    iget-object v1, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 178
    invoke-static {v1, p2}, Lcom/project7/localmanager/LocalPatrolEngine;->alignDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 179
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 180
    :cond_2
    invoke-static {v1, p2}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 169
    :cond_3
    :goto_0
    :try_start_3
    invoke-virtual {p0, v1, p2}, Lcom/project7/localmanager/LocalProfileStore;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 181
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 161
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCommerce(Ljava/lang/String;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalCommerceEngine$Result;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 248
    :try_start_0
    sget-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    :try_start_1
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bson"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 252
    const-string p1, "queryItemDetail"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 253
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->commerceCatalog:Lcom/project7/localmanager/LocalCommerceCatalog;

    if-nez v2, :cond_0

    new-instance v2, Lcom/project7/localmanager/LocalCommerceCatalog;

    iget-object v3, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    .line 254
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "commerce.tsv"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/project7/localmanager/LocalCommerceCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->commerceCatalog:Lcom/project7/localmanager/LocalCommerceCatalog;

    .line 255
    :cond_0
    invoke-static {v1}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object v2

    .line 256
    if-eqz p1, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/LocalCommerceEngine;->refreshStoreLimits([BJ)[B

    move-result-object p1

    move-object v3, p1

    .line 257
    :goto_0
    iget-object v4, p0, Lcom/project7/localmanager/LocalProfileStore;->commerceCatalog:Lcom/project7/localmanager/LocalCommerceCatalog;

    const/4 v7, 0x0

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long v8, v5, v8

    iget-object p1, p0, Lcom/project7/localmanager/LocalProfileStore;->activities:Lcom/project7/localmanager/LocalActivityStore;

    invoke-virtual {p1}, Lcom/project7/localmanager/LocalActivityStore;->snapshot()Ljava/util/Map;

    move-result-object v10

    .line 257
    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v3 .. v10}, Lcom/project7/localmanager/LocalCommerceEngine;->apply([BLcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/String;[BZJLjava/util/Map;)Lcom/project7/localmanager/LocalCommerceEngine$Result;

    move-result-object p1

    .line 259
    iget-object p3, p1, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v2, p3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->moneyTransition([B[B)[B

    move-result-object p3

    iput-object p3, p1, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 260
    const-string p3, "buyMoney"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    const-string p3, "showMessageStr"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 261
    iget-object p2, p1, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {p2}, Lcom/project7/localmanager/LocalAccountFeatures;->refreshRecharge([B)[B

    move-result-object p2

    iput-object p2, p1, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 262
    const-string p2, "rookieRechargeSyncData"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "d"

    aput-object v4, p3, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    const-string v5, "sma"

    .line 263
    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "rcd"

    .line 262
    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    aput-object v4, p3, v3

    invoke-static {p3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 265
    :cond_2
    iget-object p2, p1, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    if-eq p2, v2, :cond_3

    iget-object p2, p1, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v1, p2}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 266
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 251
    :cond_4
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "profile does not exist"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateEconomy(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalEconomyEngine$Result;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    monitor-enter p0

    .line 459
    :try_start_0
    sget-object v10, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    :try_start_1
    new-instance v11, Ljava/io/File;

    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bson"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 462
    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->economyCatalog:Lcom/project7/localmanager/LocalEconomyCatalog;

    if-nez v2, :cond_0

    new-instance v2, Lcom/project7/localmanager/LocalEconomyCatalog;

    iget-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "economy.tsv"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/project7/localmanager/LocalEconomyCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->economyCatalog:Lcom/project7/localmanager/LocalEconomyCatalog;

    .line 463
    :cond_0
    invoke-static {v11}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object v12

    .line 465
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalConstructionEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    if-nez v2, :cond_1

    new-instance v2, Lcom/project7/localmanager/LocalConstructionCatalog;

    iget-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "construction.tsv"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/project7/localmanager/LocalConstructionCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    .line 467
    :cond_1
    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    invoke-static {v12, v2, v9, v0, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->apply([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v2

    goto :goto_0

    .line 468
    :cond_2
    const-string v2, "battleYazhiAsk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->economyCatalog:Lcom/project7/localmanager/LocalEconomyCatalog;

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v5

    .line 468
    move-object v2, v12

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalSuppressionEngine;->apply([BLcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v2

    goto :goto_0

    .line 470
    :cond_3
    iget-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->economyCatalog:Lcom/project7/localmanager/LocalEconomyCatalog;

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v4

    move-object v2, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalEconomyEngine;->apply([BLcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v2

    .line 471
    :goto_0
    nop

    .line 472
    iget-boolean v3, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    if-eqz v3, :cond_4

    if-eqz v9, :cond_4

    .line 473
    invoke-virtual/range {p4 .. p4}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->toProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->fromProperties(Ljava/util/Properties;)Lcom/project7/localmanager/LocalTutorialStore$Progress;

    move-result-object v3

    .line 474
    iget-object v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalEconomyEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    goto :goto_1

    .line 476
    :cond_4
    move-object v3, v9

    :goto_1
    iget-boolean v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    if-eqz v4, :cond_c

    const-string v4, "incDayWhenNoActionVal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 477
    iget-object v4, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    if-nez v4, :cond_5

    new-instance v4, Lcom/project7/localmanager/LocalConstructionCatalog;

    iget-object v13, v1, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, "construction.tsv"

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v4, v13}, Lcom/project7/localmanager/LocalConstructionCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v4, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    .line 478
    :cond_5
    iget-object v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v4

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v13

    iget-object v14, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    invoke-static {v12, v4, v13, v14, v3}, Lcom/project7/localmanager/LocalIntelligenceEffects;->advanceDay([B[BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v13

    .line 480
    iput-object v13, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 481
    const-string v14, "heromgr"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    const-string v15, "hrs"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 482
    const-string v6, "0"

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    const-string v5, "1"

    invoke-static {v15, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 483
    iget-object v15, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->fatigue:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v16, v14

    const-string v14, "cf"

    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v15, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v7, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->friendly:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v14, "ef"

    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    move-object/from16 v14, v16

    goto :goto_2

    .line 486
    :cond_6
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalEconomyEngine;->commit(Lcom/project7/localmanager/LocalEconomyEngine$Result;I)V

    .line 487
    iget-object v5, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalEconomyEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 488
    iget-object v5, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    sget-object v6, Lcom/project7/localmanager/LocalProfileStore$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalProfileStore$$ExternalSyntheticLambda1;

    invoke-interface {v5, v6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 490
    iget-object v5, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 491
    const/4 v6, 0x0

    :goto_3
    iget-object v7, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    const-string v7, "updateDay"

    iget-object v14, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v14, v14, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v6

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 492
    :cond_8
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 493
    const-string v7, "hrs"

    const-string v14, "bhrs"

    filled-new-array {v7, v14}, [Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    :goto_5
    const/4 v15, 0x2

    if-ge v14, v15, :cond_a

    aget-object v15, v7, v14

    .line 494
    move-object/from16 v16, v7

    const-string v7, "heromgr"

    invoke-static {v13, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 495
    move-object/from16 v17, v7

    const-string v7, "0"

    invoke-static {v15, v7}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7

    const-string v9, "1"

    invoke-static {v15, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 496
    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    move-object/from16 v18, v11

    const-string v11, "updateCurFatigueValue"

    const-string v8, "cf"

    invoke-static {v9, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v8

    invoke-direct {v15, v11, v8}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v11, "updateFriendlyValue"

    const-string v15, "ef"

    invoke-static {v9, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    invoke-static {v7, v9}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v7

    invoke-direct {v8, v11, v7}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v7, v17

    move-object/from16 v11, v18

    goto :goto_6

    .line 493
    :cond_9
    move-object/from16 v18, v11

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v7, v16

    goto :goto_5

    .line 499
    :cond_a
    move-object/from16 v18, v11

    const-string v7, "city"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v7, "areas"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v7, "city"

    .line 500
    invoke-static {v13, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const-string v8, "areas"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 499
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_b

    .line 501
    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v7, "get_all_area_info_reply"

    const/4 v8, 0x1

    invoke-static {v8, v3, v13}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v9

    invoke-direct {v4, v7, v9}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_b
    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v7, "get_city_data_reply"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const-string v8, "cd"

    const/4 v11, 0x0

    aput-object v8, v9, v11

    const-string v8, "city"

    invoke-static {v13, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v9, v11

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v4, v5, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_7

    .line 476
    :cond_c
    move-object/from16 v18, v11

    .line 505
    :goto_7
    iget-boolean v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    if-eqz v4, :cond_f

    .line 506
    iget-object v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/project7/localmanager/LocalIntelligenceEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v4

    iput-object v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 507
    const-string v4, "intelligence"

    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    iget-object v5, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v6, "intelligence"

    .line 508
    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 507
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_f

    .line 509
    iget-object v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    sget-object v5, Lcom/project7/localmanager/LocalProfileStore$$ExternalSyntheticLambda2;->INSTANCE:Lcom/project7/localmanager/LocalProfileStore$$ExternalSyntheticLambda2;

    invoke-interface {v4, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 510
    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v5, "syncAllIntelligence"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "is"

    const/4 v8, 0x0

    aput-object v6, v7, v8

    iget-object v6, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v8, "intelligence"

    .line 511
    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 512
    iget-object v5, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 513
    const/4 v6, 0x0

    :goto_8
    iget-object v7, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    const-string v7, "updateDay"

    iget-object v8, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v8, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v5, v6

    goto :goto_9

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 514
    :cond_e
    :goto_9
    iget-object v6, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 517
    :cond_f
    iget-object v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/project7/localmanager/LocalSouvenirEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 518
    iget-boolean v3, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    if-eqz v3, :cond_13

    iget-boolean v3, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    if-nez v3, :cond_13

    .line 519
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalConstructionEngine;->handles(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "playerDestroyBuilding"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 520
    const-string v3, "aid"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 521
    iget-object v5, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v6, "city"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "areas"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "area_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const-string v5, "lv"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 522
    iget-object v5, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v6

    const-string v7, "areaBuildRequest"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "build"

    goto :goto_a

    :cond_10
    const-string v0, "develop"

    :goto_a
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "heroes"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "hs"

    .line 523
    invoke-static {v4, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "bid"

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const/4 v8, 0x3

    const-string v9, "bi"

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x4

    const-string v8, "dlevel"

    aput-object v8, v7, v4

    const/4 v4, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 522
    invoke-static {v5, v6, v0, v3}, Lcom/project7/localmanager/LocalAchievementEngine;->record([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 525
    :cond_11
    const-string v0, "q7BattleReceipts"

    invoke-static {v12, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 526
    iget-object v3, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v4, "q7BattleReceipts"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 527
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    :goto_c
    goto :goto_b

    .line 528
    :cond_12
    iget-object v5, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v6

    const-string v7, "battle"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const-string v11, "heroes"

    const/4 v13, 0x0

    aput-object v11, v9, v13

    .line 529
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v11, "h"

    invoke-static {v4, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v11, 0x1

    aput-object v4, v9, v11

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 528
    invoke-static {v5, v6, v7, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->record([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    goto :goto_c

    .line 531
    :cond_13
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v3, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-direct {v0, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v12, v3, v4}, Lcom/project7/localmanager/LocalNewAchievementEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 533
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v3, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 534
    iget-object v3, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 535
    iget-object v0, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    iget-object v3, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-static {v12, v0, v3}, Lcom/project7/localmanager/LocalProfileStore;->syncSupplyChange([B[BLjava/util/List;)V

    .line 536
    iget-object v0, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    if-eq v0, v12, :cond_14

    iget-object v0, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    move-object/from16 v3, v18

    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 537
    :cond_14
    iget-object v0, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    move-object/from16 v3, p4

    invoke-static {v0, v3, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->reconcile([BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEconomyEngine$Result;)V

    .line 538
    iget-object v0, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/LocalIntelligenceEngine;->recoverEvents([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 539
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 461
    :cond_15
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "profile does not exist"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 458
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProfile(Ljava/lang/String;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalProfileEngine$Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 225
    :try_start_0
    sget-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    :try_start_1
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bson"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    invoke-static {v1}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object p1

    .line 230
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {p1, p2, p3, v2}, Lcom/project7/localmanager/LocalProfileEngine;->apply([BLjava/lang/String;[BLcom/project7/localmanager/LocalFeatureCatalog;)Lcom/project7/localmanager/LocalProfileEngine$Result;

    move-result-object p2

    .line 232
    iget-object p3, p2, Lcom/project7/localmanager/LocalProfileEngine$Result;->profile:[B

    if-eq p3, p1, :cond_0

    iget-object p1, p2, Lcom/project7/localmanager/LocalProfileEngine$Result;->profile:[B

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 233
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    .line 228
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "profile does not exist"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateResources(Ljava/lang/String;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 546
    :try_start_0
    sget-object v0, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 547
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bson"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 549
    invoke-static {v1}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object p1

    .line 551
    invoke-static {p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, p3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 553
    :cond_0
    invoke-static {p2}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, p3}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 555
    :cond_1
    invoke-static {p2}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, p3}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 557
    :cond_2
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/project7/localmanager/LocalSouvenirEngine;->handles(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 558
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalSouvenirEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 559
    :cond_3
    invoke-static {p2}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 560
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {p1, v2, p3}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 561
    :cond_4
    invoke-static {p2}, Lcom/project7/localmanager/LocalMemoryExchangeEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 562
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v2

    invoke-static {p1, v2, p3}, Lcom/project7/localmanager/LocalMemoryExchangeEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 563
    :cond_5
    invoke-static {p2}, Lcom/project7/localmanager/LocalTreasureUpgradeEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 564
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {p1, v2, p2, p3}, Lcom/project7/localmanager/LocalTreasureUpgradeEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 565
    :cond_6
    invoke-static {p2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 566
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v2

    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, p3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 567
    :cond_7
    invoke-static {p2}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 568
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {p1, v2, p2, p3}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 569
    :cond_8
    invoke-static {p2}, Lcom/project7/localmanager/LocalPersonalEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 570
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lcom/project7/localmanager/LocalPersonalEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 571
    :cond_9
    invoke-static {p2}, Lcom/project7/localmanager/LocalEquipmentEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 572
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {p1, v2, p2, p3}, Lcom/project7/localmanager/LocalEquipmentEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 573
    :cond_a
    const-string v2, "rewardAchievement"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 574
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v2

    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {p1, v2, v3, p3}, Lcom/project7/localmanager/LocalAchievementEngine;->claim([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 575
    :cond_b
    const-string v2, "buyCardMallItem"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->daily()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/project7/localmanager/LocalDailyEngine;->shop(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 576
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->daily()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lcom/project7/localmanager/LocalDailyEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 577
    :cond_c
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/project7/localmanager/LocalGiftEngine;->handles(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 578
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v2

    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-static {p1, v2, v3, p2, p3}, Lcom/project7/localmanager/LocalGiftEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto/16 :goto_2

    .line 579
    :cond_d
    const-string v2, "buyMoney"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "buyCardMallItem"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 580
    :cond_e
    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalAccountFeatures;->handles(Ljava/lang/String;[B)Z

    move-result v2

    if-nez v2, :cond_12

    .line 581
    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->commerceCatalog:Lcom/project7/localmanager/LocalCommerceCatalog;

    if-nez v2, :cond_f

    new-instance v2, Lcom/project7/localmanager/LocalCommerceCatalog;

    iget-object v3, p0, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "commerce.tsv"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/project7/localmanager/LocalCommerceCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->commerceCatalog:Lcom/project7/localmanager/LocalCommerceCatalog;

    .line 582
    :cond_f
    iget-object v3, p0, Lcom/project7/localmanager/LocalProfileStore;->commerceCatalog:Lcom/project7/localmanager/LocalCommerceCatalog;

    const/4 v6, 0x0

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long v7, v4, v7

    iget-object v2, p0, Lcom/project7/localmanager/LocalProfileStore;->activities:Lcom/project7/localmanager/LocalActivityStore;

    invoke-virtual {v2}, Lcom/project7/localmanager/LocalActivityStore;->snapshot()Ljava/util/Map;

    move-result-object v9

    .line 582
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v9}, Lcom/project7/localmanager/LocalCommerceEngine;->apply([BLcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/String;[BZJLjava/util/Map;)Lcom/project7/localmanager/LocalCommerceEngine$Result;

    move-result-object p3

    .line 584
    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v3, p3, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-direct {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 585
    iget-object v3, p3, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v2, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_0

    .line 586
    :cond_10
    const-string v3, "buyMoney"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object p3, p3, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    const-string v3, "showMessageStr"

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_11

    .line 587
    iget-object p3, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p3}, Lcom/project7/localmanager/LocalAccountFeatures;->refreshRecharge([B)[B

    move-result-object p3

    iput-object p3, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 588
    const-string p3, "rookieRechargeSyncData"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "d"

    aput-object v4, v3, v10

    iget-object v4, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "sma"

    .line 589
    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "rcd"

    .line 588
    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 591
    :cond_11
    move-object p3, v2

    goto :goto_2

    :cond_12
    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalAccountFeatures;->handles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 592
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v2

    invoke-static {p1, v2, p2, p3}, Lcom/project7/localmanager/LocalAccountFeatures;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto :goto_1

    .line 593
    :cond_13
    invoke-static {p2}, Lcom/project7/localmanager/LocalMailEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 594
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v2

    invoke-static {p1, v2, p2, p3}, Lcom/project7/localmanager/LocalMailEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    goto :goto_1

    .line 595
    :cond_14
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v2

    invoke-static {p1, v2, p2, p3}, Lcom/project7/localmanager/LocalDrawEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p3

    :goto_1
    nop

    .line 596
    :goto_2
    invoke-static {p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->handles(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p2, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    if-eq p2, p1, :cond_15

    .line 597
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->syncMoneyAndStatistics(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;)V

    .line 598
    :cond_15
    iget-object p2, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->heroRewards:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_16

    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object p2

    invoke-static {p3, p2, v10, v11}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;IZ)V

    .line 599
    :cond_16
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->home()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->inventoryChanged(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;)V

    .line 600
    invoke-direct {p0}, Lcom/project7/localmanager/LocalProfileStore;->home()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object p2

    invoke-static {p3, p2, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 601
    iget-object p2, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    if-eq p2, p1, :cond_17

    iget-object p1, p3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 602
    :cond_17
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p3

    .line 548
    :cond_18
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "profile does not exist"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 603
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 545
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    monitor-enter p0

    .line 283
    :try_start_0
    sget-object v10, Lcom/project7/localmanager/LocalProfileStore;->PROFILE_LOCK:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 284
    :try_start_1
    new-instance v11, Ljava/io/File;

    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->profilesDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bson"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 286
    invoke-static {v11}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object v12

    .line 287
    nop

    .line 288
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalWingDrugEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v2

    invoke-static {v12, v2, v9, v0, v7}, Lcom/project7/localmanager/LocalWingDrugEngine;->apply([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    .line 290
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 291
    :cond_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 293
    :cond_1
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalPuzzleEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v2

    invoke-static {v12, v2, v9, v0, v7}, Lcom/project7/localmanager/LocalPuzzleEngine;->apply([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v13

    .line 295
    const-string v2, "puzzleRoomGetClue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->weeks()Lcom/project7/localmanager/LocalWeekCatalog;

    move-result-object v7

    move-object v2, v13

    move-object v3, v12

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/project7/localmanager/LocalPuzzleEngine;->reconcileClue(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 297
    :cond_2
    iget-object v0, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 298
    :cond_3
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v13

    .line 300
    :cond_4
    :try_start_3
    const-string v2, "q7RecordPatrolAchievement"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_6

    .line 301
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, v12}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 302
    const-string v2, "aid"

    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    .line 303
    invoke-static {v12, v9, v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->recordPatrol([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v0, v12, v2, v13}, Lcom/project7/localmanager/LocalNewAchievementEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 305
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 306
    :cond_5
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 308
    :cond_6
    :try_start_4
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalHeroGiftEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 309
    invoke-static {v12, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v0

    invoke-static {v12, v0, v9, v7}, Lcom/project7/localmanager/LocalHeroGiftEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v0, v12, v2, v13}, Lcom/project7/localmanager/LocalNewAchievementEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 312
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 313
    :cond_7
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 314
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 316
    :cond_8
    :try_start_5
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalStoryEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_b

    .line 317
    new-instance v8, Ljava/io/File;

    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v5, "local-stories.bson"

    invoke-direct {v8, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v8}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object v2

    goto :goto_0

    :cond_9
    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :goto_0
    move-object v9, v2

    .line 319
    nop

    .line 320
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    div-long/2addr v13, v3

    long-to-int v11, v13

    .line 319
    move-object v2, v12

    move-object v3, v9

    move-object v4, v5

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v7, v11

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalStoryEngine;->apply([B[BLjava/lang/String;Ljava/lang/String;[BI)Lcom/project7/localmanager/LocalStoryEngine$Result;

    move-result-object v0

    .line 322
    iget-object v2, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    invoke-static {v9, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->state:[B

    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 323
    :cond_a
    iget-object v0, v0, Lcom/project7/localmanager/LocalStoryEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 325
    :cond_b
    :try_start_6
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalDailyEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->daily()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v4

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 326
    move-object v2, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide v7, v13

    invoke-static/range {v2 .. v8}, Lcom/project7/localmanager/LocalDailyEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v8

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->home()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v8, v12, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->dailyChanged(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;)V

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->weeks()Lcom/project7/localmanager/LocalWeekCatalog;

    move-result-object v6

    move-object v2, v8

    move-object v3, v12

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalCgEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 330
    const-string v2, "q7DailyFinish"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v8}, Lcom/project7/localmanager/LocalCgEngine;->showPending(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 331
    :cond_c
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 332
    :cond_d
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v8

    .line 334
    :cond_e
    :try_start_7
    invoke-static/range {p2 .. p3}, Lcom/project7/localmanager/LocalSpecialItemEngine;->handles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 335
    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->commerceCatalog:Lcom/project7/localmanager/LocalCommerceCatalog;

    if-nez v2, :cond_f

    new-instance v2, Lcom/project7/localmanager/LocalCommerceCatalog;

    iget-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "commerce.tsv"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/project7/localmanager/LocalCommerceCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->commerceCatalog:Lcom/project7/localmanager/LocalCommerceCatalog;

    .line 336
    :cond_f
    iget-object v3, v1, Lcom/project7/localmanager/LocalProfileStore;->commerceCatalog:Lcom/project7/localmanager/LocalCommerceCatalog;

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 336
    move-object v2, v12

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide v7, v13

    invoke-static/range {v2 .. v8}, Lcom/project7/localmanager/LocalSpecialItemEngine;->apply([BLcom/project7/localmanager/LocalCommerceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    .line 338
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 339
    :cond_10
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 340
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    .line 342
    :cond_11
    :try_start_8
    const-string v2, "q7AckCgNotice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 343
    const-string v0, "c"

    invoke-static {v7, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/project7/localmanager/LocalCgEngine;->acknowledge([BLjava/util/List;)[B

    move-result-object v0

    .line 344
    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 345
    :cond_12
    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v2

    .line 347
    :cond_13
    :try_start_9
    const-string v2, "q7AckStoryProgress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 348
    invoke-static {v12, v7}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->acknowledge([B[B)[B

    move-result-object v0

    .line 349
    invoke-static {v12, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 350
    :cond_14
    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v2

    .line 352
    :cond_15
    :try_start_a
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalWeekEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->weeks()Lcom/project7/localmanager/LocalWeekCatalog;

    move-result-object v2

    invoke-static {v12, v2, v9, v0, v7}, Lcom/project7/localmanager/LocalWeekEngine;->apply([BLcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    .line 354
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 355
    :cond_16
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalWeekEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 356
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v0

    .line 358
    :cond_17
    :try_start_b
    const-string v2, "q7ResumeWeekResult"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v2, :cond_18

    .line 359
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, v12}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 360
    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalCgEngine;->showPending(Lcom/project7/localmanager/LocalResourceEngine$Result;Z)V

    .line 361
    invoke-static {v0}, Lcom/project7/localmanager/LocalWeekEngine;->showResult(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 362
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v0

    .line 364
    :cond_18
    :try_start_c
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalHomeEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->home()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v4

    .line 366
    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v8

    .line 365
    move-object v2, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide v7, v8

    invoke-static/range {v2 .. v8}, Lcom/project7/localmanager/LocalHomeEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v0, v12, v2, v13}, Lcom/project7/localmanager/LocalNewAchievementEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 368
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 369
    :cond_19
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v0

    .line 371
    :cond_1a
    :try_start_d
    invoke-static {v12, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->refreshGuideState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 372
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalIntelligenceEngine;->handles(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, "effects"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 373
    :cond_1b
    iget-object v5, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    if-nez v5, :cond_1c

    new-instance v5, Lcom/project7/localmanager/LocalConstructionCatalog;

    iget-object v6, v1, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v14, "construction.tsv"

    invoke-virtual {v6, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/project7/localmanager/LocalConstructionCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v5, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    .line 374
    :cond_1c
    iget-object v5, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    invoke-static {v2, v5, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->restoreCentralBase([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 376
    :cond_1d
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalIntelligenceEngine;->handles(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 377
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->withRequiredClientDefaults([B)[B

    move-result-object v2

    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v5

    .line 376
    invoke-static {v2, v5, v9}, Lcom/project7/localmanager/LocalIntelligenceEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 379
    :cond_1e
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 380
    const-string v5, "readPlayerNote"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    const-string v5, "readPendingNote"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_1

    :cond_1f
    move-object v15, v2

    goto :goto_2

    .line 381
    :cond_20
    :goto_1
    new-instance v5, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v5, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v2

    invoke-static {v5, v2, v9}, Lcom/project7/localmanager/LocalDiaryEngine;->prepare(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 383
    iget-object v2, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 384
    iget-object v5, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    const-string v5, "Project7Gateway"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "diary evidence "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v15

    invoke-static {v2, v9, v15}, Lcom/project7/localmanager/LocalDiaryEngine;->evidence([BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventCatalog;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 385
    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v2

    .line 388
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalCommunityEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 389
    new-instance v6, Ljava/io/File;

    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v5, "community"

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 390
    new-instance v2, Ljava/io/File;

    const-string v5, "official.bson"

    invoke-direct {v2, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v8, "local.bson"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-static {v2}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object v2

    goto :goto_3

    :cond_21
    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :goto_3
    move-object v8, v2

    .line 392
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v5}, Lcom/project7/localmanager/LocalProfileStore;->readAll(Ljava/io/File;)[B

    move-result-object v2

    goto :goto_4

    :cond_22
    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 393
    :goto_4
    nop

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    div-long v3, v16, v3

    long-to-int v4, v3

    .line 393
    move-object v3, v2

    move-object v2, v15

    move-object/from16 v16, v3

    move-object v3, v8

    move v8, v4

    move-object/from16 v4, v16

    move-object v13, v5

    move-object/from16 v5, p2

    move-object/from16 v18, v6

    move-object/from16 v6, p3

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalCommunityEngine;->apply([B[B[BLjava/lang/String;[BI)Lcom/project7/localmanager/LocalCommunityEngine$Result;

    move-result-object v2

    .line 395
    iget-object v3, v2, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B

    move-object/from16 v4, v16

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_25

    .line 396
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_5

    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v2, "cannot create community directory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_24
    :goto_5
    iget-object v3, v2, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B

    invoke-static {v13, v3}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 399
    :cond_25
    iget-object v2, v2, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    .line 400
    move-object v8, v2

    goto/16 :goto_7

    :cond_26
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalStoryClueEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v2

    invoke-static {v15, v2, v0, v7}, Lcom/project7/localmanager/LocalStoryClueEngine;->read([BLcom/project7/localmanager/LocalEventCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    goto :goto_6

    .line 402
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v2, v0, v7}, Lcom/project7/localmanager/LocalSouvenirEngine;->handles(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v4

    move-object v2, v15

    move-object/from16 v5, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalSouvenirEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    goto :goto_6

    .line 404
    :cond_28
    const-string v2, "triggerSocialMsgEvent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v2

    invoke-static {v15, v7, v2, v9}, Lcom/project7/localmanager/LocalServiceEngine;->confirmSocial([B[BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    goto :goto_6

    .line 406
    :cond_29
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalIntelligenceEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    invoke-static {v15, v2, v3, v0, v7}, Lcom/project7/localmanager/LocalIntelligenceEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    goto :goto_6

    .line 408
    :cond_2a
    const-string v2, "effects"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 409
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v2

    invoke-static {v15, v2, v9}, Lcom/project7/localmanager/LocalServiceEngine;->effects([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    goto :goto_6

    .line 410
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v15, v0, v7, v2}, Lcom/project7/localmanager/LocalServiceEngine;->apply([BLjava/lang/String;[BLcom/project7/localmanager/LocalFeatureCatalog;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v2

    :goto_6
    move-object v8, v2

    .line 411
    :goto_7
    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v14}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 412
    const-string v2, "effects"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x2

    if-eqz v0, :cond_2d

    .line 413
    invoke-static {v8}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->capture(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 414
    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->replay(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 415
    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->weeks()Lcom/project7/localmanager/LocalWeekCatalog;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->economy()Lcom/project7/localmanager/LocalEconomyCatalog;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalWeekEngine;->endings([BLcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Z)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    .line 416
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 417
    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 418
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v2, v1, Lcom/project7/localmanager/LocalProfileStore;->constructionCatalog:Lcom/project7/localmanager/LocalConstructionCatalog;

    invoke-static {v0, v2, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->restoreCentralBase([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 419
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v0, v2, v9}, Lcom/project7/localmanager/LocalIntelligenceEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    .line 420
    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "intelligence"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "intelligence"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 421
    const-string v2, "syncAllIntelligence"

    new-array v3, v13, [Ljava/lang/Object;

    const-string v4, "is"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "intelligence"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 422
    :cond_2c
    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 424
    :cond_2d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "q7CentralBase"

    invoke-static {v12, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "q7CentralBase"

    .line 425
    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 426
    const-string v0, "get_all_area_info_reply"

    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v3, 0x1

    invoke-static {v3, v9, v2}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 427
    const-string v0, "get_city_data_reply"

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "cd"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "city"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 429
    :cond_2e
    const-string v0, "city"

    invoke-static {v12, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "nbb"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "city"

    .line 430
    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "nbb"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 429
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 431
    const-string v0, "get_city_data_reply"

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "cd"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "city"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 432
    :cond_2f
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v3

    invoke-static {v0, v2, v9, v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;J)[B

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->weeks()Lcom/project7/localmanager/LocalWeekCatalog;

    move-result-object v6

    move-object v2, v8

    move-object v3, v12

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalCgEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 434
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v2

    invoke-static {v0, v2, v9}, Lcom/project7/localmanager/LocalSouvenirEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 435
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-static {v12, v0, v2}, Lcom/project7/localmanager/LocalProfileStore;->syncSupplyChange([B[BLjava/util/List;)V

    .line 436
    const-string v0, "tsd"

    invoke-static {v15, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "tsd"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "ntd"

    .line 437
    invoke-static {v15, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "ntd"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_31

    .line 438
    :cond_30
    invoke-static {v8}, Lcom/project7/localmanager/LocalPersonalEngine;->syncTasks(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 439
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "cgs"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 440
    const-string v2, "cgs"

    invoke-static {v15, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 441
    iget-object v2, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "q7CgNotices"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 442
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 443
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "addCg"

    new-array v3, v13, [Ljava/lang/Object;

    const-string v4, "c"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 444
    :cond_33
    invoke-static {v8}, Lcom/project7/localmanager/LocalCgEngine;->showPending(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 445
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v0

    invoke-static {v8, v12, v0}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->acquired(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;)V

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->home()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v0

    invoke-static {v8, v12, v0}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->inventoryChanged(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;)V

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->home()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v8, v0, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->features()Lcom/project7/localmanager/LocalFeatureCatalog;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v8, v12, v0, v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 449
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalProfileStore;->writeAtomic(Ljava/io/File;[B)V

    .line 450
    :cond_34
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/LocalProfileStore;->events()Lcom/project7/localmanager/LocalEventCatalog;

    move-result-object v2

    invoke-static {v0, v2, v9}, Lcom/project7/localmanager/LocalIntelligenceEngine;->recoverEvents([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 451
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 452
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object v8

    .line 285
    :cond_35
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "profile does not exist"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 282
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
