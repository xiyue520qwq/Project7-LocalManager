.class final Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;
.super Ljava/lang/Object;
.source "LocalNoticeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalNoticeContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoticeParts"
.end annotation


# instance fields
.field final body:Ljava/lang/String;

.field final warning:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;->warning:Ljava/lang/String;

    iput-object p2, p0, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;->body:Ljava/lang/String;

    return-void
.end method
