.class final Lcom/project7/localmanager/LocalNewbeeCatalog;
.super Ljava/lang/Object;
.source "LocalNewbeeCatalog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalNewbeeCatalog$Step;
    }
.end annotation


# instance fields
.field private final completionEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final externalGuideEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final steps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalNewbeeCatalog$Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "newbee_graph.tsv"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalNewbeeCatalog;-><init>(Ljava/io/InputStream;)V

    .line 23
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalNewbeeCatalog;->steps:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalNewbeeCatalog;->completionEvents:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalNewbeeCatalog;->externalGuideEvents:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 29
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseLine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 33
    return-void

    .line 26
    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method static synthetic lambda$parseLine$0(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0

    .line 50
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 0

    .line 107
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 108
    :catch_0
    move-exception p0

    .line 109
    const/4 p0, 0x0

    return p0
.end method

.method private parseLine(Ljava/lang/String;)V
    .locals 22

    .line 45
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 48
    :cond_0
    const/4 v2, -0x1

    const-string v3, "\t"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 49
    const/4 v2, 0x0

    aget-object v3, v1, v2

    const-string v4, "@externalGuide"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    array-length v3, v1

    if-ne v3, v4, :cond_1

    .line 50
    iget-object v2, v0, Lcom/project7/localmanager/LocalNewbeeCatalog;->externalGuideEvents:Ljava/util/Map;

    aget-object v3, v1, v6

    invoke-static {v3}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/project7/localmanager/LocalNewbeeCatalog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalNewbeeCatalog$$ExternalSyntheticLambda0;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    aget-object v1, v1, v5

    .line 51
    invoke-static {v1}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    return-void

    .line 54
    :cond_1
    aget-object v3, v1, v2

    const-string v7, "@event"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    array-length v2, v1

    if-lt v2, v4, :cond_2

    .line 56
    aget-object v2, v1, v6

    invoke-static {v2}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 57
    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 58
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 59
    iget-object v3, v0, Lcom/project7/localmanager/LocalNewbeeCatalog;->completionEvents:Ljava/util/Map;

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/project7/localmanager/LocalNewbeeCatalog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalNewbeeCatalog$$ExternalSyntheticLambda0;

    .line 59
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    return-void

    .line 65
    :cond_3
    array-length v3, v1

    const/16 v7, 0xc

    if-ge v3, v7, :cond_4

    .line 66
    return-void

    .line 68
    :cond_4
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 69
    aget-object v3, v1, v6

    invoke-static {v3}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 70
    if-nez v8, :cond_5

    .line 71
    return-void

    .line 73
    :cond_5
    iget-object v15, v0, Lcom/project7/localmanager/LocalNewbeeCatalog;->steps:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v13, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;

    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_6

    move v9, v6

    goto :goto_0

    :cond_6
    move v9, v2

    :goto_0
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_7

    move v10, v6

    goto :goto_1

    :cond_7
    move v10, v2

    :goto_1
    const/4 v7, 0x4

    and-int/2addr v3, v7

    if-eqz v3, :cond_8

    move v11, v6

    goto :goto_2

    :cond_8
    move v11, v2

    :goto_2
    aget-object v2, v1, v5

    .line 78
    invoke-static {v2}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v2, v1, v4

    .line 79
    invoke-static {v2}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    aget-object v3, v1, v7

    .line 80
    invoke-static {v3}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v1, v4

    .line 81
    invoke-static {v4}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x6

    aget-object v5, v1, v5

    .line 82
    invoke-static {v5}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v16

    const/4 v5, 0x7

    aget-object v5, v1, v5

    .line 83
    invoke-static {v5}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v17

    const/16 v5, 0x8

    aget-object v5, v1, v5

    .line 84
    invoke-static {v5}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v18

    const/16 v5, 0x9

    aget-object v5, v1, v5

    .line 85
    invoke-static {v5}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v19

    const/16 v5, 0xa

    aget-object v20, v1, v5

    const/16 v5, 0xb

    aget-object v21, v1, v5

    move-object v7, v13

    move-object v1, v13

    move-object v13, v2

    move-object v2, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    invoke-direct/range {v7 .. v21}, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;-><init>(IZZZILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void

    .line 46
    :cond_9
    :goto_3
    return-void
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

    .line 92
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 93
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 97
    invoke-static {v3}, Lcom/project7/localmanager/LocalNewbeeCatalog;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 98
    if-eqz v3, :cond_1

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 94
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method eventsAfterCompletion(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/project7/localmanager/LocalNewbeeCatalog;->completionEvents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 41
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method get(I)Lcom/project7/localmanager/LocalNewbeeCatalog$Step;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/project7/localmanager/LocalNewbeeCatalog;->steps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;

    return-object p1
.end method
