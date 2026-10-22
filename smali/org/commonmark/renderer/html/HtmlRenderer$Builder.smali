.class public Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/renderer/html/HtmlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private attributeProviderFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/renderer/html/AttributeProviderFactory;",
            ">;"
        }
    .end annotation
.end field

.field private escapeHtml:Z

.field private nodeRendererFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;",
            ">;"
        }
    .end annotation
.end field

.field private percentEncodeUrls:Z

.field private sanitizeUrls:Z

.field private softbreak:Ljava/lang/String;

.field private urlSanitizer:Lorg/commonmark/renderer/html/UrlSanitizer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "\n"

    iput-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->softbreak:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->escapeHtml:Z

    .line 88
    iput-boolean v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->sanitizeUrls:Z

    .line 89
    new-instance v1, Lorg/commonmark/renderer/html/DefaultUrlSanitizer;

    invoke-direct {v1}, Lorg/commonmark/renderer/html/DefaultUrlSanitizer;-><init>()V

    iput-object v1, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->urlSanitizer:Lorg/commonmark/renderer/html/UrlSanitizer;

    .line 90
    iput-boolean v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->percentEncodeUrls:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->attributeProviderFactories:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 84
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->softbreak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 84
    iget-boolean v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->escapeHtml:Z

    return v0
.end method

.method static synthetic access$200(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 84
    iget-boolean v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->sanitizeUrls:Z

    return v0
.end method

.method static synthetic access$300(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 84
    iget-boolean v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->percentEncodeUrls:Z

    return v0
.end method

.method static synthetic access$400(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Lorg/commonmark/renderer/html/UrlSanitizer;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 84
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->urlSanitizer:Lorg/commonmark/renderer/html/UrlSanitizer;

    return-object v0
.end method

.method static synthetic access$500(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 84
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->attributeProviderFactories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 84
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public attributeProviderFactory(Lorg/commonmark/renderer/html/AttributeProviderFactory;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 2
    .param p1, "attributeProviderFactory"    # Lorg/commonmark/renderer/html/AttributeProviderFactory;

    .line 181
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->attributeProviderFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-object p0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeProviderFactory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lorg/commonmark/renderer/html/HtmlRenderer;
    .locals 2

    .line 98
    new-instance v0, Lorg/commonmark/renderer/html/HtmlRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/commonmark/renderer/html/HtmlRenderer;-><init>(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;Lorg/commonmark/renderer/html/HtmlRenderer$1;)V

    return-object v0
.end method

.method public escapeHtml(Z)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 0
    .param p1, "escapeHtml"    # Z

    .line 127
    iput-boolean p1, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->escapeHtml:Z

    .line 128
    return-object p0
.end method

.method public extensions(Ljava/lang/Iterable;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/commonmark/Extension;",
            ">;)",
            "Lorg/commonmark/renderer/html/HtmlRenderer$Builder;"
        }
    .end annotation

    .line 211
    .local p1, "extensions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/commonmark/Extension;>;"
    if-eqz p1, :cond_2

    .line 214
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/Extension;

    .line 215
    .local v1, "extension":Lorg/commonmark/Extension;
    instance-of v2, v1, Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;

    if-eqz v2, :cond_0

    .line 216
    move-object v2, v1

    check-cast v2, Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;

    .line 217
    .local v2, "htmlRendererExtension":Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;
    invoke-interface {v2, p0}, Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;->extend(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)V

    .line 219
    .end local v1    # "extension":Lorg/commonmark/Extension;
    .end local v2    # "htmlRendererExtension":Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;
    :cond_0
    goto :goto_0

    .line 220
    :cond_1
    return-object p0

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "extensions must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nodeRendererFactory(Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 2
    .param p1, "nodeRendererFactory"    # Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;

    .line 199
    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-object p0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nodeRendererFactory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public percentEncodeUrls(Z)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 0
    .param p1, "percentEncodeUrls"    # Z

    .line 170
    iput-boolean p1, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->percentEncodeUrls:Z

    .line 171
    return-object p0
.end method

.method public sanitizeUrls(Z)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 0
    .param p1, "sanitizeUrls"    # Z

    .line 139
    iput-boolean p1, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->sanitizeUrls:Z

    .line 140
    return-object p0
.end method

.method public softbreak(Ljava/lang/String;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 0
    .param p1, "softbreak"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->softbreak:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public urlSanitizer(Lorg/commonmark/renderer/html/UrlSanitizer;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;
    .locals 0
    .param p1, "urlSanitizer"    # Lorg/commonmark/renderer/html/UrlSanitizer;

    .line 151
    iput-object p1, p0, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->urlSanitizer:Lorg/commonmark/renderer/html/UrlSanitizer;

    .line 152
    return-object p0
.end method
