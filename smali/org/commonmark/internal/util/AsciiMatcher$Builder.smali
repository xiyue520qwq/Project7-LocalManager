.class public Lorg/commonmark/internal/util/AsciiMatcher$Builder;
.super Ljava/lang/Object;
.source "AsciiMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/util/AsciiMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final set:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Ljava/util/BitSet;)V
    .locals 0
    .param p1, "set"    # Ljava/util/BitSet;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->set:Ljava/util/BitSet;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/BitSet;Lorg/commonmark/internal/util/AsciiMatcher$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/BitSet;
    .param p2, "x1"    # Lorg/commonmark/internal/util/AsciiMatcher$1;

    .line 25
    invoke-direct {p0, p1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;-><init>(Ljava/util/BitSet;)V

    return-void
.end method

.method static synthetic access$000(Lorg/commonmark/internal/util/AsciiMatcher$Builder;)Ljava/util/BitSet;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    .line 25
    iget-object v0, p0, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->set:Ljava/util/BitSet;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/commonmark/internal/util/AsciiMatcher;
    .locals 2

    .line 48
    new-instance v0, Lorg/commonmark/internal/util/AsciiMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/commonmark/internal/util/AsciiMatcher;-><init>(Lorg/commonmark/internal/util/AsciiMatcher$Builder;Lorg/commonmark/internal/util/AsciiMatcher$1;)V

    return-object v0
.end method

.method public c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;
    .locals 2
    .param p1, "c"    # C

    .line 33
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->set:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 37
    return-object p0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only match ASCII characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;
    .locals 2
    .param p1, "from"    # C
    .param p2, "toInclusive"    # C

    .line 41
    move v0, p1

    .local v0, "c":C
    :goto_0
    if-gt v0, p2, :cond_0

    .line 42
    invoke-virtual {p0, v0}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    .line 41
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 44
    .end local v0    # "c":C
    :cond_0
    return-object p0
.end method
