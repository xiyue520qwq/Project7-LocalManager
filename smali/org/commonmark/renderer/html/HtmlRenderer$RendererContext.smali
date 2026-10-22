.class Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Lorg/commonmark/renderer/html/HtmlNodeRendererContext;
.implements Lorg/commonmark/renderer/html/AttributeProviderContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/renderer/html/HtmlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererContext"
.end annotation


# instance fields
.field private final attributeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/renderer/html/AttributeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

.field private final nodeRendererMap:Lorg/commonmark/internal/renderer/NodeRendererMap;

.field final synthetic this$0:Lorg/commonmark/renderer/html/HtmlRenderer;


# direct methods
.method private constructor <init>(Lorg/commonmark/renderer/html/HtmlRenderer;Lorg/commonmark/renderer/html/HtmlWriter;)V
    .locals 4
    .param p2, "htmlWriter"    # Lorg/commonmark/renderer/html/HtmlWriter;

    .line 237
    iput-object p1, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->this$0:Lorg/commonmark/renderer/html/HtmlRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Lorg/commonmark/internal/renderer/NodeRendererMap;

    invoke-direct {v0}, Lorg/commonmark/internal/renderer/NodeRendererMap;-><init>()V

    iput-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->nodeRendererMap:Lorg/commonmark/internal/renderer/NodeRendererMap;

    .line 238
    iput-object p2, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/commonmark/renderer/html/HtmlRenderer;->access$900(Lorg/commonmark/renderer/html/HtmlRenderer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->attributeProviders:Ljava/util/List;

    .line 241
    invoke-static {p1}, Lorg/commonmark/renderer/html/HtmlRenderer;->access$900(Lorg/commonmark/renderer/html/HtmlRenderer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/renderer/html/AttributeProviderFactory;

    .line 242
    .local v1, "attributeProviderFactory":Lorg/commonmark/renderer/html/AttributeProviderFactory;
    iget-object v2, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->attributeProviders:Ljava/util/List;

    invoke-interface {v1, p0}, Lorg/commonmark/renderer/html/AttributeProviderFactory;->create(Lorg/commonmark/renderer/html/AttributeProviderContext;)Lorg/commonmark/renderer/html/AttributeProvider;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v1    # "attributeProviderFactory":Lorg/commonmark/renderer/html/AttributeProviderFactory;
    goto :goto_0

    .line 246
    :cond_0
    invoke-static {p1}, Lorg/commonmark/renderer/html/HtmlRenderer;->access$1000(Lorg/commonmark/renderer/html/HtmlRenderer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 247
    invoke-static {p1}, Lorg/commonmark/renderer/html/HtmlRenderer;->access$1000(Lorg/commonmark/renderer/html/HtmlRenderer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;

    .line 248
    .local v1, "nodeRendererFactory":Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;
    invoke-interface {v1, p0}, Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;->create(Lorg/commonmark/renderer/html/HtmlNodeRendererContext;)Lorg/commonmark/renderer/NodeRenderer;

    move-result-object v2

    .line 249
    .local v2, "nodeRenderer":Lorg/commonmark/renderer/NodeRenderer;
    iget-object v3, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->nodeRendererMap:Lorg/commonmark/internal/renderer/NodeRendererMap;

    invoke-virtual {v3, v2}, Lorg/commonmark/internal/renderer/NodeRendererMap;->add(Lorg/commonmark/renderer/NodeRenderer;)V

    .line 246
    .end local v1    # "nodeRendererFactory":Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;
    .end local v2    # "nodeRenderer":Lorg/commonmark/renderer/NodeRenderer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 251
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lorg/commonmark/renderer/html/HtmlRenderer;Lorg/commonmark/renderer/html/HtmlWriter;Lorg/commonmark/renderer/html/HtmlRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer;
    .param p2, "x1"    # Lorg/commonmark/renderer/html/HtmlWriter;
    .param p3, "x2"    # Lorg/commonmark/renderer/html/HtmlRenderer$1;

    .line 231
    invoke-direct {p0, p1, p2}, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;-><init>(Lorg/commonmark/renderer/html/HtmlRenderer;Lorg/commonmark/renderer/html/HtmlWriter;)V

    return-void
.end method

.method private setCustomAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "node"    # Lorg/commonmark/node/Node;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/node/Node;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 300
    .local p3, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->attributeProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/renderer/html/AttributeProvider;

    .line 301
    .local v1, "attributeProvider":Lorg/commonmark/renderer/html/AttributeProvider;
    invoke-interface {v1, p1, p2, p3}, Lorg/commonmark/renderer/html/AttributeProvider;->setAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)V

    .line 302
    .end local v1    # "attributeProvider":Lorg/commonmark/renderer/html/AttributeProvider;
    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->this$0:Lorg/commonmark/renderer/html/HtmlRenderer;

    invoke-static {v0}, Lorg/commonmark/renderer/html/HtmlRenderer;->access$1400(Lorg/commonmark/renderer/html/HtmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {p1}, Lorg/commonmark/internal/util/Escaping;->percentEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 273
    :cond_0
    return-object p1
.end method

.method public extendAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "node"    # Lorg/commonmark/node/Node;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/node/Node;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 280
    .local v0, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, v0}, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->setCustomAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)V

    .line 281
    return-object v0
.end method

.method public getSoftbreak()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->this$0:Lorg/commonmark/renderer/html/HtmlRenderer;

    invoke-static {v0}, Lorg/commonmark/renderer/html/HtmlRenderer;->access$1500(Lorg/commonmark/renderer/html/HtmlRenderer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Lorg/commonmark/renderer/html/HtmlWriter;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    return-object v0
.end method

.method public render(Lorg/commonmark/node/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 296
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->nodeRendererMap:Lorg/commonmark/internal/renderer/NodeRendererMap;

    invoke-virtual {v0, p1}, Lorg/commonmark/internal/renderer/NodeRendererMap;->render(Lorg/commonmark/node/Node;)V

    .line 297
    return-void
.end method

.method public shouldEscapeHtml()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->this$0:Lorg/commonmark/renderer/html/HtmlRenderer;

    invoke-static {v0}, Lorg/commonmark/renderer/html/HtmlRenderer;->access$1100(Lorg/commonmark/renderer/html/HtmlRenderer;)Z

    move-result v0

    return v0
.end method

.method public shouldSanitizeUrls()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->this$0:Lorg/commonmark/renderer/html/HtmlRenderer;

    invoke-static {v0}, Lorg/commonmark/renderer/html/HtmlRenderer;->access$1200(Lorg/commonmark/renderer/html/HtmlRenderer;)Z

    move-result v0

    return v0
.end method

.method public urlSanitizer()Lorg/commonmark/renderer/html/UrlSanitizer;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$RendererContext;->this$0:Lorg/commonmark/renderer/html/HtmlRenderer;

    invoke-static {v0}, Lorg/commonmark/renderer/html/HtmlRenderer;->access$1300(Lorg/commonmark/renderer/html/HtmlRenderer;)Lorg/commonmark/renderer/html/UrlSanitizer;

    move-result-object v0

    return-object v0
.end method
