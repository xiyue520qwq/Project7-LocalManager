.class final Lcom/project7/localmanager/LocalAccountStore$Result;
.super Ljava/lang/Object;
.source "LocalAccountStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalAccountStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field final accepted:Z

.field final registered:Z

.field final username:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/project7/localmanager/LocalAccountStore$Result;->username:Ljava/lang/String;

    .line 231
    iput-boolean p2, p0, Lcom/project7/localmanager/LocalAccountStore$Result;->accepted:Z

    .line 232
    iput-boolean p3, p0, Lcom/project7/localmanager/LocalAccountStore$Result;->registered:Z

    .line 233
    return-void
.end method

.method static authenticated(Ljava/lang/String;)Lcom/project7/localmanager/LocalAccountStore$Result;
    .locals 3

    .line 236
    new-instance v0, Lcom/project7/localmanager/LocalAccountStore$Result;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/project7/localmanager/LocalAccountStore$Result;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static registered(Ljava/lang/String;)Lcom/project7/localmanager/LocalAccountStore$Result;
    .locals 2

    .line 240
    new-instance v0, Lcom/project7/localmanager/LocalAccountStore$Result;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/project7/localmanager/LocalAccountStore$Result;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static rejected(Ljava/lang/String;)Lcom/project7/localmanager/LocalAccountStore$Result;
    .locals 2

    .line 244
    new-instance v0, Lcom/project7/localmanager/LocalAccountStore$Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/project7/localmanager/LocalAccountStore$Result;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method
