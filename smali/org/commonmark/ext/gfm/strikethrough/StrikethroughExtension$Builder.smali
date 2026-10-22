.class public Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;
.super Ljava/lang/Object;
.source "StrikethroughExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private requireTwoTildes:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;->requireTwoTildes:Z

    return-void
.end method

.method static synthetic access$000(Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;

    .line 92
    iget-boolean v0, p0, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;->requireTwoTildes:Z

    return v0
.end method


# virtual methods
.method public build()Lorg/commonmark/Extension;
    .locals 2

    .line 110
    new-instance v0, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;-><init>(Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$1;)V

    return-object v0
.end method

.method public requireTwoTildes(Z)Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;
    .locals 0
    .param p1, "requireTwoTildes"    # Z

    .line 102
    iput-boolean p1, p0, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension$Builder;->requireTwoTildes:Z

    .line 103
    return-object p0
.end method
