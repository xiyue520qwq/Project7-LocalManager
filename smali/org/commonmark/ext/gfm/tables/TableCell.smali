.class public Lorg/commonmark/ext/gfm/tables/TableCell;
.super Lorg/commonmark/node/CustomNode;
.source "TableCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;
    }
.end annotation


# instance fields
.field private alignment:Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

.field private header:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/commonmark/node/CustomNode;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignment()Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/TableCell;->alignment:Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    return-object v0
.end method

.method public isHeader()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lorg/commonmark/ext/gfm/tables/TableCell;->header:Z

    return v0
.end method

.method public setAlignment(Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;)V
    .locals 0
    .param p1, "alignment"    # Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    .line 32
    iput-object p1, p0, Lorg/commonmark/ext/gfm/tables/TableCell;->alignment:Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    .line 33
    return-void
.end method

.method public setHeader(Z)V
    .locals 0
    .param p1, "header"    # Z

    .line 21
    iput-boolean p1, p0, Lorg/commonmark/ext/gfm/tables/TableCell;->header:Z

    .line 22
    return-void
.end method
