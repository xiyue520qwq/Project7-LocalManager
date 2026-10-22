.class final Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;
.super Ljava/lang/Object;
.source "LocalStoryEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalStoryEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Fixture"
.end annotation


# instance fields
.field final random:Ljava/util/Random;

.field final seed:J

.field sequence:J

.field final time:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;->time:J

    iput-wide p3, p0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;->seed:J

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1, p3, p4}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;->random:Ljava/util/Random;

    return-void
.end method
