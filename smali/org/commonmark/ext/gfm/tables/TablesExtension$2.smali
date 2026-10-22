.class Lorg/commonmark/ext/gfm/tables/TablesExtension$2;
.super Ljava/lang/Object;
.source "TablesExtension.java"

# interfaces
.implements Lorg/commonmark/renderer/text/TextContentNodeRendererFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/commonmark/ext/gfm/tables/TablesExtension;->extend(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/commonmark/ext/gfm/tables/TablesExtension;


# direct methods
.method constructor <init>(Lorg/commonmark/ext/gfm/tables/TablesExtension;)V
    .locals 0
    .param p1, "this$0"    # Lorg/commonmark/ext/gfm/tables/TablesExtension;

    .line 56
    iput-object p1, p0, Lorg/commonmark/ext/gfm/tables/TablesExtension$2;->this$0:Lorg/commonmark/ext/gfm/tables/TablesExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/commonmark/renderer/text/TextContentNodeRendererContext;)Lorg/commonmark/renderer/NodeRenderer;
    .locals 1
    .param p1, "context"    # Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    .line 59
    new-instance v0, Lorg/commonmark/ext/gfm/tables/internal/TableTextContentNodeRenderer;

    invoke-direct {v0, p1}, Lorg/commonmark/ext/gfm/tables/internal/TableTextContentNodeRenderer;-><init>(Lorg/commonmark/renderer/text/TextContentNodeRendererContext;)V

    return-object v0
.end method
