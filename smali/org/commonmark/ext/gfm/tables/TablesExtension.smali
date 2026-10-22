.class public Lorg/commonmark/ext/gfm/tables/TablesExtension;
.super Ljava/lang/Object;
.source "TablesExtension.java"

# interfaces
.implements Lorg/commonmark/parser/Parser$ParserExtension;
.implements Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;
.implements Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static create()Lorg/commonmark/Extension;
    .locals 1

    .line 36
    new-instance v0, Lorg/commonmark/ext/gfm/tables/TablesExtension;

    invoke-direct {v0}, Lorg/commonmark/ext/gfm/tables/TablesExtension;-><init>()V

    return-object v0
.end method


# virtual methods
.method public extend(Lorg/commonmark/parser/Parser$Builder;)V
    .locals 1
    .param p1, "parserBuilder"    # Lorg/commonmark/parser/Parser$Builder;

    .line 41
    new-instance v0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser$Factory;

    invoke-direct {v0}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser$Factory;-><init>()V

    invoke-virtual {p1, v0}, Lorg/commonmark/parser/Parser$Builder;->customBlockParserFactory(Lorg/commonmark/parser/block/BlockParserFactory;)Lorg/commonmark/parser/Parser$Builder;

    .line 42
    return-void
.end method

.method public extend(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)V
    .locals 1
    .param p1, "rendererBuilder"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 46
    new-instance v0, Lorg/commonmark/ext/gfm/tables/TablesExtension$1;

    invoke-direct {v0, p0}, Lorg/commonmark/ext/gfm/tables/TablesExtension$1;-><init>(Lorg/commonmark/ext/gfm/tables/TablesExtension;)V

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->nodeRendererFactory(Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 52
    return-void
.end method

.method public extend(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)V
    .locals 1
    .param p1, "rendererBuilder"    # Lorg/commonmark/renderer/text/TextContentRenderer$Builder;

    .line 56
    new-instance v0, Lorg/commonmark/ext/gfm/tables/TablesExtension$2;

    invoke-direct {v0, p0}, Lorg/commonmark/ext/gfm/tables/TablesExtension$2;-><init>(Lorg/commonmark/ext/gfm/tables/TablesExtension;)V

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->nodeRendererFactory(Lorg/commonmark/renderer/text/TextContentNodeRendererFactory;)Lorg/commonmark/renderer/text/TextContentRenderer$Builder;

    .line 62
    return-void
.end method
