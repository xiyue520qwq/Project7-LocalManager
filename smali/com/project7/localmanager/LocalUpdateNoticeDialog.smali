.class final Lcom/project7/localmanager/LocalUpdateNoticeDialog;
.super Landroid/app/Dialog;
.source "LocalUpdateNoticeDialog.java"


# instance fields
.field private confirm:Landroid/widget/Button;

.field private final confirmed:Ljava/lang/Runnable;

.field private disposed:Z

.field private fallback:Landroid/widget/ScrollView;

.field private focused:Z

.field private final gate:Lcom/project7/localmanager/LocalNoticeReadGate;

.field private final handler:Landroid/os/Handler;

.field private final host:Landroid/app/Activity;

.field private layout:Landroid/widget/LinearLayout;

.field private final loadTimeout:Ljava/lang/Runnable;

.field private final notice:Ljava/lang/String;

.field private ready:Z

.field private final restoredScroll:I

.field private resumed:Z

.field private final ticker:Ljava/lang/Runnable;

.field private final updates:Ljava/lang/String;

.field private final version:Ljava/lang/String;

.field private web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/Runnable;)V
    .locals 4

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalDialog"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->handler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;-><init>(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ticker:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog$$ExternalSyntheticLambda1;-><init>(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->loadTimeout:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    iput-object p2, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->version:Ljava/lang/String;

    iput-object p3, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->notice:Ljava/lang/String;

    iput-object p4, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->updates:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/project7/localmanager/LocalNoticeReadGate;

    invoke-direct {p1, p5, p6, p7}, Lcom/project7/localmanager/LocalNoticeReadGate;-><init>(ZJ)V

    iput-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->gate:Lcom/project7/localmanager/LocalNoticeReadGate;

    .line 53
    iput p8, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->restoredScroll:I

    iput-object p9, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirmed:Ljava/lang/Runnable;

    .line 54
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->setCancelable(Z)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->updateButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->disposed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->syncClock()V

    return-void
.end method

.method static synthetic access$1100(Lcom/project7/localmanager/LocalUpdateNoticeDialog;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->handleLink(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->resumed:Z

    return p0
.end method

.method static synthetic access$300(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->focused:Z

    return p0
.end method

.method static synthetic access$400(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ready:Z

    return p0
.end method

.method static synthetic access$402(Lcom/project7/localmanager/LocalUpdateNoticeDialog;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ready:Z

    return p1
.end method

.method static synthetic access$500()J
    .locals 2

    .line 24
    invoke-static {}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Lcom/project7/localmanager/LocalNoticeReadGate;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->gate:Lcom/project7/localmanager/LocalNoticeReadGate;

    return-object p0
.end method

.method static synthetic access$700(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->loadTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->restoredScroll:I

    return p0
.end method

.method private dp(I)I
    .locals 1

    .line 59
    int-to-float p1, p1

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private handleLink(Ljava/lang/String;)Z
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->gate:Lcom/project7/localmanager/LocalNoticeReadGate;

    invoke-static {}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/project7/localmanager/LocalNoticeReadGate;->canConfirm(J)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 168
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    const-string v0, "\u8bf7\u5148\u5b8c\u6210\u516c\u544a\u9605\u8bfb"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 169
    return v1

    .line 171
    :cond_0
    invoke-static {p1}, Lcom/project7/localmanager/LocalNoticeContent;->externalLinkAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    const-string v0, "\u6ca1\u6709\u53ef\u6253\u5f00\u94fe\u63a5\u7684\u5e94\u7528"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 175
    :cond_1
    :goto_0
    return v1
.end method

.method private static now()J
    .locals 2

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private showFallback()V
    .locals 9

    .line 139
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    .line 143
    :cond_1
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->fallback:Landroid/widget/ScrollView;

    .line 144
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 145
    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->notice:Ljava/lang/String;

    invoke-static {v1}, Lcom/project7/localmanager/LocalNoticeContent;->splitNotice(Ljava/lang/String;)Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;

    move-result-object v1

    .line 146
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "\u672c\u5730\u5316\u58f0\u660e\n\n"

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v3, v1, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;->warning:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 148
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 149
    iget-object v5, v1, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;->warning:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 150
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/16 v6, 0xa0

    const/16 v7, 0x2f

    const/16 v8, 0x3e

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 152
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 154
    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 156
    :cond_2
    iget-object v1, v1, Lcom/project7/localmanager/LocalNoticeContent$NoticeParts;->body:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v3, "\n\n\u6700\u65b0\u66f4\u65b0\n\n"

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->updates:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 157
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    sget v1, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 159
    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v1

    const/16 v5, 0x10

    invoke-direct {p0, v5}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 160
    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->fallback:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->fallback:Landroid/widget/ScrollView;

    const/4 v2, 0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->fallback:Landroid/widget/ScrollView;

    new-instance v1, Lcom/project7/localmanager/LocalUpdateNoticeDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog$$ExternalSyntheticLambda2;-><init>(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 163
    iput-boolean v4, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ready:Z

    invoke-direct {p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->syncClock()V

    .line 164
    return-void
.end method

.method private syncClock()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->gate:Lcom/project7/localmanager/LocalNoticeReadGate;

    iget-boolean v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->disposed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->resumed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->focused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ready:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->now()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/project7/localmanager/LocalNoticeReadGate;->setVisible(ZJ)V

    .line 187
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirm:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->disposed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ticker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 189
    :cond_1
    return-void
.end method

.method private updateButton()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirm:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ready:Z

    if-nez v0, :cond_1

    const-string v0, "\u6b63\u5728\u52a0\u8f7d\u516c\u544a"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->gate:Lcom/project7/localmanager/LocalNoticeReadGate;

    invoke-static {}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/project7/localmanager/LocalNoticeReadGate;->canConfirm(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u786e\u8ba4"

    goto :goto_0

    .line 194
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u9605\u8bfb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->gate:Lcom/project7/localmanager/LocalNoticeReadGate;

    invoke-static {}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->now()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/project7/localmanager/LocalNoticeReadGate;->remainingSeconds(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirm:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirm:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirm:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ready:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->gate:Lcom/project7/localmanager/LocalNoticeReadGate;

    invoke-static {}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->now()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/project7/localmanager/LocalNoticeReadGate;->canConfirm(J)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->disposed:Z

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->gate:Lcom/project7/localmanager/LocalNoticeReadGate;

    invoke-static {}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->now()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/project7/localmanager/LocalNoticeReadGate;->setVisible(ZJ)V

    .line 204
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 206
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    .line 210
    :cond_1
    return-void
.end method

.method public synthetic lambda$new$0$LocalUpdateNoticeDialog()V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->disposed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ready:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->showFallback()V

    .line 46
    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$1$LocalUpdateNoticeDialog(Landroid/view/View;)V
    .locals 2

    .line 82
    iget-boolean p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->ready:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->gate:Lcom/project7/localmanager/LocalNoticeReadGate;

    invoke-static {}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->now()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/project7/localmanager/LocalNoticeReadGate;->canConfirm(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirmed:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 83
    :cond_0
    return-void
.end method

.method public synthetic lambda$showFallback$2$LocalUpdateNoticeDialog()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->fallback:Landroid/widget/ScrollView;

    iget v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->restoredScroll:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->requestWindowFeature(I)Z

    .line 64
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->layout:Landroid/widget/LinearLayout;

    .line 65
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v2, "\u66f4\u65b0\u516c\u544a"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    sget v2, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 70
    const/16 v2, 0x16

    invoke-direct {p0, v2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v3

    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v6

    invoke-direct {p0, v2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v7

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    iget-object v3, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->layout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Project7 \u672c\u5730\u7ba1\u7406 \u00b7 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->version:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget v3, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    invoke-direct {p0, v2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v2

    invoke-direct {p0, v5}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    iget-object v2, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->layout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirm:Landroid/widget/Button;

    .line 78
    const-string v2, "\u786e\u8ba4"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirm:Landroid/widget/Button;

    const-string v2, "ui:primary"

    const/16 v3, 0x17

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirm:Landroid/widget/Button;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUiStyle;->button(Landroid/widget/Button;)V

    .line 81
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirm:Landroid/widget/Button;

    new-instance v2, Lcom/project7/localmanager/LocalUpdateNoticeDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog$$ExternalSyntheticLambda0;-><init>(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v3

    const/16 v5, 0xa

    invoke-direct {p0, v5}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v1

    invoke-virtual {v0, v3, v5, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 86
    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->confirm:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->setContentView(Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->updateButton()V

    .line 90
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    .line 91
    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 95
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 96
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 97
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 98
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 99
    const/high16 p1, 0x42c80000    # 100.0f

    iget-object v1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 100
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    new-instance v0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;-><init>(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 121
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->layout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    const/4 v1, 0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v8, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    const-string v9, "https://project7.invalid/notice/"

    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->notice:Ljava/lang/String;

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->updates:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalNoticeContent;->document(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "text/html"

    const-string v12, "UTF-8"

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->loadTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 125
    :catch_0
    move-exception p1

    .line 126
    const-string p1, "W"

    const-string v0, "\u516c\u544a\u6392\u7248\u7ec4\u4ef6\u4e0d\u53ef\u7528\uff0c\u663e\u793a\u539f\u6587"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->showFallback()V

    .line 129
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 132
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 133
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x280

    invoke-direct {p0, v3}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v3, 0x3f5c28f6    # 0.86f

    mul-float/2addr v0, v3

    .line 135
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 134
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 136
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 182
    iput-boolean p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->focused:Z

    invoke-direct {p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->syncClock()V

    .line 183
    return-void
.end method

.method readMillis()J
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->gate:Lcom/project7/localmanager/LocalNoticeReadGate;

    invoke-static {}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/project7/localmanager/LocalNoticeReadGate;->readMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method scrollY()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->fallback:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setHostResumed(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->resumed:Z

    invoke-direct {p0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->syncClock()V

    return-void
.end method
