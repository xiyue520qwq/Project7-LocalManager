.class Lorg/commonmark/internal/DocumentParser$OpenBlockParser;
.super Ljava/lang/Object;
.source "DocumentParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/DocumentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenBlockParser"
.end annotation


# instance fields
.field private final blockParser:Lorg/commonmark/parser/block/BlockParser;

.field private sourceIndex:I


# direct methods
.method constructor <init>(Lorg/commonmark/parser/block/BlockParser;I)V
    .locals 0
    .param p1, "blockParser"    # Lorg/commonmark/parser/block/BlockParser;
    .param p2, "sourceIndex"    # I

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-object p1, p0, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->blockParser:Lorg/commonmark/parser/block/BlockParser;

    .line 574
    iput p2, p0, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->sourceIndex:I

    .line 575
    return-void
.end method

.method static synthetic access$000(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)Lorg/commonmark/parser/block/BlockParser;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    .line 568
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->blockParser:Lorg/commonmark/parser/block/BlockParser;

    return-object v0
.end method

.method static synthetic access$100(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)I
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    .line 568
    iget v0, p0, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->sourceIndex:I

    return v0
.end method

.method static synthetic access$102(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;I)I
    .locals 0
    .param p0, "x0"    # Lorg/commonmark/internal/DocumentParser$OpenBlockParser;
    .param p1, "x1"    # I

    .line 568
    iput p1, p0, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->sourceIndex:I

    return p1
.end method
