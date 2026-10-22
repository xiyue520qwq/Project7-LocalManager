.class Lorg/commonmark/internal/ListBlockParser$ListData;
.super Ljava/lang/Object;
.source "ListBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/ListBlockParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListData"
.end annotation


# instance fields
.field final contentColumn:I

.field final listBlock:Lorg/commonmark/node/ListBlock;


# direct methods
.method constructor <init>(Lorg/commonmark/node/ListBlock;I)V
    .locals 0
    .param p1, "listBlock"    # Lorg/commonmark/node/ListBlock;
    .param p2, "contentColumn"    # I

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    .line 243
    iput p2, p0, Lorg/commonmark/internal/ListBlockParser$ListData;->contentColumn:I

    .line 244
    return-void
.end method
