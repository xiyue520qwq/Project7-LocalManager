.class public Lorg/commonmark/renderer/text/TextContentRenderer;
.super Ljava/lang/Object;
.source "TextContentRenderer.java"

# interfaces
.implements Lorg/commonmark/renderer/Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/renderer/text/TextContentRenderer$RendererContext;,
        Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;,
        Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
    }
.end annotation


# instance fields
.field private final nodeRendererFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/renderer/text/TextContentNodeRendererFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final stripNewlines:Z


# direct methods
.method private constructor <init>(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)V
    .locals 2
    .param p1, "builder"    # Lorg/commonmark/renderer/text/TextContentRenderer$Builder;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->access$000(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer;->stripNewlines:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->access$100(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer;->nodeRendererFactories:Ljava/util/List;

    .line 22
    invoke-static {p1}, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->access$100(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    new-instance v1, Lorg/commonmark/renderer/text/TextContentRenderer$1;

    invoke-direct {v1, p0}, Lorg/commonmark/renderer/text/TextContentRenderer$1;-><init>(Lorg/commonmark/renderer/text/TextContentRenderer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;Lorg/commonmark/renderer/text/TextContentRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
    .param p2, "x1"    # Lorg/commonmark/renderer/text/TextContentRenderer$1;

    .line 12
    invoke-direct {p0, p1}, Lorg/commonmark/renderer/text/TextContentRenderer;-><init>(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lorg/commonmark/renderer/text/TextContentRenderer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/text/TextContentRenderer;

    .line 12
    iget-object v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer;->nodeRendererFactories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lorg/commonmark/renderer/text/TextContentRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/text/TextContentRenderer;

    .line 12
    iget-boolean v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer;->stripNewlines:Z

    return v0
.end method

.method public static builder()Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
    .locals 1

    .line 38
    new-instance v0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;

    invoke-direct {v0}, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public render(Lorg/commonmark/node/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v0}, Lorg/commonmark/renderer/text/TextContentRenderer;->render(Lorg/commonmark/node/Node;Ljava/lang/Appendable;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public render(Lorg/commonmark/node/Node;Ljava/lang/Appendable;)V
    .locals 3
    .param p1, "node"    # Lorg/commonmark/node/Node;
    .param p2, "output"    # Ljava/lang/Appendable;

    .line 43
    new-instance v0, Lorg/commonmark/renderer/text/TextContentRenderer$RendererContext;

    new-instance v1, Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-direct {v1, p2}, Lorg/commonmark/renderer/text/TextContentWriter;-><init>(Ljava/lang/Appendable;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/commonmark/renderer/text/TextContentRenderer$RendererContext;-><init>(Lorg/commonmark/renderer/text/TextContentRenderer;Lorg/commonmark/renderer/text/TextContentWriter;Lorg/commonmark/renderer/text/TextContentRenderer$1;)V

    .line 44
    .local v0, "context":Lorg/commonmark/renderer/text/TextContentRenderer$RendererContext;
    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/text/TextContentRenderer$RendererContext;->render(Lorg/commonmark/node/Node;)V

    .line 45
    return-void
.end method
