.class final Lcom/project7/localmanager/LocalStoryConditions$Evaluation;
.super Ljava/lang/Object;
.source "LocalStoryConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalStoryConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Evaluation"
.end annotation


# instance fields
.field final reason:Ljava/lang/String;

.field final satisfied:Z

.field final status:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;->satisfied:Z

    iput-object p2, p0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;->status:Ljava/lang/String;

    iput-object p3, p0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;->reason:Ljava/lang/String;

    .line 36
    return-void
.end method
