.class final Lcom/project7/localmanager/ProtoLite$EntityMessage;
.super Ljava/lang/Object;
.source "ProtoLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/ProtoLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntityMessage"
.end annotation


# instance fields
.field id:[B

.field methodMd5:[B

.field parameters:[B


# direct methods
.method constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    .line 10
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    .line 11
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    return-void
.end method
