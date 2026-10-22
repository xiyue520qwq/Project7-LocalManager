.class public Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;
.super Ljava/lang/Object;
.source "StrikethroughExtension.java"

# interfaces
.implements Lorg/commonmark/parser/Parser$ParserExtension;
.implements Lorg/commonmark/renderer/html/HtmlRenderer$HtmlRendererExtension;
.implements Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;
    }
.end annotation


# instance fields
.field private final requireTwoTildes:Z


# direct methods
.method private constructor <init>(Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;->access$000(Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;->requireTwoTildes:Z

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;
    .param p2, "x1"    # Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$1;

    .line 44
    invoke-direct {p0, p1}, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;-><init>(Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;)V

    return-void
.end method

.method public static builder()Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;
    .locals 1

    .line 64
    new-instance v0, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;

    invoke-direct {v0}, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;-><init>()V

    return-object v0
.end method

.method public static create()Lorg/commonmark/Extension;
    .locals 1

    .line 57
    invoke-static {}, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;->builder()Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;->build()Lorg/commonmark/Extension;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public extend(Lorg/commonmark/parser/Parser$Builder;)V
    .locals 2
    .param p1, "parserBuilder"    # Lorg/commonmark/parser/Parser$Builder;

    .line 69
    new-instance v0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughDelimiterProcessor;

    iget-boolean v1, p0, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;->requireTwoTildes:Z

    invoke-direct {v0, v1}, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughDelimiterProcessor;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/commonmark/parser/Parser$Builder;->customDelimiterProcessor(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)Lorg/commonmark/parser/Parser$Builder;

    .line 70
    return-void
.end method

.method public extend(Lorg/commonmark/renderer/html/HtmlRenderer$Builder;)V
    .locals 1
    .param p1, "rendererBuilder"    # Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 74
    new-instance v0, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$1;

    invoke-direct {v0, p0}, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$1;-><init>(Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;)V

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlRenderer$Builder;->nodeRendererFactory(Lorg/commonmark/renderer/html/HtmlNodeRendererFactory;)Lorg/commonmark/renderer/html/HtmlRenderer$Builder;

    .line 80
    return-void
.end method

.method public extend(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)V
    .locals 1
    .param p1, "rendererBuilder"    # Lorg/commonmark/renderer/text/TextContentRenderer$Builder;

    .line 84
    new-instance v0, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$2;

    invoke-direct {v0, p0}, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$2;-><init>(Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;)V

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->nodeRendererFactory(Lorg/commonmark/renderer/text/TextContentNodeRendererFactory;)Lorg/commonmark/renderer/text/TextContentRenderer$Builder;

    .line 90
    return-void
.end method
