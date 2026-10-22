.class Lorg/commonmark/internal/BlockContent;
.super Ljava/lang/Object;
.source "BlockContent.java"


# instance fields
.field private lineCount:I

.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/BlockContent;->lineCount:I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/BlockContent;->sb:Ljava/lang/StringBuilder;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/BlockContent;->lineCount:I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/commonmark/internal/BlockContent;->sb:Ljava/lang/StringBuilder;

    .line 15
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/CharSequence;

    .line 18
    iget v0, p0, Lorg/commonmark/internal/BlockContent;->lineCount:I

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lorg/commonmark/internal/BlockContent;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/BlockContent;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 22
    iget v0, p0, Lorg/commonmark/internal/BlockContent;->lineCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/BlockContent;->lineCount:I

    .line 23
    return-void
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/commonmark/internal/BlockContent;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
