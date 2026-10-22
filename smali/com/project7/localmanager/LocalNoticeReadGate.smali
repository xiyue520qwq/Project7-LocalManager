.class final Lcom/project7/localmanager/LocalNoticeReadGate;
.super Ljava/lang/Object;
.source "LocalNoticeReadGate.java"


# static fields
.field static final REQUIRED_MILLIS:J = 0x2710L


# instance fields
.field private readMillis:J

.field private visibleSince:J


# direct methods
.method constructor <init>(ZJ)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/project7/localmanager/LocalNoticeReadGate;->visibleSince:J

    .line 10
    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/project7/localmanager/LocalNoticeReadGate;->readMillis:J

    .line 11
    return-void
.end method


# virtual methods
.method canConfirm(J)Z
    .locals 2

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/project7/localmanager/LocalNoticeReadGate;->readMillis(J)J

    move-result-wide p1

    const-wide/16 v0, 0x2710

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method readMillis(J)J
    .locals 5

    .line 19
    iget-wide v0, p0, Lcom/project7/localmanager/LocalNoticeReadGate;->visibleSince:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr p1, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 20
    :goto_0
    iget-wide p1, p0, Lcom/project7/localmanager/LocalNoticeReadGate;->readMillis:J

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method remainingSeconds(J)I
    .locals 2

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/project7/localmanager/LocalNoticeReadGate;->readMillis(J)J

    move-result-wide p1

    const-wide/16 v0, 0x2710

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e7

    add-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method setVisible(ZJ)V
    .locals 4

    .line 14
    iget-wide v0, p0, Lcom/project7/localmanager/LocalNoticeReadGate;->visibleSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/project7/localmanager/LocalNoticeReadGate;->readMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/project7/localmanager/LocalNoticeReadGate;->readMillis:J

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 p2, -0x1

    :goto_0
    iput-wide p2, p0, Lcom/project7/localmanager/LocalNoticeReadGate;->visibleSince:J

    .line 16
    return-void
.end method
