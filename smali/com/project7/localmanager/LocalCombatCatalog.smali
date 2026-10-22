.class final Lcom/project7/localmanager/LocalCombatCatalog;
.super Ljava/lang/Object;
.source "LocalCombatCatalog.java"


# static fields
.field private static final LEVEL_BASE:[Ljava/lang/String;

.field private static final LEVEL_DELTA:[Ljava/lang/String;


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

.field private homeRules:Lcom/project7/localmanager/LocalFeatureCatalog;

.field private final skills:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[[I>;"
        }
    .end annotation
.end field

.field private storyRules:Lcom/project7/localmanager/LocalFeatureCatalog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 105
    const-string v0, "_base_max_hp"

    const-string v1, "_base_phy_att_str"

    const-string v2, "_base_mag_att_str"

    const-string v3, "_base_phy_def"

    const-string v4, "_base_mag_def"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalCombatCatalog;->LEVEL_BASE:[Ljava/lang/String;

    .line 106
    const-string v0, "_hp_delta"

    const-string v1, "_phy_str_delta"

    const-string v2, "_mag_str_delta"

    const-string v3, "_phy_def_delta"

    const-string v4, "_mag_def_delta"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalCombatCatalog;->LEVEL_DELTA:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "combat_skills.tsv"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/project7/localmanager/LocalCombatCatalog;-><init>(Ljava/io/InputStream;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "combat_attrs.tsv"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/project7/localmanager/LocalCombatCatalog;->loadAttributes(Ljava/io/InputStream;)V

    .line 22
    new-instance v0, Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "suppression.tsv"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->storyRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    .line 23
    new-instance v0, Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "growth.tsv"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    .line 24
    new-instance v0, Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "home.tsv"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->homeRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    .line 25
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->skills:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->attributes:Ljava/util/Map;

    .line 338
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 341
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    goto :goto_0

    .line 345
    :cond_1
    const-string v1, "\t"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 346
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 349
    const/4 v1, 0x3

    aget-object v1, p1, v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 350
    array-length v2, v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v6, 0x0

    aput v2, v4, v6

    const-class v2, I

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    move v4, v6

    :goto_1
    :try_start_1
    array-length v7, v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, ":"

    if-ge v4, v7, :cond_2

    .line 353
    :try_start_2
    aget-object v7, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 354
    aget-object v8, v2, v4

    aget-object v9, v7, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v6

    .line 355
    aget-object v8, v2, v4

    aget-object v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v8, v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 359
    :cond_2
    nop

    .line 360
    :try_start_3
    iget-object v1, p0, Lcom/project7/localmanager/LocalCombatCatalog;->skills:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p1, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v3

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    goto/16 :goto_0

    .line 357
    :catch_0
    move-exception p1

    .line 358
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid combat skill pair"

    invoke-direct {v1, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 347
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Invalid combat skill row"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 362
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 363
    return-void

    .line 338
    :catchall_0
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalCombatCatalog;-><init>(Ljava/io/InputStream;)V

    .line 29
    invoke-direct {p0, p2}, Lcom/project7/localmanager/LocalCombatCatalog;->loadAttributes(Ljava/io/InputStream;)V

    .line 30
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/project7/localmanager/LocalCombatCatalog;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 34
    new-instance p1, Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-direct {p1, p3}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/project7/localmanager/LocalCombatCatalog;->storyRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/project7/localmanager/LocalCombatCatalog;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 39
    new-instance p1, Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-direct {p1, p4}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    .line 40
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/project7/localmanager/LocalCombatCatalog;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 45
    new-instance p1, Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-direct {p1, p5}, Lcom/project7/localmanager/LocalFeatureCatalog;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/project7/localmanager/LocalCombatCatalog;->homeRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    .line 46
    return-void
.end method

.method private artifactRule(I[B)[B
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "oa"

    invoke-static {p2, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    const-string v0, "ar"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p2

    .line 162
    const-string v0, "o"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "il"

    invoke-static {p2, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 163
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x14

    if-gt v4, v5, :cond_3

    .line 164
    :cond_1
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v3, :cond_2

    goto :goto_0

    .line 165
    :cond_2
    iget-object p2, p0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AC"

    invoke-virtual {p2, v0, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    .line 164
    :cond_3
    :goto_0
    return-object v1

    .line 160
    :cond_4
    :goto_1
    return-object v1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 304
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    goto :goto_0

    .line 308
    :cond_1
    const-string v1, "\t"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 309
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 312
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    const/4 v2, 0x3

    :try_start_1
    aget-object v2, p1, v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    const-string v7, ":"

    if-ge v5, v3, :cond_2

    :try_start_2
    aget-object v8, v2, v5

    .line 315
    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 316
    aget-object v8, v7, v4

    aget-object v6, v7, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 320
    :cond_2
    nop

    .line 321
    :try_start_3
    iget-object v2, p0, Lcom/project7/localmanager/LocalCombatCatalog;->attributes:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object p1, p1, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    goto :goto_0

    .line 318
    :catch_0
    move-exception p1

    .line 319
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid combat attribute value"

    invoke-direct {v1, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 310
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Invalid combat attribute row"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 324
    return-void

    .line 301
    :catchall_0
    move-exception p1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method static roomInputFor(Ljava/util/Map;I)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 124
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/project7/localmanager/LocalCombatCatalog;->LEVEL_BASE:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    aget-object v2, v2, v1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 125
    const/4 v2, 0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    sget-object v2, Lcom/project7/localmanager/LocalCombatCatalog;->LEVEL_DELTA:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p0, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    .line 124
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-object v0
.end method


# virtual methods
.method artifactAttributesFor(I[B)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 185
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 186
    invoke-direct/range {p0 .. p2}, Lcom/project7/localmanager/LocalCombatCatalog;->artifactRule(I[B)[B

    move-result-object v2

    .line 187
    if-nez v2, :cond_0

    return-object v1

    .line 188
    :cond_0
    const-string v3, "ar"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "oa"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    .line 189
    if-nez v4, :cond_1

    return-object v1

    .line 190
    :cond_1
    const-string v5, "_base_max_hp"

    const-string v6, "_base_phy_att_str"

    const-string v7, "_base_mag_att_str"

    const-string v8, "_base_phy_def"

    const-string v9, "_base_mag_def"

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    .line 191
    const/4 v6, 0x5

    new-array v7, v6, [I

    fill-array-data v7, :array_0

    .line 192
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 193
    invoke-static {v4, v9}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v12

    .line 194
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v12, :cond_3

    .line 195
    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isFinite(D)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    cmpg-double v9, v12, v10

    if-gez v9, :cond_2

    goto :goto_1

    .line 196
    :cond_2
    goto :goto_0

    .line 195
    :cond_3
    :goto_1
    return-object v1

    .line 197
    :cond_4
    const-string v8, "o"

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    const-string v9, "il"

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 198
    iget-object v9, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "AH"

    invoke-virtual {v9, v13, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    const-string v12, "attack_type"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v9, v13, :cond_5

    move v9, v13

    goto :goto_2

    :cond_5
    move v9, v12

    .line 199
    :goto_2
    nop

    :goto_3
    if-ge v12, v6, :cond_10

    .line 200
    const-string v14, "att_point"

    const-string v15, ""

    if-nez v12, :cond_6

    const-string v14, "hp_point"

    goto :goto_5

    :cond_6
    if-ne v12, v13, :cond_8

    if-eqz v9, :cond_7

    :goto_4
    goto :goto_5

    :cond_7
    move-object v14, v15

    goto :goto_5

    :cond_8
    const/4 v6, 0x2

    if-ne v12, v6, :cond_9

    if-nez v9, :cond_7

    goto :goto_4

    .line 201
    :cond_9
    const/4 v6, 0x3

    if-ne v12, v6, :cond_a

    const-string v14, "phy_def_point"

    goto :goto_5

    :cond_a
    const-string v14, "mag_def_point"

    .line 202
    :goto_5
    aget-object v6, v5, v12

    invoke-static {v4, v6}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v6

    .line 203
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    goto :goto_6

    :cond_b
    move-wide v15, v10

    .line 204
    :goto_6
    move v6, v13

    :goto_7
    if-gt v6, v8, :cond_c

    iget-object v13, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "AP"

    invoke-virtual {v13, v11, v10}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v15, v10

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    goto :goto_7

    .line 205
    :cond_c
    const/4 v6, 0x1

    :goto_8
    if-gt v6, v3, :cond_d

    iget-object v10, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "AI"

    invoke-virtual {v10, v13, v11}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v15, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 206
    :cond_d
    aget v6, v7, v12

    int-to-double v10, v6

    mul-double/2addr v10, v15

    .line 207
    invoke-static {v10, v11}, Ljava/lang/Double;->isFinite(D)Z

    move-result v6

    if-eqz v6, :cond_f

    const-wide v13, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v6, v10, v13

    if-lez v6, :cond_e

    goto :goto_9

    .line 209
    :cond_e
    aget-object v6, v5, v12

    double-to-int v10, v10

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v1, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 207
    :cond_f
    :goto_9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v1

    .line 211
    :cond_10
    const-string v3, "attrs"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 212
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v5

    .line 214
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isFinite(D)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_b

    .line 215
    :cond_11
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v1, v4, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    goto :goto_a

    .line 214
    :cond_12
    :goto_b
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v1

    .line 217
    :cond_13
    return-object v1

    nop

    :array_0
    .array-data 4
        0x5f
        0x19
        0x19
        0x6
        0x6
    .end array-data
.end method

.method artifactSkillsFor(I[B)[[I
    .locals 8

    .line 169
    const-class v0, I

    invoke-direct {p0, p1, p2}, Lcom/project7/localmanager/LocalCombatCatalog;->artifactRule(I[B)[B

    move-result-object p1

    .line 170
    const/4 p2, 0x2

    if-nez p1, :cond_0

    new-array p1, p2, [I

    fill-array-data p1, :array_0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    return-object p1

    .line 171
    :cond_0
    const-string v1, "skills"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p1

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v2, Ljava/util/TreeSet;

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    invoke-static {p1, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 176
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 177
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gtz v7, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    new-array v7, p2, [I

    aput v3, v7, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v7, v5

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    nop

    .line 180
    goto :goto_0

    .line 177
    :cond_2
    :goto_1
    new-array p1, p2, [I

    aput p2, p1, v5

    aput v6, p1, v6

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 179
    :catch_0
    move-exception p1

    new-array p1, p2, [I

    fill-array-data p1, :array_1

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    return-object p1

    .line 181
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[I

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method attributesFor(III)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 328
    if-nez p2, :cond_0

    .line 329
    iget-object p2, p0, Lcom/project7/localmanager/LocalCombatCatalog;->attributes:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":1:1"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 331
    :cond_0
    if-eqz p2, :cond_1

    .line 334
    return-object p2

    .line 332
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown combat attributes for hero "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method attributesFor(III[BI)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[BI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 221
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-virtual/range {p0 .. p3}, Lcom/project7/localmanager/LocalCombatCatalog;->attributesFor(III)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/project7/localmanager/LocalCombatCatalog;->artifactAttributesFor(I[B)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v4, v10, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v4, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_0
    iget-object v5, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    if-eqz v5, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":1"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "LB"

    invoke-virtual {v5, v10, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_9

    .line 225
    :cond_1
    const-string v5, "ls"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    .line 226
    if-ltz v5, :cond_d

    const/4 v6, 0x4

    if-le v5, v6, :cond_2

    goto/16 :goto_8

    .line 227
    :cond_2
    iget-object v11, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    add-int/2addr v5, v14

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v10, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    .line 228
    const-string v11, "lv_max"

    if-nez v5, :cond_3

    const/16 v5, 0x64

    goto :goto_1

    :cond_3
    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    .line 229
    :goto_1
    if-lez v3, :cond_6

    .line 230
    iget-object v12, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v10, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    .line 231
    move v12, v14

    :goto_2
    if-gt v12, v6, :cond_5

    .line 232
    iget-object v15, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v10, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    .line 233
    if-eqz v6, :cond_4

    const-string v15, "lv_require"

    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    if-lt v3, v6, :cond_4

    .line 234
    iget-object v6, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    invoke-static {v6, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v9, v6

    .line 231
    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x4

    const-wide/16 v7, 0x0

    goto :goto_2

    .line 236
    :cond_5
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 238
    :cond_6
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 239
    const-string v4, "lh"

    const-string v6, "la"

    const-string v7, "ld"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 240
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v8, "AH"

    invoke-virtual {v7, v8, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v7, "physical"

    invoke-static {v1, v7}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 241
    const/4 v6, 0x3

    new-array v7, v6, [[Ljava/lang/String;

    const-string v8, "_base_max_hp"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-array v8, v14, [Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "_base_phy_att_str"

    goto :goto_3

    :cond_7
    const-string v1, "_base_mag_att_str"

    :goto_3
    aput-object v1, v8, v9

    aput-object v8, v7, v14

    const/4 v1, 0x2

    const-string v8, "_base_phy_def"

    const-string v10, "_base_mag_def"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 243
    move v1, v9

    :goto_4
    if-ge v1, v6, :cond_c

    .line 244
    aget-object v8, v4, v1

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    .line 245
    if-gez v8, :cond_8

    const-wide/16 v15, 0x0

    goto :goto_7

    .line 246
    :cond_8
    iget-object v10, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-static {v10, v8}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->level(Lcom/project7/localmanager/LocalFeatureCatalog;I)I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 247
    iget-object v10, v0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "LA"

    invoke-virtual {v10, v11, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    .line 248
    aget-object v10, v7, v1

    array-length v11, v10

    move v12, v9

    :goto_5
    if-ge v12, v11, :cond_b

    aget-object v13, v10, v12

    .line 249
    invoke-static {v8, v13}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v14

    .line 250
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    const-wide/16 v15, 0x0

    cmpl-double v17, v18, v15

    if-eqz v17, :cond_a

    .line 251
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v3, v13, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    add-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v3, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 250
    :cond_9
    const-wide/16 v15, 0x0

    .line 248
    :cond_a
    :goto_6
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x3

    goto :goto_5

    :cond_b
    const-wide/16 v15, 0x0

    .line 243
    :goto_7
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x3

    goto :goto_4

    .line 254
    :cond_c
    return-object v3

    .line 226
    :cond_d
    :goto_8
    return-object v4

    .line 224
    :cond_e
    :goto_9
    return-object v4
.end method

.method attributesFor(III[BI[B)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[BI[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual/range {p0 .. p5}, Lcom/project7/localmanager/LocalCombatCatalog;->leveledAttributesFor(III[BI)Ljava/util/Map;

    move-result-object p2

    .line 132
    invoke-static {p2, p5}, Lcom/project7/localmanager/LocalCombatCatalog;->roomInputFor(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p0, p1, p6, p3}, Lcom/project7/localmanager/LocalCombatCatalog;->roomAttributesFor(I[BLjava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p6

    invoke-interface {p2, p5, p6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Double;

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    :cond_0
    return-object p2
.end method

.method awakeStage(I[B)I
    .locals 4

    .line 138
    const-string v0, "as"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "AH"

    invoke-virtual {v1, v3, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 143
    :goto_0
    if-eqz v1, :cond_1

    .line 140
    const-string v2, "open"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 141
    const-string v3, "special"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 142
    const-string v2, "oa"

    invoke-static {p2, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-lez v0, :cond_1

    const/4 p2, 0x4

    if-gt v0, p2, :cond_1

    iget-object p2, p0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string v1, "AW"

    invoke-virtual {p2, v1, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 140
    :goto_1
    return v0
.end method

.method leveledAttributesFor(III[BI)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[BI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual/range {p0 .. p5}, Lcom/project7/localmanager/LocalCombatCatalog;->attributesFor(III[BI)Ljava/util/Map;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 110
    iget-object p4, p0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    const/4 v1, 0x0

    if-nez p4, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "CSF"

    invoke-virtual {p4, v2, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    .line 111
    :goto_0
    iget-object p4, p0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CSD"

    invoke-virtual {p4, p3, p2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 112
    :goto_1
    if-eqz p1, :cond_6

    if-nez v1, :cond_2

    goto :goto_4

    .line 113
    :cond_2
    const/4 p2, 0x0

    :goto_2
    sget-object p3, Lcom/project7/localmanager/LocalCombatCatalog;->LEVEL_BASE:[Ljava/lang/String;

    array-length p4, p3

    if-ge p2, p4, :cond_5

    .line 114
    sget-object p4, Lcom/project7/localmanager/LocalCombatCatalog;->LEVEL_DELTA:[Ljava/lang/String;

    aget-object p4, p4, p2

    invoke-static {v1, p4}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object p4

    aget-object v2, p3, p2

    invoke-static {p1, v2}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    .line 115
    if-eqz p4, :cond_4

    if-nez v2, :cond_3

    goto :goto_3

    .line 116
    :cond_3
    const/4 v3, 0x1

    invoke-static {v3, p5}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Double;->isFinite(D)Z

    move-result p4

    if-eqz p4, :cond_4

    aget-object p4, p3, p2

    aget-object p3, p3, p2

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_4
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 119
    :cond_5
    return-object v0

    .line 112
    :cond_6
    :goto_4
    return-object v0
.end method

.method roomAttributesFor(I[BLjava/util/Map;)Ljava/util/Map;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 49
    move-object/from16 v1, p0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 50
    iget-object v0, v1, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "AH"

    invoke-virtual {v0, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 51
    :goto_0
    const-string v3, "room_attack_type"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "room_hero_type"

    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 52
    iget-object v5, v1, Lcom/project7/localmanager/LocalCombatCatalog;->homeRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    if-eqz v5, :cond_29

    if-eqz v3, :cond_29

    if-nez v4, :cond_1

    goto/16 :goto_11

    .line 53
    :cond_1
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "physical"

    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 54
    const-string v0, "rmd"

    move-object/from16 v6, p2

    invoke-static {v6, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    const-string v6, "rs"

    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    .line 55
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    invoke-static {v6, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    .line 59
    if-eqz v9, :cond_27

    invoke-static {v6, v0}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 60
    :cond_3
    const-string v0, "lv"

    invoke-static {v9, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "op"

    invoke-static {v9, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 61
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v10, :cond_2

    .line 62
    :cond_4
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v12, :cond_5

    goto :goto_1

    .line 63
    :cond_5
    iget-object v0, v1, Lcom/project7/localmanager/LocalCombatCatalog;->homeRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_6

    const/4 v10, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_3
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "RS"

    invoke-virtual {v0, v10, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 64
    if-nez v0, :cond_8

    goto :goto_1

    .line 65
    :cond_8
    const-string v8, "hero_attr"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    .line 66
    const/4 v10, 0x3

    const/4 v11, 0x2

    if-ne v8, v11, :cond_9

    goto :goto_4

    :cond_9
    if-ne v8, v10, :cond_a

    move v10, v11

    goto :goto_4

    :cond_a
    move v10, v8

    .line 67
    :goto_4
    if-eqz v8, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v10, v8, :cond_2

    :cond_b
    const-string v8, "hero_type"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_c

    .line 68
    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v8, v10, :cond_c

    goto/16 :goto_1

    .line 69
    :cond_c
    const-string v8, "bk"

    invoke-static {v9, v8}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v10

    .line 70
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isFinite(D)Z

    move-result v8

    if-nez v8, :cond_e

    :cond_d
    goto/16 :goto_1

    .line 71
    :cond_e
    const-string v8, "attrs"

    invoke-static {v0, v8}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 72
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 73
    nop

    .line 74
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x1

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/16 v16, 0x0

    if-eqz v12, :cond_23

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 75
    invoke-static {v0, v12}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v17

    .line 76
    if-nez v17, :cond_f

    move-object/from16 v1, p3

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v11, v16

    goto/16 :goto_e

    .line 77
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    if-nez v10, :cond_10

    const-wide/16 v19, 0x0

    goto :goto_6

    :cond_10
    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    :goto_6
    add-double v17, v17, v19

    .line 78
    nop

    .line 79
    const-string v14, "_base_attack"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "_base_phy_att_str"

    const-string v13, "_base_mag_att_str"

    if-eqz v14, :cond_12

    if-eqz v5, :cond_11

    move-object v12, v15

    goto :goto_7

    :cond_11
    move-object v12, v13

    .line 80
    :cond_12
    :goto_7
    const-string v14, "_base_attack_delta"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v20, v0

    const-string v0, "_phy_str_delta"

    const-string v1, "_mag_str_delta"

    if-eqz v14, :cond_14

    if-eqz v5, :cond_13

    move-object v12, v0

    goto :goto_8

    :cond_13
    move-object v12, v1

    .line 81
    :cond_14
    :goto_8
    if-nez v5, :cond_15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    :cond_15
    if-eqz v5, :cond_17

    .line 82
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 74
    :cond_16
    move-object/from16 v1, p0

    move-object/from16 v0, v20

    goto :goto_5

    .line 83
    :cond_17
    const-string v14, "_base_defense"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v21, v3

    const-string v3, "_mag_def_delta"

    move-object/from16 v22, v4

    const-string v4, "_phy_def_delta"

    move/from16 v23, v5

    const-string v5, "_base_mag_def"

    move-object/from16 v24, v6

    const-string v6, "_base_phy_def"

    if-eqz v14, :cond_18

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v5

    const/4 v14, 0x1

    goto :goto_9

    .line 84
    :cond_18
    const-string v14, "_base_defense_delta"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v5

    const/4 v14, 0x1

    goto :goto_9

    :cond_19
    move-object/from16 v19, v5

    const/4 v14, 0x1

    new-array v5, v14, [Ljava/lang/String;

    aput-object v12, v5, v16

    move-object v12, v5

    .line 85
    :goto_9
    array-length v5, v12

    move/from16 v14, v16

    :goto_a
    if-ge v14, v5, :cond_21

    move/from16 v25, v5

    aget-object v5, v12, v14

    .line 86
    move-object/from16 v26, v6

    const-string v6, "_hp_delta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const-string v6, "_base_max_hp"

    goto :goto_b

    :cond_1a
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    move-object v6, v15

    goto :goto_b

    .line 87
    :cond_1b
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object v6, v13

    goto :goto_b

    :cond_1c
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    move-object/from16 v6, v26

    goto :goto_b

    .line 88
    :cond_1d
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object/from16 v6, v19

    goto :goto_b

    :cond_1e
    move-object v6, v5

    .line 90
    :goto_b
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v29, v1

    move-wide/from16 v30, v17

    const-wide/16 v27, 0x0

    move-object/from16 v1, p3

    goto :goto_c

    :cond_1f
    const-wide/16 v27, 0x0

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v29, v1

    move-object/from16 v1, p3

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    mul-double v30, v30, v17

    .line 91
    :goto_c
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v8, v6, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    add-double v27, v27, v30

    .line 92
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->isFinite(D)Z

    move-result v5

    if-nez v5, :cond_20

    move/from16 v11, v16

    goto :goto_d

    .line 93
    :cond_20
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v8, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v1, v29

    goto/16 :goto_a

    :cond_21
    move-object/from16 v1, p3

    .line 95
    :goto_d
    if-nez v11, :cond_22

    goto :goto_e

    .line 96
    :cond_22
    move-object/from16 v1, p0

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move/from16 v5, v23

    move-object/from16 v6, v24

    goto/16 :goto_5

    .line 74
    :cond_23
    move-object/from16 v1, p3

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    .line 97
    :goto_e
    if-eqz v11, :cond_25

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    add-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->isFinite(D)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_f

    .line 99
    :cond_25
    move/from16 v16, v11

    :goto_f
    if-eqz v16, :cond_26

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 101
    :cond_26
    move-object/from16 v1, p0

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move/from16 v5, v23

    move-object/from16 v6, v24

    goto/16 :goto_1

    .line 59
    :cond_27
    move-object/from16 v1, p3

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 57
    :catch_0
    move-exception v0

    move-object/from16 v1, p3

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v1, p0

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move/from16 v5, v23

    move-object/from16 v6, v24

    goto/16 :goto_1

    .line 102
    :cond_28
    return-object v2

    .line 52
    :cond_29
    :goto_11
    return-object v2
.end method

.method skillsFor(III)[[I
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->skills:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    .line 367
    if-nez p2, :cond_0

    .line 368
    iget-object p2, p0, Lcom/project7/localmanager/LocalCombatCatalog;->skills:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":1:1"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    .line 370
    :cond_0
    if-eqz p2, :cond_1

    .line 373
    return-object p2

    .line 371
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown combat hero "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method skillsFor(III[B)[[I
    .locals 6

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lcom/project7/localmanager/LocalCombatCatalog;->skillsFor(III)[[I

    move-result-object p2

    .line 148
    invoke-virtual {p0, p1, p4}, Lcom/project7/localmanager/LocalCombatCatalog;->awakeStage(I[B)I

    move-result p3

    .line 149
    if-nez p3, :cond_0

    return-object p2

    .line 150
    :cond_0
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    aget v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object p2, p0, Lcom/project7/localmanager/LocalCombatCatalog;->growthRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AW"

    invoke-virtual {p2, p3, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "awaked_skills"

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 154
    :cond_2
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p1

    const/4 p2, 0x2

    new-array p3, p2, [I

    aput p2, p3, v3

    aput p1, p3, v1

    const-class p1, I

    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    .line 155
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move p4, v1

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    add-int/lit8 v2, p4, 0x1

    new-array v4, p2, [I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v3

    aput-object v4, p1, p4

    move p4, v2

    goto :goto_2

    .line 156
    :cond_3
    return-object p1
.end method

.method storyCost(I[B)Lcom/project7/localmanager/LocalStageCostRules$Cost;
    .locals 6

    .line 264
    iget-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->storyRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SC"

    invoke-virtual {v0, v3, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 265
    :goto_0
    const-string v2, "city"

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 266
    const-string v3, "fv"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 267
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 268
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 269
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 271
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/project7/localmanager/LocalCombatCatalog;->wingEnhancement(I[B)[B

    move-result-object p1

    const-string p2, "reduce_fatigue"

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 272
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    invoke-static {v0, p2, v5}, Lcom/project7/localmanager/LocalStageCostRules;->query([BII)Lcom/project7/localmanager/LocalStageCostRules$Cost;

    move-result-object p1

    return-object p1
.end method

.method storyMonsterLevel(II)I
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->storyRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "SM"

    invoke-virtual {v0, v1, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    .line 259
    :goto_0
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const-string p2, "second"

    goto :goto_1

    :cond_1
    const-string p2, "first"

    :goto_1
    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 260
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    return v0
.end method

.method supportsHero(I)Z
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->skills:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":1:1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method wingEnhancement(I[B)[B
    .locals 7

    .line 276
    const-string v0, "std"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    .line 277
    const-string v0, "rt"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "byv"

    invoke-static {p2, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 279
    const/16 v1, 0x123

    if-ne p1, v1, :cond_a

    iget-object p1, p0, Lcom/project7/localmanager/LocalCombatCatalog;->storyRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    if-eqz p1, :cond_a

    if-eqz v0, :cond_a

    .line 280
    const-string p1, "7"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "7-"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_0
    if-eqz p2, :cond_a

    .line 281
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_a

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    goto/16 :goto_4

    .line 282
    :cond_1
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0xa

    if-gt p1, v0, :cond_9

    .line 283
    iget-object v0, p0, Lcom/project7/localmanager/LocalCombatCatalog;->storyRules:Lcom/project7/localmanager/LocalFeatureCatalog;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WY"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 284
    if-nez v0, :cond_2

    goto :goto_3

    .line 285
    :cond_2
    const-string v1, "baiyu_down"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "baiyu_up"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 286
    const/4 v3, 0x0

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 287
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v3, :cond_5

    goto :goto_3

    .line 288
    :cond_5
    sget-object p1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 289
    const-string p2, "battle_enhance"

    invoke-static {v0, p2}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    .line 290
    const-string v2, "reduce_fatigue"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 291
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isFinite(D)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_6

    .line 292
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDouble([BLjava/lang/String;D)[B

    move-result-object p1

    .line 293
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_7

    .line 294
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, v2, p2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 295
    :cond_7
    return-object p1

    .line 282
    :cond_8
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 297
    :cond_9
    sget-object p1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    return-object p1

    .line 281
    :cond_a
    :goto_4
    sget-object p1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    return-object p1
.end method
