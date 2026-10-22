.class public Lorg/commonmark/internal/InlineParserImpl;
.super Ljava/lang/Object;
.source "InlineParserImpl.java"

# interfaces
.implements Lorg/commonmark/parser/InlineParser;
.implements Lorg/commonmark/internal/inline/InlineParserState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/InlineParserImpl$DelimiterData;
    }
.end annotation


# instance fields
.field private final context:Lorg/commonmark/parser/InlineParserContext;

.field private final delimiterProcessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private includeSourceSpans:Z

.field private final inlineParsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/util/List<",
            "Lorg/commonmark/internal/inline/InlineContentParser;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastBracket:Lorg/commonmark/internal/Bracket;

.field private lastDelimiter:Lorg/commonmark/internal/Delimiter;

.field private scanner:Lorg/commonmark/internal/inline/Scanner;

.field private final specialCharacters:Ljava/util/BitSet;

.field private trailingSpaces:I


# direct methods
.method public constructor <init>(Lorg/commonmark/parser/InlineParserContext;)V
    .locals 6
    .param p1, "inlineParserContext"    # Lorg/commonmark/parser/InlineParserContext;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface {p1}, Lorg/commonmark/parser/InlineParserContext;->getCustomDelimiterProcessors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/commonmark/internal/InlineParserImpl;->calculateDelimiterProcessors(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->context:Lorg/commonmark/parser/InlineParserContext;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->inlineParsers:Ljava/util/Map;

    .line 43
    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lorg/commonmark/internal/inline/BackslashInlineParser;

    invoke-direct {v3}, Lorg/commonmark/internal/inline/BackslashInlineParser;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/16 v2, 0x60

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lorg/commonmark/internal/inline/BackticksInlineParser;

    invoke-direct {v3}, Lorg/commonmark/internal/inline/BackticksInlineParser;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lorg/commonmark/internal/inline/EntityInlineParser;

    invoke-direct {v3}, Lorg/commonmark/internal/inline/EntityInlineParser;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/commonmark/internal/inline/InlineContentParser;

    new-instance v4, Lorg/commonmark/internal/inline/AutolinkInlineParser;

    invoke-direct {v4}, Lorg/commonmark/internal/inline/AutolinkInlineParser;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/commonmark/internal/inline/HtmlInlineParser;

    invoke-direct {v4}, Lorg/commonmark/internal/inline/HtmlInlineParser;-><init>()V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/commonmark/internal/InlineParserImpl;->calculateSpecialCharacters(Ljava/util/Set;Ljava/util/Set;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->specialCharacters:Ljava/util/BitSet;

    .line 49
    return-void
.end method

.method private addBracket(Lorg/commonmark/internal/Bracket;)V
    .locals 2
    .param p1, "bracket"    # Lorg/commonmark/internal/Bracket;

    .line 381
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    if-eqz v0, :cond_0

    .line 382
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    .line 384
    :cond_0
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 385
    return-void
.end method

.method private static addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V
    .locals 4
    .param p0, "delimiterChar"    # C
    .param p1, "toAdd"    # Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p2, "delimiterProcessors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 106
    .local v0, "existing":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    if-nez v0, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delimiter processor conflict with delimiter char \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p0, "delimiterProcessors":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 80
    .local v1, "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    invoke-interface {v1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v2

    .line 81
    .local v2, "opening":C
    invoke-interface {v1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    move-result v3

    .line 82
    .local v3, "closing":C
    if-ne v2, v3, :cond_2

    .line 83
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 84
    .local v4, "old":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v5

    invoke-interface {v4}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    move-result v6

    if-ne v5, v6, :cond_1

    .line 86
    instance-of v5, v4, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    if-eqz v5, :cond_0

    .line 87
    move-object v5, v4

    check-cast v5, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    .local v5, "s":Lorg/commonmark/internal/StaggeredDelimiterProcessor;
    goto :goto_1

    .line 89
    .end local v5    # "s":Lorg/commonmark/internal/StaggeredDelimiterProcessor;
    :cond_0
    new-instance v5, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    invoke-direct {v5, v2}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;-><init>(C)V

    .line 90
    .restart local v5    # "s":Lorg/commonmark/internal/StaggeredDelimiterProcessor;
    invoke-virtual {v5, v4}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->add(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)V

    .line 92
    :goto_1
    invoke-virtual {v5, v1}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->add(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)V

    .line 93
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v5    # "s":Lorg/commonmark/internal/StaggeredDelimiterProcessor;
    goto :goto_2

    .line 95
    :cond_1
    invoke-static {v2, v1, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V

    .line 97
    .end local v4    # "old":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    :goto_2
    goto :goto_3

    .line 98
    :cond_2
    invoke-static {v2, v1, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V

    .line 99
    invoke-static {v3, v1, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V

    .line 101
    .end local v1    # "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .end local v2    # "opening":C
    .end local v3    # "closing":C
    :goto_3
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method

.method public static calculateDelimiterProcessors(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation

    .line 67
    .local p0, "delimiterProcessors":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    new-instance v2, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;

    invoke-direct {v2}, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/commonmark/internal/inline/UnderscoreDelimiterProcessor;

    invoke-direct {v2}, Lorg/commonmark/internal/inline/UnderscoreDelimiterProcessor;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/Map;)V

    .line 69
    invoke-static {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/Map;)V

    .line 70
    return-object v0
.end method

.method public static calculateSpecialCharacters(Ljava/util/Set;Ljava/util/Set;)Ljava/util/BitSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    .line 52
    .local p0, "delimiterCharacters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .local p1, "characters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 53
    .local v0, "bitSet":Ljava/util/BitSet;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 54
    .local v2, "c":Ljava/lang/Character;
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 55
    .end local v2    # "c":Ljava/lang/Character;
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 57
    .restart local v2    # "c":Ljava/lang/Character;
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 58
    .end local v2    # "c":Ljava/lang/Character;
    goto :goto_1

    .line 59
    :cond_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 60
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 61
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 62
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 63
    return-object v0
.end method

.method private mergeChildTextNodes(Lorg/commonmark/node/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 675
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 676
    return-void

    .line 679
    :cond_0
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getLastChild()Lorg/commonmark/node/Node;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/commonmark/internal/InlineParserImpl;->mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    .line 680
    return-void
.end method

.method private mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V
    .locals 6
    .param p1, "first"    # Lorg/commonmark/node/Text;
    .param p2, "last"    # Lorg/commonmark/node/Text;
    .param p3, "textLength"    # I

    .line 714
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eq p1, p2, :cond_3

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 716
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const/4 v1, 0x0

    .line 718
    .local v1, "sourceSpans":Lorg/commonmark/node/SourceSpans;
    iget-boolean v2, p0, Lorg/commonmark/internal/InlineParserImpl;->includeSourceSpans:Z

    if-eqz v2, :cond_0

    .line 719
    new-instance v2, Lorg/commonmark/node/SourceSpans;

    invoke-direct {v2}, Lorg/commonmark/node/SourceSpans;-><init>()V

    move-object v1, v2

    .line 720
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getSourceSpans()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/commonmark/node/SourceSpans;->addAll(Ljava/util/List;)V

    .line 722
    :cond_0
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object v2

    .line 723
    .local v2, "node":Lorg/commonmark/node/Node;
    invoke-virtual {p2}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object v3

    .line 724
    .local v3, "stop":Lorg/commonmark/node/Node;
    :goto_0
    if-eq v2, v3, :cond_2

    .line 725
    move-object v4, v2

    check-cast v4, Lorg/commonmark/node/Text;

    invoke-virtual {v4}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    if-eqz v1, :cond_1

    .line 727
    invoke-virtual {v2}, Lorg/commonmark/node/Node;->getSourceSpans()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/commonmark/node/SourceSpans;->addAll(Ljava/util/List;)V

    .line 730
    :cond_1
    move-object v4, v2

    .line 731
    .local v4, "unlink":Lorg/commonmark/node/Node;
    invoke-virtual {v2}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v2

    .line 732
    invoke-virtual {v4}, Lorg/commonmark/node/Node;->unlink()V

    .line 733
    .end local v4    # "unlink":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 734
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 735
    .local v4, "literal":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lorg/commonmark/node/Text;->setLiteral(Ljava/lang/String;)V

    .line 736
    if-eqz v1, :cond_3

    .line 737
    invoke-virtual {v1}, Lorg/commonmark/node/SourceSpans;->getSourceSpans()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/commonmark/node/Text;->setSourceSpans(Ljava/util/List;)V

    .line 740
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "sourceSpans":Lorg/commonmark/node/SourceSpans;
    .end local v2    # "node":Lorg/commonmark/node/Node;
    .end local v3    # "stop":Lorg/commonmark/node/Node;
    .end local v4    # "literal":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V
    .locals 6
    .param p1, "fromNode"    # Lorg/commonmark/node/Node;
    .param p2, "toNode"    # Lorg/commonmark/node/Node;

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "first":Lorg/commonmark/node/Text;
    const/4 v1, 0x0

    .line 685
    .local v1, "last":Lorg/commonmark/node/Text;
    const/4 v2, 0x0

    .line 687
    .local v2, "length":I
    move-object v3, p1

    .line 688
    .local v3, "node":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v3, :cond_3

    .line 689
    instance-of v4, v3, Lorg/commonmark/node/Text;

    if-eqz v4, :cond_1

    .line 690
    move-object v4, v3

    check-cast v4, Lorg/commonmark/node/Text;

    .line 691
    .local v4, "text":Lorg/commonmark/node/Text;
    if-nez v0, :cond_0

    .line 692
    move-object v0, v4

    .line 694
    :cond_0
    invoke-virtual {v4}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 695
    move-object v1, v4

    .line 696
    .end local v4    # "text":Lorg/commonmark/node/Text;
    goto :goto_1

    .line 697
    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lorg/commonmark/internal/InlineParserImpl;->mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    .line 698
    const/4 v0, 0x0

    .line 699
    const/4 v1, 0x0

    .line 700
    const/4 v2, 0x0

    .line 702
    invoke-direct {p0, v3}, Lorg/commonmark/internal/InlineParserImpl;->mergeChildTextNodes(Lorg/commonmark/node/Node;)V

    .line 704
    :goto_1
    if-ne v3, p2, :cond_2

    .line 705
    goto :goto_2

    .line 707
    :cond_2
    invoke-virtual {v3}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v3

    goto :goto_0

    .line 710
    :cond_3
    :goto_2
    invoke-direct {p0, v0, v1, v2}, Lorg/commonmark/internal/InlineParserImpl;->mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    .line 711
    return-void
.end method

.method private parseBang()Lorg/commonmark/node/Node;
    .locals 5

    .line 246
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    .line 247
    .local v0, "start":Lorg/commonmark/internal/inline/Position;
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v1}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 248
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v1

    .line 250
    .local v1, "contentPosition":Lorg/commonmark/internal/inline/Position;
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v2, v0, v1}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->text(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/node/Text;

    move-result-object v2

    .line 253
    .local v2, "node":Lorg/commonmark/node/Text;
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    invoke-static {v2, v0, v1, v3, v4}, Lorg/commonmark/internal/Bracket;->image(Lorg/commonmark/node/Text;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;)Lorg/commonmark/internal/Bracket;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/commonmark/internal/InlineParserImpl;->addBracket(Lorg/commonmark/internal/Bracket;)V

    .line 254
    return-object v2

    .line 256
    .end local v1    # "contentPosition":Lorg/commonmark/internal/inline/Position;
    .end local v2    # "node":Lorg/commonmark/node/Text;
    :cond_0
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->text(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/node/Text;

    move-result-object v1

    return-object v1
.end method

.method private parseCloseBracket()Lorg/commonmark/node/Node;
    .locals 10

    .line 265
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    .line 266
    .local v0, "beforeClose":Lorg/commonmark/internal/inline/Position;
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v1}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 267
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v1

    .line 270
    .local v1, "afterClose":Lorg/commonmark/internal/inline/Position;
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 271
    .local v2, "opener":Lorg/commonmark/internal/Bracket;
    if-nez v2, :cond_0

    .line 273
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v3, v0, v1}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/commonmark/internal/InlineParserImpl;->text(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/node/Text;

    move-result-object v3

    return-object v3

    .line 276
    :cond_0
    iget-boolean v3, v2, Lorg/commonmark/internal/Bracket;->allowed:Z

    if-nez v3, :cond_1

    .line 278
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->removeLastBracket()V

    .line 279
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v3, v0, v1}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/commonmark/internal/InlineParserImpl;->text(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/node/Text;

    move-result-object v3

    return-object v3

    .line 283
    :cond_1
    const/4 v3, 0x0

    .line 284
    .local v3, "dest":Ljava/lang/String;
    const/4 v4, 0x0

    .line 287
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 288
    iget-object v5, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v5}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    .line 289
    iget-object v5, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-direct {p0, v5}, Lorg/commonmark/internal/InlineParserImpl;->parseLinkDestination(Lorg/commonmark/internal/inline/Scanner;)Ljava/lang/String;

    move-result-object v3

    .line 290
    if-nez v3, :cond_2

    .line 291
    iget-object v5, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v5, v1}, Lorg/commonmark/internal/inline/Scanner;->setPosition(Lorg/commonmark/internal/inline/Position;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v5, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v5}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    move-result v5

    .line 295
    .local v5, "whitespace":I
    const/4 v6, 0x1

    if-lt v5, v6, :cond_3

    .line 296
    iget-object v6, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-direct {p0, v6}, Lorg/commonmark/internal/InlineParserImpl;->parseLinkTitle(Lorg/commonmark/internal/inline/Scanner;)Ljava/lang/String;

    move-result-object v4

    .line 297
    iget-object v6, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v6}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    .line 299
    :cond_3
    iget-object v6, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v6

    if-nez v6, :cond_4

    .line 302
    iget-object v6, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v6, v1}, Lorg/commonmark/internal/inline/Scanner;->setPosition(Lorg/commonmark/internal/inline/Position;)V

    .line 303
    const/4 v3, 0x0

    .line 304
    const/4 v4, 0x0

    .line 312
    .end local v5    # "whitespace":I
    :cond_4
    :goto_0
    if-nez v3, :cond_8

    .line 314
    iget-object v5, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {p0, v5}, Lorg/commonmark/internal/InlineParserImpl;->parseLinkLabel(Lorg/commonmark/internal/inline/Scanner;)Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "ref":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 316
    iget-object v6, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v6, v1}, Lorg/commonmark/internal/inline/Scanner;->setPosition(Lorg/commonmark/internal/inline/Position;)V

    .line 318
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-boolean v6, v2, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    if-nez v6, :cond_7

    .line 322
    iget-object v6, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    iget-object v7, v2, Lorg/commonmark/internal/Bracket;->contentPosition:Lorg/commonmark/internal/inline/Position;

    invoke-virtual {v6, v7, v0}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v6

    invoke-virtual {v6}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v5

    .line 325
    :cond_7
    if-eqz v5, :cond_8

    .line 326
    iget-object v6, p0, Lorg/commonmark/internal/InlineParserImpl;->context:Lorg/commonmark/parser/InlineParserContext;

    invoke-interface {v6, v5}, Lorg/commonmark/parser/InlineParserContext;->getLinkReferenceDefinition(Ljava/lang/String;)Lorg/commonmark/node/LinkReferenceDefinition;

    move-result-object v6

    .line 327
    .local v6, "definition":Lorg/commonmark/node/LinkReferenceDefinition;
    if-eqz v6, :cond_8

    .line 328
    invoke-virtual {v6}, Lorg/commonmark/node/LinkReferenceDefinition;->getDestination()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-virtual {v6}, Lorg/commonmark/node/LinkReferenceDefinition;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 334
    .end local v5    # "ref":Ljava/lang/String;
    .end local v6    # "definition":Lorg/commonmark/node/LinkReferenceDefinition;
    :cond_8
    if-eqz v3, :cond_e

    .line 336
    iget-boolean v5, v2, Lorg/commonmark/internal/Bracket;->image:Z

    if-eqz v5, :cond_9

    new-instance v5, Lorg/commonmark/node/Image;

    invoke-direct {v5, v3, v4}, Lorg/commonmark/node/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance v5, Lorg/commonmark/node/Link;

    invoke-direct {v5, v3, v4}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v5, "linkOrImage":Lorg/commonmark/node/Node;
    :goto_1
    iget-object v6, v2, Lorg/commonmark/internal/Bracket;->node:Lorg/commonmark/node/Text;

    invoke-virtual {v6}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object v6

    .line 340
    .local v6, "node":Lorg/commonmark/node/Node;
    :goto_2
    if-eqz v6, :cond_a

    .line 341
    invoke-virtual {v6}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v7

    .line 342
    .local v7, "next":Lorg/commonmark/node/Node;
    invoke-virtual {v5, v6}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 343
    move-object v6, v7

    .line 344
    .end local v7    # "next":Lorg/commonmark/node/Node;
    goto :goto_2

    .line 346
    :cond_a
    iget-boolean v7, p0, Lorg/commonmark/internal/InlineParserImpl;->includeSourceSpans:Z

    if-eqz v7, :cond_b

    .line 347
    iget-object v7, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    iget-object v8, v2, Lorg/commonmark/internal/Bracket;->markerPosition:Lorg/commonmark/internal/inline/Position;

    iget-object v9, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v9}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v7

    invoke-virtual {v7}, Lorg/commonmark/parser/SourceLines;->getSourceSpans()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/commonmark/node/Node;->setSourceSpans(Ljava/util/List;)V

    .line 351
    :cond_b
    iget-object v7, v2, Lorg/commonmark/internal/Bracket;->previousDelimiter:Lorg/commonmark/internal/Delimiter;

    invoke-direct {p0, v7}, Lorg/commonmark/internal/InlineParserImpl;->processDelimiters(Lorg/commonmark/internal/Delimiter;)V

    .line 352
    invoke-direct {p0, v5}, Lorg/commonmark/internal/InlineParserImpl;->mergeChildTextNodes(Lorg/commonmark/node/Node;)V

    .line 354
    iget-object v7, v2, Lorg/commonmark/internal/Bracket;->node:Lorg/commonmark/node/Text;

    invoke-virtual {v7}, Lorg/commonmark/node/Text;->unlink()V

    .line 355
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->removeLastBracket()V

    .line 358
    iget-boolean v7, v2, Lorg/commonmark/internal/Bracket;->image:Z

    if-nez v7, :cond_d

    .line 359
    iget-object v7, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 360
    .local v7, "bracket":Lorg/commonmark/internal/Bracket;
    :goto_3
    if-eqz v7, :cond_d

    .line 361
    iget-boolean v8, v7, Lorg/commonmark/internal/Bracket;->image:Z

    if-nez v8, :cond_c

    .line 363
    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/commonmark/internal/Bracket;->allowed:Z

    .line 365
    :cond_c
    iget-object v7, v7, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    goto :goto_3

    .line 369
    .end local v7    # "bracket":Lorg/commonmark/internal/Bracket;
    :cond_d
    return-object v5

    .line 373
    .end local v5    # "linkOrImage":Lorg/commonmark/node/Node;
    .end local v6    # "node":Lorg/commonmark/node/Node;
    :cond_e
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->removeLastBracket()V

    .line 375
    iget-object v5, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v5, v1}, Lorg/commonmark/internal/inline/Scanner;->setPosition(Lorg/commonmark/internal/inline/Position;)V

    .line 376
    iget-object v5, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v5, v0, v1}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/commonmark/internal/InlineParserImpl;->text(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/node/Text;

    move-result-object v5

    return-object v5
.end method

.method private parseDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Ljava/util/List;
    .locals 9
    .param p1, "delimiterProcessor"    # Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .param p2, "delimiterChar"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            "C)",
            "Ljava/util/List<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Lorg/commonmark/internal/InlineParserImpl;->scanDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Lorg/commonmark/internal/InlineParserImpl$DelimiterData;

    move-result-object v0

    .line 210
    .local v0, "res":Lorg/commonmark/internal/InlineParserImpl$DelimiterData;
    if-nez v0, :cond_0

    .line 211
    const/4 v1, 0x0

    return-object v1

    .line 214
    :cond_0
    iget-object v1, v0, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->characters:Ljava/util/List;

    .line 217
    .local v1, "characters":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/Text;>;"
    new-instance v8, Lorg/commonmark/internal/Delimiter;

    iget-boolean v5, v0, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->canOpen:Z

    iget-boolean v6, v0, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->canClose:Z

    iget-object v7, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    move-object v2, v8

    move-object v3, v1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/commonmark/internal/Delimiter;-><init>(Ljava/util/List;CZZLorg/commonmark/internal/Delimiter;)V

    iput-object v8, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 218
    iget-object v2, v8, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    iget-object v2, v2, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    iput-object v3, v2, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 222
    :cond_1
    return-object v1
.end method

.method private parseInline()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v0

    .line 155
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 169
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->specialCharacters:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseText()Lorg/commonmark/node/Node;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 161
    :sswitch_0
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseCloseBracket()Lorg/commonmark/node/Node;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 157
    :sswitch_1
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseOpenBracket()Lorg/commonmark/node/Node;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 159
    :sswitch_2
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseBang()Lorg/commonmark/node/Node;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 163
    :sswitch_3
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseLineBreak()Lorg/commonmark/node/Node;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 165
    :sswitch_4
    const/4 v1, 0x0

    return-object v1

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->inlineParsers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 174
    .local v1, "inlineParsers":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/internal/inline/InlineContentParser;>;"
    if-eqz v1, :cond_3

    .line 175
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v2}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v2

    .line 176
    .local v2, "position":Lorg/commonmark/internal/inline/Position;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/commonmark/internal/inline/InlineContentParser;

    .line 177
    .local v4, "inlineParser":Lorg/commonmark/internal/inline/InlineContentParser;
    invoke-interface {v4, p0}, Lorg/commonmark/internal/inline/InlineContentParser;->tryParse(Lorg/commonmark/internal/inline/InlineParserState;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v5

    .line 178
    .local v5, "parsedInline":Lorg/commonmark/internal/inline/ParsedInline;
    instance-of v6, v5, Lorg/commonmark/internal/inline/ParsedInlineImpl;

    if-eqz v6, :cond_2

    .line 179
    move-object v3, v5

    check-cast v3, Lorg/commonmark/internal/inline/ParsedInlineImpl;

    .line 180
    .local v3, "parsedInlineImpl":Lorg/commonmark/internal/inline/ParsedInlineImpl;
    invoke-virtual {v3}, Lorg/commonmark/internal/inline/ParsedInlineImpl;->getNode()Lorg/commonmark/node/Node;

    move-result-object v6

    .line 181
    .local v6, "node":Lorg/commonmark/node/Node;
    iget-object v7, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v3}, Lorg/commonmark/internal/inline/ParsedInlineImpl;->getPosition()Lorg/commonmark/internal/inline/Position;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/commonmark/internal/inline/Scanner;->setPosition(Lorg/commonmark/internal/inline/Position;)V

    .line 182
    iget-boolean v7, p0, Lorg/commonmark/internal/InlineParserImpl;->includeSourceSpans:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lorg/commonmark/node/Node;->getSourceSpans()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 183
    iget-object v7, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v7}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v7

    invoke-virtual {v7}, Lorg/commonmark/parser/SourceLines;->getSourceSpans()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/commonmark/node/Node;->setSourceSpans(Ljava/util/List;)V

    .line 185
    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    return-object v7

    .line 188
    .end local v3    # "parsedInlineImpl":Lorg/commonmark/internal/inline/ParsedInlineImpl;
    .end local v6    # "node":Lorg/commonmark/node/Node;
    :cond_2
    iget-object v6, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v6, v2}, Lorg/commonmark/internal/inline/Scanner;->setPosition(Lorg/commonmark/internal/inline/Position;)V

    .line 190
    .end local v4    # "inlineParser":Lorg/commonmark/internal/inline/InlineContentParser;
    .end local v5    # "parsedInline":Lorg/commonmark/internal/inline/ParsedInline;
    goto :goto_0

    .line 193
    .end local v2    # "position":Lorg/commonmark/internal/inline/Position;
    :cond_3
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 194
    .local v2, "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    if-eqz v2, :cond_4

    .line 195
    invoke-direct {p0, v2, v0}, Lorg/commonmark/internal/InlineParserImpl;->parseDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Ljava/util/List;

    move-result-object v3

    .line 196
    .local v3, "nodes":Ljava/util/List;, "Ljava/util/List<+Lorg/commonmark/node/Node;>;"
    if-eqz v3, :cond_4

    .line 197
    return-object v3

    .line 202
    .end local v3    # "nodes":Ljava/util/List;, "Ljava/util/List<+Lorg/commonmark/node/Node;>;"
    :cond_4
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseText()Lorg/commonmark/node/Node;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0xa -> :sswitch_3
        0x21 -> :sswitch_2
        0x5b -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private parseLineBreak()Lorg/commonmark/node/Node;
    .locals 2

    .line 456
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 458
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->trailingSpaces:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 459
    new-instance v0, Lorg/commonmark/node/HardLineBreak;

    invoke-direct {v0}, Lorg/commonmark/node/HardLineBreak;-><init>()V

    return-object v0

    .line 461
    :cond_0
    new-instance v0, Lorg/commonmark/node/SoftLineBreak;

    invoke-direct {v0}, Lorg/commonmark/node/SoftLineBreak;-><init>()V

    return-object v0
.end method

.method private parseLinkDestination(Lorg/commonmark/internal/inline/Scanner;)Ljava/lang/String;
    .locals 5
    .param p1, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 395
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v0

    .line 396
    .local v0, "delimiter":C
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v1

    .line 397
    .local v1, "start":Lorg/commonmark/internal/inline/Position;
    invoke-static {p1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkDestination(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    const/4 v2, 0x0

    return-object v2

    .line 402
    :cond_0
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1

    .line 404
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v2

    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "rawDestination":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "dest":Ljava/lang/String;
    goto :goto_0

    .line 407
    .end local v2    # "dest":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v2

    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 410
    .restart local v2    # "dest":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private parseLinkTitle(Lorg/commonmark/internal/inline/Scanner;)Ljava/lang/String;
    .locals 4
    .param p1, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 417
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    .line 418
    .local v0, "start":Lorg/commonmark/internal/inline/Position;
    invoke-static {p1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkTitle(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    const/4 v1, 0x0

    return-object v1

    .line 423
    :cond_0
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v1

    invoke-virtual {v1}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "rawTitle":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private parseOpenBracket()Lorg/commonmark/node/Node;
    .locals 5

    .line 229
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    .line 230
    .local v0, "start":Lorg/commonmark/internal/inline/Position;
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v1}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 231
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v1

    .line 233
    .local v1, "contentPosition":Lorg/commonmark/internal/inline/Position;
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v2, v0, v1}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->text(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/node/Text;

    move-result-object v2

    .line 236
    .local v2, "node":Lorg/commonmark/node/Text;
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    invoke-static {v2, v0, v1, v3, v4}, Lorg/commonmark/internal/Bracket;->link(Lorg/commonmark/node/Text;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;)Lorg/commonmark/internal/Bracket;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/commonmark/internal/InlineParserImpl;->addBracket(Lorg/commonmark/internal/Bracket;)V

    .line 238
    return-object v2
.end method

.method private parseText()Lorg/commonmark/node/Node;
    .locals 7

    .line 469
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    .line 470
    .local v0, "start":Lorg/commonmark/internal/inline/Position;
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v1}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 473
    :goto_0
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v1}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v1

    .line 474
    .local v1, "c":C
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->specialCharacters:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    goto :goto_1

    .line 477
    :cond_0
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v2}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_0

    .line 480
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v2}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v2

    .line 481
    .local v2, "source":Lorg/commonmark/parser/SourceLines;
    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "content":Ljava/lang/String;
    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    .line 485
    const/16 v4, 0x20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v3, v6, v5}, Lorg/commonmark/internal/util/Parsing;->skipBackwards(CLjava/lang/CharSequence;II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 486
    .local v4, "end":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    iput v6, p0, Lorg/commonmark/internal/InlineParserImpl;->trailingSpaces:I

    .line 487
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v4    # "end":I
    goto :goto_2

    .line 488
    :cond_2
    if-nez v1, :cond_3

    .line 490
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4, v5}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTabBackwards(Ljava/lang/CharSequence;II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 491
    .restart local v4    # "end":I
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 488
    .end local v4    # "end":I
    :cond_3
    :goto_2
    nop

    .line 494
    :goto_3
    new-instance v4, Lorg/commonmark/node/Text;

    invoke-direct {v4, v3}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 495
    .local v4, "text":Lorg/commonmark/node/Text;
    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLines;->getSourceSpans()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/commonmark/node/Text;->setSourceSpans(Ljava/util/List;)V

    .line 496
    return-object v4
.end method

.method private processDelimiters(Lorg/commonmark/internal/Delimiter;)V
    .locals 12
    .param p1, "stackBottom"    # Lorg/commonmark/internal/Delimiter;

    .line 552
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 555
    .local v0, "openersBottom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lorg/commonmark/internal/Delimiter;>;"
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 556
    .local v1, "closer":Lorg/commonmark/internal/Delimiter;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    if-eq v2, p1, :cond_0

    .line 557
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    goto :goto_0

    .line 560
    :cond_0
    :goto_1
    if-eqz v1, :cond_b

    .line 561
    iget-char v2, v1, Lorg/commonmark/internal/Delimiter;->delimiterChar:C

    .line 563
    .local v2, "delimiterChar":C
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 564
    .local v3, "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    invoke-virtual {v1}, Lorg/commonmark/internal/Delimiter;->canClose()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v3, :cond_1

    goto/16 :goto_6

    .line 569
    :cond_1
    invoke-interface {v3}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v4

    .line 572
    .local v4, "openingDelimiterChar":C
    const/4 v5, 0x0

    .line 573
    .local v5, "usedDelims":I
    const/4 v6, 0x0

    .line 574
    .local v6, "openerFound":Z
    const/4 v7, 0x0

    .line 575
    .local v7, "potentialOpenerFound":Z
    iget-object v8, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 576
    .local v8, "opener":Lorg/commonmark/internal/Delimiter;
    :goto_2
    if-eqz v8, :cond_3

    if-eq v8, p1, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_3

    .line 577
    invoke-virtual {v8}, Lorg/commonmark/internal/Delimiter;->canOpen()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-char v9, v8, Lorg/commonmark/internal/Delimiter;->delimiterChar:C

    if-ne v9, v4, :cond_2

    .line 578
    const/4 v7, 0x1

    .line 579
    invoke-interface {v3, v8, v1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->process(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I

    move-result v5

    .line 580
    if-lez v5, :cond_2

    .line 581
    const/4 v6, 0x1

    .line 582
    goto :goto_3

    .line 585
    :cond_2
    iget-object v8, v8, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    goto :goto_2

    .line 588
    :cond_3
    :goto_3
    if-nez v6, :cond_5

    .line 589
    if-nez v7, :cond_4

    .line 597
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    iget-object v10, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-virtual {v1}, Lorg/commonmark/internal/Delimiter;->canOpen()Z

    move-result v9

    if-nez v9, :cond_4

    .line 601
    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V

    .line 604
    :cond_4
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 605
    goto :goto_1

    .line 609
    :cond_5
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v5, :cond_6

    .line 610
    iget-object v10, v8, Lorg/commonmark/internal/Delimiter;->characters:Ljava/util/List;

    iget-object v11, v8, Lorg/commonmark/internal/Delimiter;->characters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/commonmark/node/Text;

    .line 611
    .local v10, "delimiter":Lorg/commonmark/node/Text;
    invoke-virtual {v10}, Lorg/commonmark/node/Text;->unlink()V

    .line 609
    .end local v10    # "delimiter":Lorg/commonmark/node/Text;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 613
    .end local v9    # "i":I
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    if-ge v9, v5, :cond_7

    .line 614
    iget-object v10, v1, Lorg/commonmark/internal/Delimiter;->characters:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/commonmark/node/Text;

    .line 615
    .restart local v10    # "delimiter":Lorg/commonmark/node/Text;
    invoke-virtual {v10}, Lorg/commonmark/node/Text;->unlink()V

    .line 613
    .end local v10    # "delimiter":Lorg/commonmark/node/Text;
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 618
    .end local v9    # "i":I
    :cond_7
    invoke-direct {p0, v8, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimitersBetween(Lorg/commonmark/internal/Delimiter;Lorg/commonmark/internal/Delimiter;)V

    .line 621
    invoke-virtual {v8}, Lorg/commonmark/internal/Delimiter;->length()I

    move-result v9

    if-nez v9, :cond_8

    .line 622
    invoke-direct {p0, v8}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterAndNodes(Lorg/commonmark/internal/Delimiter;)V

    .line 625
    :cond_8
    invoke-virtual {v1}, Lorg/commonmark/internal/Delimiter;->length()I

    move-result v9

    if-nez v9, :cond_9

    .line 626
    iget-object v9, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 627
    .local v9, "next":Lorg/commonmark/internal/Delimiter;
    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterAndNodes(Lorg/commonmark/internal/Delimiter;)V

    .line 628
    move-object v1, v9

    .line 630
    .end local v2    # "delimiterChar":C
    .end local v3    # "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .end local v4    # "openingDelimiterChar":C
    .end local v5    # "usedDelims":I
    .end local v6    # "openerFound":Z
    .end local v7    # "potentialOpenerFound":Z
    .end local v8    # "opener":Lorg/commonmark/internal/Delimiter;
    .end local v9    # "next":Lorg/commonmark/internal/Delimiter;
    :cond_9
    goto/16 :goto_1

    .line 565
    .restart local v2    # "delimiterChar":C
    .restart local v3    # "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    :cond_a
    :goto_6
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 566
    goto/16 :goto_1

    .line 633
    .end local v2    # "delimiterChar":C
    .end local v3    # "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    :cond_b
    :goto_7
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    if-eqz v2, :cond_c

    if-eq v2, p1, :cond_c

    .line 634
    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V

    goto :goto_7

    .line 636
    :cond_c
    return-void
.end method

.method private removeDelimiter(Lorg/commonmark/internal/Delimiter;)V
    .locals 2
    .param p1, "delim"    # Lorg/commonmark/internal/Delimiter;

    .line 662
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iget-object v1, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    iput-object v1, v0, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 665
    :cond_0
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    iget-object v1, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iput-object v1, v0, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 671
    :goto_0
    return-void
.end method

.method private removeDelimiterAndNodes(Lorg/commonmark/internal/Delimiter;)V
    .locals 0
    .param p1, "delim"    # Lorg/commonmark/internal/Delimiter;

    .line 651
    invoke-direct {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    .line 652
    return-void
.end method

.method private removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V
    .locals 0
    .param p1, "delim"    # Lorg/commonmark/internal/Delimiter;

    .line 658
    invoke-direct {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    .line 659
    return-void
.end method

.method private removeDelimitersBetween(Lorg/commonmark/internal/Delimiter;Lorg/commonmark/internal/Delimiter;)V
    .locals 2
    .param p1, "opener"    # Lorg/commonmark/internal/Delimiter;
    .param p2, "closer"    # Lorg/commonmark/internal/Delimiter;

    .line 639
    iget-object v0, p2, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 640
    .local v0, "delimiter":Lorg/commonmark/internal/Delimiter;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 641
    iget-object v1, v0, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 642
    .local v1, "previousDelimiter":Lorg/commonmark/internal/Delimiter;
    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V

    .line 643
    move-object v0, v1

    .line 644
    .end local v1    # "previousDelimiter":Lorg/commonmark/internal/Delimiter;
    goto :goto_0

    .line 645
    :cond_0
    return-void
.end method

.method private removeLastBracket()V
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    iget-object v0, v0, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 389
    return-void
.end method

.method private scanDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Lorg/commonmark/internal/InlineParserImpl$DelimiterData;
    .locals 17
    .param p1, "delimiterProcessor"    # Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .param p2, "delimiterChar"    # C

    .line 506
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v2}, Lorg/commonmark/internal/inline/Scanner;->peekPreviousCodePoint()I

    move-result v2

    .line 507
    .local v2, "before":I
    iget-object v3, v0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v3}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v3

    .line 510
    .local v3, "start":Lorg/commonmark/internal/inline/Position;
    iget-object v4, v0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v4, v1}, Lorg/commonmark/internal/inline/Scanner;->matchMultiple(C)I

    move-result v4

    .line 511
    .local v4, "delimiterCount":I
    invoke-interface/range {p1 .. p1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getMinLength()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 512
    iget-object v5, v0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v5, v3}, Lorg/commonmark/internal/inline/Scanner;->setPosition(Lorg/commonmark/internal/inline/Position;)V

    .line 513
    const/4 v5, 0x0

    return-object v5

    .line 517
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v5, "delimiters":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/Text;>;"
    iget-object v6, v0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v6, v3}, Lorg/commonmark/internal/inline/Scanner;->setPosition(Lorg/commonmark/internal/inline/Position;)V

    .line 519
    move-object v6, v3

    .line 520
    .local v6, "positionBefore":Lorg/commonmark/internal/inline/Position;
    :goto_0
    iget-object v7, v0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v7, v1}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 521
    iget-object v7, v0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v7}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/commonmark/internal/InlineParserImpl;->text(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/node/Text;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v7, v0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v7}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v6

    goto :goto_0

    .line 525
    :cond_1
    iget-object v7, v0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {v7}, Lorg/commonmark/internal/inline/Scanner;->peekCodePoint()I

    move-result v7

    .line 528
    .local v7, "after":I
    if-eqz v2, :cond_3

    invoke-static {v2}, Lorg/commonmark/internal/util/Parsing;->isPunctuationCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v10, 0x1

    .line 529
    .local v10, "beforeIsPunctuation":Z
    :goto_2
    if-eqz v2, :cond_5

    invoke-static {v2}, Lorg/commonmark/internal/util/Parsing;->isWhitespaceCodePoint(I)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v11, 0x1

    .line 530
    .local v11, "beforeIsWhitespace":Z
    :goto_4
    if-eqz v7, :cond_7

    invoke-static {v7}, Lorg/commonmark/internal/util/Parsing;->isPunctuationCodePoint(I)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v12, 0x1

    .line 531
    .local v12, "afterIsPunctuation":Z
    :goto_6
    if-eqz v7, :cond_9

    invoke-static {v7}, Lorg/commonmark/internal/util/Parsing;->isWhitespaceCodePoint(I)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v13, 0x1

    .line 533
    .local v13, "afterIsWhitespace":Z
    :goto_8
    if-nez v13, :cond_b

    if-eqz v12, :cond_a

    if-nez v11, :cond_a

    if-eqz v10, :cond_b

    :cond_a
    const/4 v14, 0x1

    goto :goto_9

    :cond_b
    const/4 v14, 0x0

    .line 535
    .local v14, "leftFlanking":Z
    :goto_9
    if-nez v11, :cond_d

    if-eqz v10, :cond_c

    if-nez v13, :cond_c

    if-eqz v12, :cond_d

    :cond_c
    const/4 v15, 0x1

    goto :goto_a

    :cond_d
    const/4 v15, 0x0

    .line 539
    .local v15, "rightFlanking":Z
    :goto_a
    const/16 v8, 0x5f

    if-ne v1, v8, :cond_12

    .line 540
    if-eqz v14, :cond_f

    if-eqz v15, :cond_e

    if-eqz v10, :cond_f

    :cond_e
    const/4 v8, 0x1

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    .line 541
    .local v8, "canOpen":Z
    :goto_b
    if-eqz v15, :cond_11

    if-eqz v14, :cond_10

    if-eqz v12, :cond_11

    :cond_10
    const/16 v16, 0x1

    goto :goto_c

    :cond_11
    const/16 v16, 0x0

    :goto_c
    move/from16 v9, v16

    .local v9, "canClose":Z
    goto :goto_f

    .line 543
    .end local v8    # "canOpen":Z
    .end local v9    # "canClose":Z
    :cond_12
    if-eqz v14, :cond_13

    invoke-interface/range {p1 .. p1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v8

    if-ne v1, v8, :cond_13

    const/4 v8, 0x1

    goto :goto_d

    :cond_13
    const/4 v8, 0x0

    .line 544
    .restart local v8    # "canOpen":Z
    :goto_d
    if-eqz v15, :cond_14

    invoke-interface/range {p1 .. p1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    move-result v9

    if-ne v1, v9, :cond_14

    const/16 v16, 0x1

    goto :goto_e

    :cond_14
    const/16 v16, 0x0

    :goto_e
    move/from16 v9, v16

    .line 547
    .restart local v9    # "canClose":Z
    :goto_f
    new-instance v0, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;

    invoke-direct {v0, v5, v8, v9}, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;-><init>(Ljava/util/List;ZZ)V

    return-object v0
.end method

.method private text(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/node/Text;
    .locals 2
    .param p1, "sourceLines"    # Lorg/commonmark/parser/SourceLines;

    .line 142
    new-instance v0, Lorg/commonmark/node/Text;

    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "text":Lorg/commonmark/node/Text;
    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLines;->getSourceSpans()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/node/Text;->setSourceSpans(Ljava/util/List;)V

    .line 144
    return-object v0
.end method


# virtual methods
.method public parse(Lorg/commonmark/parser/SourceLines;Lorg/commonmark/node/Node;)V
    .locals 3
    .param p1, "lines"    # Lorg/commonmark/parser/SourceLines;
    .param p2, "block"    # Lorg/commonmark/node/Node;

    .line 116
    invoke-virtual {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->reset(Lorg/commonmark/parser/SourceLines;)V

    .line 119
    :goto_0
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseInline()Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<+Lorg/commonmark/node/Node;>;"
    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/node/Node;

    .line 122
    .local v2, "node":Lorg/commonmark/node/Node;
    invoke-virtual {p2, v2}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 123
    .end local v2    # "node":Lorg/commonmark/node/Node;
    goto :goto_1

    .line 127
    .end local v0    # "nodes":Ljava/util/List;, "Ljava/util/List<+Lorg/commonmark/node/Node;>;"
    :cond_0
    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->processDelimiters(Lorg/commonmark/internal/Delimiter;)V

    .line 130
    invoke-direct {p0, p2}, Lorg/commonmark/internal/InlineParserImpl;->mergeChildTextNodes(Lorg/commonmark/node/Node;)V

    .line 131
    return-void
.end method

.method parseLinkLabel(Lorg/commonmark/internal/inline/Scanner;)Ljava/lang/String;
    .locals 6
    .param p1, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 432
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 433
    return-object v1

    .line 436
    :cond_0
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    .line 437
    .local v0, "start":Lorg/commonmark/internal/inline/Position;
    invoke-static {p1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkLabelContent(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 438
    return-object v1

    .line 440
    :cond_1
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v2

    .line 442
    .local v2, "end":Lorg/commonmark/internal/inline/Position;
    const/16 v3, 0x5d

    invoke-virtual {p1, v3}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 443
    return-object v1

    .line 446
    :cond_2
    invoke-virtual {p1, v0, v2}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v3

    invoke-virtual {v3}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "content":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_3

    .line 449
    return-object v1

    .line 452
    :cond_3
    return-object v3
.end method

.method reset(Lorg/commonmark/parser/SourceLines;)V
    .locals 1
    .param p1, "lines"    # Lorg/commonmark/parser/SourceLines;

    .line 134
    invoke-static {p1}, Lorg/commonmark/internal/inline/Scanner;->of(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/internal/inline/Scanner;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    .line 135
    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLines;->getSourceSpans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/commonmark/internal/InlineParserImpl;->includeSourceSpans:Z

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->trailingSpaces:I

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 138
    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 139
    return-void
.end method

.method public scanner()Lorg/commonmark/internal/inline/Scanner;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->scanner:Lorg/commonmark/internal/inline/Scanner;

    return-object v0
.end method
