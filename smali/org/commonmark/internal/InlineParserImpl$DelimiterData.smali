.class Lorg/commonmark/internal/InlineParserImpl$DelimiterData;
.super Ljava/lang/Object;
.source "InlineParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/InlineParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelimiterData"
.end annotation


# instance fields
.field final canClose:Z

.field final canOpen:Z

.field final characters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/node/Text;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;ZZ)V
    .locals 0
    .param p2, "canOpen"    # Z
    .param p3, "canClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/node/Text;",
            ">;ZZ)V"
        }
    .end annotation

    .line 748
    .local p1, "characters":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/Text;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->characters:Ljava/util/List;

    .line 750
    iput-boolean p2, p0, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->canOpen:Z

    .line 751
    iput-boolean p3, p0, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->canClose:Z

    .line 752
    return-void
.end method
