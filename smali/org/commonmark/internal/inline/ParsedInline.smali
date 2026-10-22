.class public abstract Lorg/commonmark/internal/inline/ParsedInline;
.super Ljava/lang/Object;
.source "ParsedInline.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static none()Lorg/commonmark/internal/inline/ParsedInline;
    .locals 1

    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static of(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;
    .locals 2
    .param p0, "node"    # Lorg/commonmark/node/Node;
    .param p1, "position"    # Lorg/commonmark/internal/inline/Position;

    .line 15
    if-eqz p0, :cond_1

    .line 18
    if-eqz p1, :cond_0

    .line 21
    new-instance v0, Lorg/commonmark/internal/inline/ParsedInlineImpl;

    invoke-direct {v0, p0, p1}, Lorg/commonmark/internal/inline/ParsedInlineImpl;-><init>(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)V

    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
