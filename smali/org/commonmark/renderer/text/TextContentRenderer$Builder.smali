.class public Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
.super Ljava/lang/Object;
.source "TextContentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/renderer/text/TextContentRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private nodeRendererFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/renderer/text/TextContentNodeRendererFactory;",
            ">;"
        }
    .end annotation
.end field

.field private stripNewlines:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->stripNewlines:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/text/TextContentRenderer$Builder;

    .line 57
    iget-boolean v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->stripNewlines:Z

    return v0
.end method

.method static synthetic access$100(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/text/TextContentRenderer$Builder;

    .line 57
    iget-object v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/commonmark/renderer/text/TextContentRenderer;
    .locals 2

    .line 66
    new-instance v0, Lorg/commonmark/renderer/text/TextContentRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/commonmark/renderer/text/TextContentRenderer;-><init>(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;Lorg/commonmark/renderer/text/TextContentRenderer$1;)V

    return-object v0
.end method

.method public extensions(Ljava/lang/Iterable;)Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/commonmark/Extension;",
            ">;)",
            "Lorg/commonmark/renderer/text/TextContentRenderer$Builder;"
        }
    .end annotation

    .line 101
    .local p1, "extensions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/commonmark/Extension;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/Extension;

    .line 102
    .local v1, "extension":Lorg/commonmark/Extension;
    instance-of v2, v1, Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;

    if-eqz v2, :cond_0

    .line 103
    move-object v2, v1

    check-cast v2, Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;

    .line 105
    .local v2, "textContentRendererExtension":Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;
    invoke-interface {v2, p0}, Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;->extend(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)V

    .line 107
    .end local v1    # "extension":Lorg/commonmark/Extension;
    .end local v2    # "textContentRendererExtension":Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    return-object p0
.end method

.method public nodeRendererFactory(Lorg/commonmark/renderer/text/TextContentNodeRendererFactory;)Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
    .locals 1
    .param p1, "nodeRendererFactory"    # Lorg/commonmark/renderer/text/TextContentNodeRendererFactory;

    .line 92
    iget-object v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-object p0
.end method

.method public stripNewlines(Z)Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
    .locals 0
    .param p1, "stripNewlines"    # Z

    .line 77
    iput-boolean p1, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->stripNewlines:Z

    .line 78
    return-object p0
.end method
