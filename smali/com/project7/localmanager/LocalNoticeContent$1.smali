.class Lcom/project7/localmanager/LocalNoticeContent$1;
.super Lorg/commonmark/node/AbstractVisitor;
.source "LocalNoticeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/project7/localmanager/LocalNoticeContent;->markdown(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/commonmark/node/AbstractVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/commonmark/node/Image;)V
    .locals 3

    .line 31
    invoke-static {}, Lorg/commonmark/renderer/text/TextContentRenderer;->builder()Lorg/commonmark/renderer/text/TextContentRenderer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->build()Lorg/commonmark/renderer/text/TextContentRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/text/TextContentRenderer;->render(Lorg/commonmark/node/Node;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Lorg/commonmark/node/Text;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "[\u56fe\u7247]"

    :cond_0
    invoke-direct {v1, v0}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/commonmark/node/Image;->insertBefore(Lorg/commonmark/node/Node;)V

    .line 33
    invoke-virtual {p1}, Lorg/commonmark/node/Image;->unlink()V

    .line 34
    return-void
.end method
