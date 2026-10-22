.class Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;
.super Ljava/lang/Object;
.source "DocumentParser.java"

# interfaces
.implements Lorg/commonmark/parser/block/MatchedBlockParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/DocumentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchedBlockParserImpl"
.end annotation


# instance fields
.field private final matchedBlockParser:Lorg/commonmark/parser/block/BlockParser;


# direct methods
.method public constructor <init>(Lorg/commonmark/parser/block/BlockParser;)V
    .locals 0
    .param p1, "matchedBlockParser"    # Lorg/commonmark/parser/block/BlockParser;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;->matchedBlockParser:Lorg/commonmark/parser/block/BlockParser;

    .line 551
    return-void
.end method


# virtual methods
.method public getMatchedBlockParser()Lorg/commonmark/parser/block/BlockParser;
    .locals 1

    .line 555
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;->matchedBlockParser:Lorg/commonmark/parser/block/BlockParser;

    return-object v0
.end method

.method public getParagraphLines()Lorg/commonmark/parser/SourceLines;
    .locals 2

    .line 560
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;->matchedBlockParser:Lorg/commonmark/parser/block/BlockParser;

    instance-of v1, v0, Lorg/commonmark/internal/ParagraphParser;

    if-eqz v1, :cond_0

    .line 561
    check-cast v0, Lorg/commonmark/internal/ParagraphParser;

    .line 562
    .local v0, "paragraphParser":Lorg/commonmark/internal/ParagraphParser;
    invoke-virtual {v0}, Lorg/commonmark/internal/ParagraphParser;->getParagraphLines()Lorg/commonmark/parser/SourceLines;

    move-result-object v1

    return-object v1

    .line 564
    .end local v0    # "paragraphParser":Lorg/commonmark/internal/ParagraphParser;
    :cond_0
    invoke-static {}, Lorg/commonmark/parser/SourceLines;->empty()Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    return-object v0
.end method
