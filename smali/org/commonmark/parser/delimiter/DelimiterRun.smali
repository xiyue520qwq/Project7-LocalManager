.class public interface abstract Lorg/commonmark/parser/delimiter/DelimiterRun;
.super Ljava/lang/Object;
.source "DelimiterRun.java"


# virtual methods
.method public abstract canClose()Z
.end method

.method public abstract canOpen()Z
.end method

.method public abstract getCloser()Lorg/commonmark/node/Text;
.end method

.method public abstract getClosers(I)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "Lorg/commonmark/node/Text;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOpener()Lorg/commonmark/node/Text;
.end method

.method public abstract getOpeners(I)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "Lorg/commonmark/node/Text;",
            ">;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract originalLength()I
.end method
