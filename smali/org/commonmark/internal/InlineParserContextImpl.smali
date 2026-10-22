.class public Lorg/commonmark/internal/InlineParserContextImpl;
.super Ljava/lang/Object;
.source "InlineParserContextImpl.java"

# interfaces
.implements Lorg/commonmark/parser/InlineParserContext;


# instance fields
.field private final delimiterProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final linkReferenceDefinitions:Lorg/commonmark/internal/LinkReferenceDefinitions;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/commonmark/internal/LinkReferenceDefinitions;)V
    .locals 0
    .param p2, "linkReferenceDefinitions"    # Lorg/commonmark/internal/LinkReferenceDefinitions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;",
            "Lorg/commonmark/internal/LinkReferenceDefinitions;",
            ")V"
        }
    .end annotation

    .line 16
    .local p1, "delimiterProcessors":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserContextImpl;->delimiterProcessors:Ljava/util/List;

    .line 18
    iput-object p2, p0, Lorg/commonmark/internal/InlineParserContextImpl;->linkReferenceDefinitions:Lorg/commonmark/internal/LinkReferenceDefinitions;

    .line 19
    return-void
.end method


# virtual methods
.method public getCustomDelimiterProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserContextImpl;->delimiterProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getLinkReferenceDefinition(Ljava/lang/String;)Lorg/commonmark/node/LinkReferenceDefinition;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserContextImpl;->linkReferenceDefinitions:Lorg/commonmark/internal/LinkReferenceDefinitions;

    invoke-virtual {v0, p1}, Lorg/commonmark/internal/LinkReferenceDefinitions;->get(Ljava/lang/String;)Lorg/commonmark/node/LinkReferenceDefinition;

    move-result-object v0

    return-object v0
.end method
