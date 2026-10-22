.class public Lorg/commonmark/internal/LinkReferenceDefinitions;
.super Ljava/lang/Object;
.source "LinkReferenceDefinitions.java"


# instance fields
.field private final definitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/commonmark/node/LinkReferenceDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitions;->definitions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lorg/commonmark/node/LinkReferenceDefinition;)V
    .locals 2
    .param p1, "definition"    # Lorg/commonmark/node/LinkReferenceDefinition;

    .line 15
    invoke-virtual {p1}, Lorg/commonmark/node/LinkReferenceDefinition;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/commonmark/internal/util/Escaping;->normalizeLabelContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "normalizedLabel":Ljava/lang/String;
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitions;->definitions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitions;->definitions:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lorg/commonmark/node/LinkReferenceDefinition;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lorg/commonmark/internal/util/Escaping;->normalizeLabelContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "normalizedLabel":Ljava/lang/String;
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitions;->definitions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/node/LinkReferenceDefinition;

    return-object v1
.end method
