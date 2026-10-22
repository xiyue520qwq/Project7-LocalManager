.class public Lorg/commonmark/parser/SourceLine;
.super Ljava/lang/Object;
.source "SourceLine.java"


# instance fields
.field private final content:Ljava/lang/CharSequence;

.field private final sourceSpan:Lorg/commonmark/node/SourceSpan;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/CharSequence;
    .param p2, "sourceSpan"    # Lorg/commonmark/node/SourceSpan;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lorg/commonmark/parser/SourceLine;->content:Ljava/lang/CharSequence;

    .line 24
    iput-object p2, p0, Lorg/commonmark/parser/SourceLine;->sourceSpan:Lorg/commonmark/node/SourceSpan;

    .line 25
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)Lorg/commonmark/parser/SourceLine;
    .locals 1
    .param p0, "content"    # Ljava/lang/CharSequence;
    .param p1, "sourceSpan"    # Lorg/commonmark/node/SourceSpan;

    .line 16
    new-instance v0, Lorg/commonmark/parser/SourceLine;

    invoke-direct {v0, p0, p1}, Lorg/commonmark/parser/SourceLine;-><init>(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)V

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/commonmark/parser/SourceLine;->content:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSourceSpan()Lorg/commonmark/node/SourceSpan;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/commonmark/parser/SourceLine;->sourceSpan:Lorg/commonmark/node/SourceSpan;

    return-object v0
.end method

.method public substring(II)Lorg/commonmark/parser/SourceLine;
    .locals 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 36
    iget-object v0, p0, Lorg/commonmark/parser/SourceLine;->content:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 37
    .local v0, "newContent":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 38
    .local v1, "newSourceSpan":Lorg/commonmark/node/SourceSpan;
    iget-object v2, p0, Lorg/commonmark/parser/SourceLine;->sourceSpan:Lorg/commonmark/node/SourceSpan;

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v2}, Lorg/commonmark/node/SourceSpan;->getColumnIndex()I

    move-result v2

    add-int/2addr v2, p1

    .line 40
    .local v2, "columnIndex":I
    sub-int v3, p2, p1

    .line 41
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 42
    iget-object v4, p0, Lorg/commonmark/parser/SourceLine;->sourceSpan:Lorg/commonmark/node/SourceSpan;

    invoke-virtual {v4}, Lorg/commonmark/node/SourceSpan;->getLineIndex()I

    move-result v4

    invoke-static {v4, v2, v3}, Lorg/commonmark/node/SourceSpan;->of(III)Lorg/commonmark/node/SourceSpan;

    move-result-object v1

    .line 45
    .end local v2    # "columnIndex":I
    .end local v3    # "length":I
    :cond_0
    invoke-static {v0, v1}, Lorg/commonmark/parser/SourceLine;->of(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)Lorg/commonmark/parser/SourceLine;

    move-result-object v2

    return-object v2
.end method
