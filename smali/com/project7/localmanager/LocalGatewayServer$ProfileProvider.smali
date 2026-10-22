.class interface abstract Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;
.super Ljava/lang/Object;
.source "LocalGatewayServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalGatewayServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ProfileProvider"
.end annotation


# virtual methods
.method public clientCompatibility()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const-string v0, ""

    return-object v0
.end method

.method public abstract ensureHero(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract savePlayerName(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public snapshot(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-interface {p0, p1, p2}, Lcom/project7/localmanager/LocalGatewayServer$ProfileProvider;->load(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract updateCommerce(Ljava/lang/String;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalCommerceEngine$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateEconomy(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalEconomyEngine$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateProfile(Ljava/lang/String;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalProfileEngine$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateResources(Ljava/lang/String;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract updateServices(Ljava/lang/String;Ljava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
