.class final Lcom/project7/localmanager/LocalStoryEnvironment$Scope;
.super Ljava/lang/Object;
.source "LocalStoryEnvironment.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalStoryEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Scope"
.end annotation


# instance fields
.field private closed:Z

.field private final previous:Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;


# direct methods
.method constructor <init>(Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;

    iput-object v0, p0, Lcom/project7/localmanager/LocalStoryEnvironment$Scope;->previous:Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;

    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 21
    iget-boolean v0, p0, Lcom/project7/localmanager/LocalStoryEnvironment$Scope;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalStoryEnvironment$Scope;->previous:Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v0

    iget-object v1, p0, Lcom/project7/localmanager/LocalStoryEnvironment$Scope;->previous:Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 23
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/project7/localmanager/LocalStoryEnvironment$Scope;->closed:Z

    .line 24
    return-void
.end method
