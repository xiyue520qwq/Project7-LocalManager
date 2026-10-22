.class public Lorg/commonmark/internal/Bracket;
.super Ljava/lang/Object;
.source "Bracket.java"


# instance fields
.field public allowed:Z

.field public bracketAfter:Z

.field public final contentPosition:Lorg/commonmark/internal/inline/Position;

.field public final image:Z

.field public final markerPosition:Lorg/commonmark/internal/inline/Position;

.field public final node:Lorg/commonmark/node/Text;

.field public final previous:Lorg/commonmark/internal/Bracket;

.field public final previousDelimiter:Lorg/commonmark/internal/Delimiter;


# direct methods
.method private constructor <init>(Lorg/commonmark/node/Text;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;Z)V
    .locals 1
    .param p1, "node"    # Lorg/commonmark/node/Text;
    .param p2, "markerPosition"    # Lorg/commonmark/internal/inline/Position;
    .param p3, "contentPosition"    # Lorg/commonmark/internal/inline/Position;
    .param p4, "previous"    # Lorg/commonmark/internal/Bracket;
    .param p5, "previousDelimiter"    # Lorg/commonmark/internal/Delimiter;
    .param p6, "image"    # Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/commonmark/internal/Bracket;->allowed:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    .line 57
    iput-object p1, p0, Lorg/commonmark/internal/Bracket;->node:Lorg/commonmark/node/Text;

    .line 58
    iput-object p2, p0, Lorg/commonmark/internal/Bracket;->markerPosition:Lorg/commonmark/internal/inline/Position;

    .line 59
    iput-object p3, p0, Lorg/commonmark/internal/Bracket;->contentPosition:Lorg/commonmark/internal/inline/Position;

    .line 60
    iput-boolean p6, p0, Lorg/commonmark/internal/Bracket;->image:Z

    .line 61
    iput-object p4, p0, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    .line 62
    iput-object p5, p0, Lorg/commonmark/internal/Bracket;->previousDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 63
    return-void
.end method

.method public static image(Lorg/commonmark/node/Text;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;)Lorg/commonmark/internal/Bracket;
    .locals 8
    .param p0, "node"    # Lorg/commonmark/node/Text;
    .param p1, "markerPosition"    # Lorg/commonmark/internal/inline/Position;
    .param p2, "contentPosition"    # Lorg/commonmark/internal/inline/Position;
    .param p3, "previous"    # Lorg/commonmark/internal/Bracket;
    .param p4, "previousDelimiter"    # Lorg/commonmark/internal/Delimiter;

    .line 53
    new-instance v7, Lorg/commonmark/internal/Bracket;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/commonmark/internal/Bracket;-><init>(Lorg/commonmark/node/Text;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;Z)V

    return-object v7
.end method

.method public static link(Lorg/commonmark/node/Text;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;)Lorg/commonmark/internal/Bracket;
    .locals 8
    .param p0, "node"    # Lorg/commonmark/node/Text;
    .param p1, "markerPosition"    # Lorg/commonmark/internal/inline/Position;
    .param p2, "contentPosition"    # Lorg/commonmark/internal/inline/Position;
    .param p3, "previous"    # Lorg/commonmark/internal/Bracket;
    .param p4, "previousDelimiter"    # Lorg/commonmark/internal/Delimiter;

    .line 49
    new-instance v7, Lorg/commonmark/internal/Bracket;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/commonmark/internal/Bracket;-><init>(Lorg/commonmark/node/Text;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;Z)V

    return-object v7
.end method
