.class public final Lcom/project7/localmanager/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/MainActivity$AccountTask;
    }
.end annotation


# static fields
.field private static final ACCOUNTS:I = 0x1

.field private static final ACTIVITIES:I = 0x4

.field private static final HOME:I = 0x0

.field private static final LOGS:I = 0x3

.field private static final MAIL:I = 0x2

.field private static final NOTICE_ACK:Ljava/lang/String; = "first_read_confirmed"

.field private static final NOTICE_PREFS:Ljava/lang/String; = "update_notice"

.field private static final PROCESS_SESSION:Ljava/lang/String;

.field private static final RESOURCE_KINDS:[Ljava/lang/String;


# instance fields
.field private final accountChecks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private accountCount:Landroid/widget/TextView;

.field private accountDock:Landroid/widget/LinearLayout;

.field private final accountNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private accountRows:Landroid/widget/LinearLayout;

.field private accountSearch:Landroid/widget/EditText;

.field private accounts:Lcom/project7/localmanager/LocalAccountStore;

.field private activePage:I

.field private activityDuration:Landroid/widget/EditText;

.field private activityHub:Landroid/widget/LinearLayout;

.field private activityKey:Ljava/lang/String;

.field private final activityKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final activityLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activityResumed:Z

.field private final activitySearchTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activitySelection:Landroid/widget/Button;

.field private activityStart:Ljava/util/Calendar;

.field private activityStartButton:Landroid/widget/Button;

.field private appVersion:Ljava/lang/String;

.field private final attachmentLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attachmentSummary:Landroid/widget/TextView;

.field private chooseResource:Landroid/widget/Button;

.field private choosingRecipients:Z

.field private countInput:Landroid/widget/EditText;

.field private details:Landroid/widget/TextView;

.field private dockSelection:Landroid/widget/TextView;

.field private fashionOpen:Z

.field private fashionPanel:Landroid/widget/LinearLayout;

.field private finishRecipients:Landroid/widget/Button;

.field private followLogs:Landroid/widget/CheckBox;

.field private gatewayBadge:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private homeAccounts:Landroid/widget/TextView;

.field private homeSelection:Landroid/widget/TextView;

.field private final levelAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private levelDialog:Landroid/app/AlertDialog;

.field private levelMode:Landroid/widget/Spinner;

.field private levelPanel:Landroid/widget/LinearLayout;

.field private levelTargets:Landroid/widget/TextView;

.field private levelValue:Landroid/widget/EditText;

.field private logRevision:J

.field private logScroll:Landroid/widget/ScrollView;

.field private logText:Landroid/widget/TextView;

.field private final mailAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private mailContent:Landroid/widget/EditText;

.field private mailTitle:Landroid/widget/EditText;

.field private final navigation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private navigationBar:Landroid/widget/LinearLayout;

.field private pageHost:Landroid/widget/FrameLayout;

.field private final pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private passwordInput:Landroid/widget/EditText;

.field private pendingGatewayStart:Z

.field private pendingLevelTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prefixInput:Landroid/widget/EditText;

.field private profiles:Lcom/project7/localmanager/LocalProfileStore;

.field private recipients:Landroid/widget/TextView;

.field private final refresh:Ljava/lang/Runnable;

.field private refreshActivity:Ljava/lang/Runnable;

.field private registration:Landroid/widget/LinearLayout;

.field private registrationToggle:Landroid/widget/Button;

.field private resourceId:Landroid/widget/AutoCompleteTextView;

.field private final resourceLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resourceQuality:Landroid/widget/Spinner;

.field private resourceQuantity:Landroid/widget/EditText;

.field private resourceType:Landroid/widget/Spinner;

.field private restoreManualNotice:Z

.field private restoredLevelValue:Ljava/lang/String;

.field private restoredNoticeReadMillis:J

.field private restoredNoticeScroll:I

.field private restoredResourceId:Ljava/lang/String;

.field private selectAllButton:Landroid/widget/Button;

.field private final selectedAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startGateway:Landroid/widget/Button;

.field private status:Landroid/widget/TextView;

.field private stopGateway:Landroid/widget/Button;

.field private tutorials:Lcom/project7/localmanager/LocalTutorialStore;

.field private updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

.field private updateNoticeRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/MainActivity;->PROCESS_SESSION:Ljava/lang/String;

    .line 119
    const-string v1, "money"

    const-string v2, "yuanbao"

    const-string v3, "crystal"

    const-string v4, "summonCoin"

    const-string v5, "giftCoin"

    const-string v6, "friendCoin"

    const-string v7, "souvenir"

    const-string v8, "hero"

    const-string v9, "item"

    const-string v10, "treasure"

    const-string v11, "skin"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/MainActivity;->RESOURCE_KINDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeRequired:Z

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->handler:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->activityKeys:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->activityLabels:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->activitySearchTexts:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelAccounts:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountChecks:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountNames:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->navigation:Ljava/util/List;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/project7/localmanager/MainActivity;->activePage:I

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/project7/localmanager/MainActivity;->logRevision:J

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceLabels:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->attachmentLabels:Ljava/util/List;

    .line 122
    new-instance v0, Lcom/project7/localmanager/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/MainActivity$1;-><init>(Lcom/project7/localmanager/MainActivity;)V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->refresh:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/project7/localmanager/MainActivity;)Landroid/widget/Button;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/project7/localmanager/MainActivity;->startGateway:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/project7/localmanager/MainActivity;)Landroid/widget/Button;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/project7/localmanager/MainActivity;->stopGateway:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/project7/localmanager/MainActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->refreshResourceChoices()V

    return-void
.end method

.method static synthetic access$1100(Lcom/project7/localmanager/MainActivity;I)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/project7/localmanager/MainActivity;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/project7/localmanager/MainActivity;->resourceLabels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/project7/localmanager/MainActivity;->status:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/project7/localmanager/MainActivity;->gatewayBadge:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/project7/localmanager/MainActivity;->details:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/project7/localmanager/MainActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->refreshLogs()V

    return-void
.end method

.method static synthetic access$600(Lcom/project7/localmanager/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/project7/localmanager/MainActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/project7/localmanager/MainActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->renderAccounts()V

    return-void
.end method

.method static synthetic access$800(Lcom/project7/localmanager/MainActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/project7/localmanager/MainActivity;->levelValue:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/project7/localmanager/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/project7/localmanager/MainActivity;->restoredLevelValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/project7/localmanager/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/project7/localmanager/MainActivity;->restoredLevelValue:Ljava/lang/String;

    return-object p1
.end method

.method private addHistoricalSections(Landroid/widget/LinearLayout;)V
    .locals 12

    .line 762
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    new-instance v1, Ljava/lang/String;

    const-string v2, "historical_activities.json"

    invoke-static {p0, v2}, Lcom/project7/localmanager/AssetData;->readAll(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 764
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 765
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 766
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 767
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 768
    const-string v6, "range"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 769
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    .line 770
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "%04d-%02d-%02d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v10

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    const-string v6, ""

    .line 771
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v7, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda54;->INSTANCE:Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda54;

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6d3b\u52a8 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " \u00b7 \u6a21\u677f "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "template"

    .line 772
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 \u73a9\u6cd5\u5f85\u63a5\u5165"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 774
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u4e2a\u539f\u751f\u7c7b\u578b \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u6761\u914d\u7f6e"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 775
    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6d3b\u52a8\u7c7b\u578b "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 778
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " \u6761"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 779
    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 780
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {v4, p0, v2, v1}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda33;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/lang/String;Ljava/util/Map$Entry;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    goto :goto_2

    .line 788
    :cond_2
    goto :goto_4

    .line 786
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 787
    :goto_3
    const-string v0, "\u76ee\u5f55\u8bfb\u53d6\u5931\u8d25"

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    :goto_4
    return-void
.end method

.method private addMailAttachment()V
    .locals 10

    .line 1273
    :try_start_0
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_6

    .line 1274
    sget-object v0, Lcom/project7/localmanager/MainActivity;->RESOURCE_KINDS:[Ljava/lang/String;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->resourceType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    .line 1275
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1276
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1277
    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->currency(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1278
    :goto_1
    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->resourceQuantity:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1279
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->resourceQuality:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 1280
    iget-object v6, p0, Lcom/project7/localmanager/MainActivity;->profiles:Lcom/project7/localmanager/LocalProfileStore;

    invoke-virtual {v6}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v6

    .line 1281
    invoke-static {v6, v0, v1, v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->validate(Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 1282
    const-string v7, "hero"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalResourceCatalog$Hero;

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->currency(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1283
    iget-object v6, p0, Lcom/project7/localmanager/MainActivity;->resourceType:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    const-string v7, "skin"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceCatalog;->skins:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalResourceCatalog$Skin;

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->name:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceCatalog;->items:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;->name:Ljava/lang/String;

    .line 1284
    :goto_2
    iget-object v7, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "kind"

    aput-object v9, v8, v4

    aput-object v0, v8, v5

    const/4 v4, 0x2

    const-string v5, "id"

    aput-object v5, v8, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    const/4 v1, 0x4

    const-string v4, "quantity"

    aput-object v4, v8, v1

    const/4 v1, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    const/4 v1, 0x6

    const-string v4, "quality"

    aput-object v4, v8, v1

    const/4 v1, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->attachmentLabels:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "treasure"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/project7/localmanager/MainActivity;->resourceQuality:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00d7 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->updateAttachments()V

    .line 1287
    goto :goto_4

    .line 1273
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6bcf\u5c01\u90ae\u4ef6\u6700\u591a 20 \u4e2a\u9644\u4ef6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9644\u4ef6\u65e0\u6548\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 1288
    :goto_4
    return-void
.end method

.method private bodyText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 1396
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1397
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1399
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1400
    sget v1, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1401
    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1402
    return-object v0
.end method

.method private confirmAdjustLevel(Landroid/widget/Button;)V
    .locals 13

    .line 1318
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->profiles:Lcom/project7/localmanager/LocalProfileStore;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 1319
    :cond_0
    invoke-static {}, Lcom/project7/localmanager/GatewayService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u8bf7\u5148\u9000\u51fa\u6e38\u620f\u5e76\u505c\u6b62\u672c\u5730\u7f51\u5173\uff0c\u518d\u8c03\u6574\u8d26\u53f7"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v8, v2

    goto :goto_0

    :cond_2
    move v8, v3

    .line 1321
    :goto_0
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v9, v2

    goto :goto_1

    :cond_3
    move v9, v3

    .line 1324
    :goto_1
    if-eqz v8, :cond_4

    move v10, v3

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v10, v0

    .line 1325
    :goto_2
    if-nez v8, :cond_5

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalLevelAdmin;->validate(ZI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :cond_5
    nop

    .line 1329
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelAccounts:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1330
    if-eqz v8, :cond_6

    const-string v0, "\u53d1\u653e\u6240\u6709\u795e\u5668\u4f7f"

    :goto_3
    move-object v11, v0

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz v9, :cond_7

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u5b9a\u4e3a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u7ea7\uff08\u672c\u7ea7\u7ecf\u9a8c\u6e05\u96f6\uff09"

    goto :goto_4

    :cond_7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u589e\u52a0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u7ecf\u9a8c"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1331
    :goto_5
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1332
    new-array v0, v2, [Z

    aput-boolean v3, v0, v3

    .line 1333
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u786e\u8ba4\u8d26\u53f7\u8c03\u6574"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8d26\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    const-string v3, "\u3001"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u64cd\u4f5c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    if-eqz v8, :cond_8

    const-string v3, "\n\u8bf7\u786e\u8ba4\u5df2\u9000\u51fa\u6e38\u620f\u3002\u8865\u9f50\u672c\u5730\u76ee\u5f55\u4e2d\u6240\u6709\u795e\u5668\u4f7f\uff0c\u4fdd\u7559\u5df2\u6709\u89d2\u8272\u517b\u6210\uff1b\u91cd\u590d\u64cd\u4f5c\u4e0d\u53d1\u653e\u91cd\u590d\u6750\u6599\u3002\u4e0d\u63a8\u8fdb\u5267\u60c5\uff0c\u91cd\u65b0\u767b\u5f55\u751f\u6548\u3002"

    goto :goto_6

    .line 1336
    :cond_8
    const-string v3, "\n\u8bf7\u786e\u8ba4\u5df2\u9000\u51fa\u6e38\u620f\u3002\u4ec5\u4fee\u6539\u6307\u6325\u4f7f\u7b49\u7ea7\u548c\u7ecf\u9a8c\uff0c\u4e0d\u63a8\u8fdb\u5267\u60c5\u3001\u4e0d\u53d1\u653e\u5347\u7ea7\u5956\u52b1\uff1b\u91cd\u65b0\u767b\u5f55\u751f\u6548\u3002"

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1334
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1337
    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;

    move-object v4, v2

    move-object v5, p0

    move-object v6, v0

    move-object v12, p1

    invoke-direct/range {v4 .. v12}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/project7/localmanager/MainActivity;[ZLjava/util/List;ZZILjava/lang/String;Landroid/widget/Button;)V

    const-string v3, "\u786e\u8ba4"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1361
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1362
    new-instance v2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, p1}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda7;-><init>([ZLandroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1363
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1364
    return-void

    .line 1326
    :catch_0
    move-exception p1

    .line 1327
    instance-of v0, p1, Ljava/lang/NumberFormatException;

    if-eqz v0, :cond_9

    const-string p1, "\u8bf7\u8f93\u5165\u6709\u6548\u6574\u6570"

    goto :goto_7

    :cond_9
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 1318
    :cond_a
    :goto_8
    const-string p1, "\u8bf7\u5148\u9009\u62e9\u8d26\u53f7"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method private confirmDeleteAccounts()V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    const-string v0, "\u8bf7\u5148\u9009\u62e9\u8981\u5220\u9664\u7684\u8d26\u53f7"

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 1101
    return-void

    .line 1103
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1104
    const-string v1, "\u5220\u9664\u8d26\u53f7"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c06\u5220\u9664 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    .line 1105
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u4e2a\u8d26\u53f7\u53ca\u5176\u5168\u90e8\u672c\u5730\u8fdb\u5ea6\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1106
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/project7/localmanager/MainActivity;)V

    .line 1107
    const-string v2, "\u5220\u9664"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1109
    return-void
.end method

.method private confirmSendMail(Landroid/widget/Button;)V
    .locals 9

    .line 1291
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1292
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1293
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1294
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->mailTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->mailContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1295
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u53d1\u9001\u7cfb\u7edf\u90ae\u4ef6"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u4ef6\u8d26\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const-string v2, "\u3001"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u9644\u4ef6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1297
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v8, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/Button;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string p1, "\u53d1\u9001"

    invoke-virtual {v0, p1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1314
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1315
    return-void

    .line 1291
    :cond_1
    :goto_0
    const-string p1, "\u8bf7\u9009\u62e9\u8d26\u53f7\u5e76\u6dfb\u52a0\u9644\u4ef6"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method private continueAfterNotice()V
    .locals 2

    .line 542
    iget-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeRequired:Z

    if-eqz v0, :cond_0

    return-void

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->requestNotificationPermission()V

    .line 544
    iget-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->pendingGatewayStart:Z

    if-eqz v0, :cond_1

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->pendingGatewayStart:Z

    .line 546
    invoke-static {p0}, Lcom/project7/localmanager/GatewayService;->start(Landroid/content/Context;)V

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->pendingLevelTargets:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 549
    nop

    .line 550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/project7/localmanager/MainActivity;->pendingLevelTargets:Ljava/util/ArrayList;

    .line 551
    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->showLevelEditor(Ljava/util/List;)V

    .line 553
    :cond_2
    return-void
.end method

.method private copyLogs()V
    .locals 3

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Project7 \u672c\u5730\u7f51\u5173\u8bca\u65ad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nAndroid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / SDK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-static {}, Lcom/project7/localmanager/GatewayService;->statusText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    const-class v1, Landroid/content/ClipboardManager;

    invoke-virtual {p0, v1}, Lcom/project7/localmanager/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    invoke-static {v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->snapshot()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    const-string v2, "Project7 \u7f51\u5173\u65e5\u5fd7"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 941
    const-string v0, "\u65e5\u5fd7\u5df2\u590d\u5236"

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method private createAccounts()V
    .locals 10

    .line 1067
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accounts:Lcom/project7/localmanager/LocalAccountStore;

    if-nez v0, :cond_0

    .line 1068
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->prefixInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1071
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->passwordInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1074
    :try_start_0
    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->countInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    nop

    .line 1079
    const/4 v3, 0x1

    if-lt v2, v3, :cond_4

    const/16 v4, 0x64

    if-le v2, v4, :cond_1

    goto :goto_2

    .line 1083
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    if-ne v2, v3, :cond_2

    .line 1085
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1087
    :cond_2
    move v5, v3

    :goto_0
    if-gt v5, v2, :cond_3

    .line 1088
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "%03d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1091
    :cond_3
    :goto_1
    new-instance v0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, v4, v1}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda40;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->runAccountTask(Lcom/project7/localmanager/MainActivity$AccountTask;)V

    .line 1096
    return-void

    .line 1080
    :cond_4
    :goto_2
    const-string v0, "\u4e00\u6b21\u53ef\u521b\u5efa 1-100 \u4e2a\u8d26\u53f7"

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 1081
    return-void

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    const-string v0, "\u6570\u91cf\u5fc5\u987b\u662f\u6570\u5b57"

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method private createActivityPage()V
    .locals 22

    .line 568
    move-object/from16 v10, p0

    const-string v1, " "

    const-string v0, "\u6d3b\u52a8\u4e2d\u5fc3"

    const-string v2, "\u6d3b\u52a8"

    const/4 v3, 0x5

    invoke-direct {v10, v0, v2, v3}, Lcom/project7/localmanager/MainActivity;->createPage(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 569
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v10, Lcom/project7/localmanager/MainActivity;->activityHub:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 570
    iget-object v2, v10, Lcom/project7/localmanager/MainActivity;->activityHub:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u65f6\u88c5\u590d\u523b"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 572
    const/4 v6, 0x0

    const/16 v7, 0x13

    invoke-static {v2, v6, v7}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 573
    new-instance v7, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v7, v10}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v7, v10, Lcom/project7/localmanager/MainActivity;->activityHub:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    iget-object v2, v10, Lcom/project7/localmanager/MainActivity;->activityHub:Landroid/widget/LinearLayout;

    const-string v7, "\u53ef\u7ba1\u7406 \u00b7 \u590d\u523b\u6279\u6b21\u4e0e\u5f00\u653e\u65f6\u95f4"

    invoke-direct {v10, v7}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    iget-object v2, v10, Lcom/project7/localmanager/MainActivity;->activityHub:Landroid/widget/LinearLayout;

    const-string v7, "\u5f80\u671f\u6d3b\u52a8\u5206\u7c7b"

    invoke-direct {v10, v7}, Lcom/project7/localmanager/MainActivity;->sectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    iget-object v2, v10, Lcom/project7/localmanager/MainActivity;->activityHub:Landroid/widget/LinearLayout;

    const-string v7, "\u539f\u59cb\u914d\u7f6e\u76ee\u5f55 \u00b7 \u5176\u4ed6\u6d3b\u52a8\u5c1a\u672a\u63a5\u5165\u5f00\u653e\u7ba1\u7406"

    invoke-direct {v10, v7}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    iget-object v2, v10, Lcom/project7/localmanager/MainActivity;->activityHub:Landroid/widget/LinearLayout;

    invoke-direct {v10, v2}, Lcom/project7/localmanager/MainActivity;->addHistoricalSections(Landroid/widget/LinearLayout;)V

    .line 579
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v10, Lcom/project7/localmanager/MainActivity;->fashionPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 580
    iget-object v2, v10, Lcom/project7/localmanager/MainActivity;->fashionPanel:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    iget-object v11, v10, Lcom/project7/localmanager/MainActivity;->fashionPanel:Landroid/widget/LinearLayout;

    .line 582
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6d3b\u52a8\u5206\u7c7b"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 583
    const/16 v2, 0x11

    invoke-static {v0, v6, v2}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 584
    new-instance v2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, v10}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    invoke-direct {v10, v5}, Lcom/project7/localmanager/MainActivity;->sectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lcom/project7/localmanager/MainActivity;->setFashionOpen(Z)V

    .line 589
    new-instance v13, Lcom/project7/localmanager/LocalActivityStore;

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/project7/localmanager/LocalActivityStore;-><init>(Ljava/io/File;)V

    .line 590
    :try_start_0
    new-instance v14, Lcom/project7/localmanager/LocalCommerceCatalog;

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "commerce.tsv"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v14, v0}, Lcom/project7/localmanager/LocalCommerceCatalog;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 591
    nop

    .line 592
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 593
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 594
    iget-object v2, v14, Lcom/project7/localmanager/LocalCommerceCatalog;->skinProducts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 595
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;

    .line 596
    invoke-virtual {v7}, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->purchasable()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-wide v3, v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->start:J

    const-wide/16 v16, 0x0

    cmp-long v3, v3, v16

    if-nez v3, :cond_0

    goto :goto_1

    .line 597
    :cond_0
    invoke-virtual {v7}, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->activityKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda55;->INSTANCE:Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda55;

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-virtual {v7}, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->activityKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const/4 v3, 0x5

    const/4 v4, 0x1

    goto :goto_0

    .line 596
    :cond_1
    :goto_1
    const/4 v3, 0x5

    const/4 v4, 0x1

    goto :goto_0

    .line 600
    :cond_2
    iget-object v5, v10, Lcom/project7/localmanager/MainActivity;->activityKeys:Ljava/util/List;

    iget-object v4, v10, Lcom/project7/localmanager/MainActivity;->activityLabels:Ljava/util/List;

    .line 601
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 602
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v2, v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 603
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u65f6\u88c5\u590d\u523b "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/util/Date;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;

    move-object/from16 v19, v13

    iget-wide v12, v6, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->start:J

    const-wide/16 v20, 0x3e8

    mul-long v12, v12, v20

    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u00b7 "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u4ef6"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 603
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, v19

    const/4 v6, 0x0

    const/4 v12, 0x0

    goto :goto_2

    .line 605
    :cond_3
    move-object/from16 v19, v13

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    :try_start_1
    iget-object v0, v10, Lcom/project7/localmanager/MainActivity;->profiles:Lcom/project7/localmanager/LocalProfileStore;

    invoke-virtual {v0}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v0

    .line 609
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 610
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceCatalog;->skins:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/project7/localmanager/LocalResourceCatalog$Skin;

    .line 612
    if-eqz v7, :cond_4

    .line 613
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    iget v7, v7, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/project7/localmanager/LocalResourceCatalog$Hero;

    .line 615
    if-eqz v7, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 617
    :cond_4
    goto :goto_4

    .line 618
    :catch_0
    move-exception v0

    :cond_5
    nop

    .line 619
    iget-object v0, v10, Lcom/project7/localmanager/MainActivity;->activitySearchTexts:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 621
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_5
    iput-object v0, v10, Lcom/project7/localmanager/MainActivity;->activityKey:Ljava/lang/String;

    .line 622
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 623
    iput-object v3, v10, Lcom/project7/localmanager/MainActivity;->activitySelection:Landroid/widget/Button;

    .line 624
    const-string v0, "\u65f6\u88c5\u590d\u523b\u6279\u6b21"

    invoke-direct {v10, v0}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-static {v3, v1, v0}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 626
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u6682\u65e0\u590d\u523b\u6279\u6b21"

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 627
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 628
    const-string v0, "\u641c\u7d22\u590d\u523b\u6279\u6b21"

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 629
    new-instance v0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, v10}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    const-string v0, ""

    invoke-direct {v10, v0}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 633
    iput-object v0, v10, Lcom/project7/localmanager/MainActivity;->activityStart:Ljava/util/Calendar;

    .line 634
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v7, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 635
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iput-object v1, v10, Lcom/project7/localmanager/MainActivity;->activityStartButton:Landroid/widget/Button;

    .line 637
    const/4 v2, 0x5

    const/4 v6, 0x0

    invoke-static {v1, v6, v2}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 638
    new-instance v2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v2, v10, v0, v1, v7}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda34;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/util/Calendar;Landroid/widget/Button;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    const-string v2, "\u5f00\u59cb\u65f6\u95f4\uff08\u8bbe\u5907\u65f6\u95f4\uff09"

    invoke-direct {v10, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    new-instance v12, Landroid/widget/EditText;

    invoke-direct {v12, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6301\u7eed\u5c0f\u65f6\u6570"

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v1, "168"

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iput-object v12, v10, Lcom/project7/localmanager/MainActivity;->activityDuration:Landroid/widget/EditText;

    .line 649
    const/4 v1, 0x2

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 650
    const-string v1, "\u6301\u7eed\u65f6\u95f4\uff08\u5c0f\u65f6\uff09"

    invoke-direct {v10, v1}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    new-instance v13, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda46;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v9}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda46;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/Button;Ljava/util/List;Ljava/util/List;Lcom/project7/localmanager/LocalActivityStore;Ljava/text/SimpleDateFormat;Landroid/widget/TextView;Ljava/util/Map;)V

    .line 667
    iput-object v13, v10, Lcom/project7/localmanager/MainActivity;->refreshActivity:Ljava/lang/Runnable;

    .line 668
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->horizontalActions()Landroid/widget/LinearLayout;

    move-result-object v8

    .line 669
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5f00\u653e / \u66f4\u65b0"

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 670
    const-string v1, "ui:primary"

    const/4 v2, 0x0

    invoke-static {v9, v1, v2}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 671
    new-instance v15, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v0

    move-object/from16 v5, v19

    move-object v6, v14

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/EditText;Ljava/util/Calendar;Lcom/project7/localmanager/LocalActivityStore;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedButton()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5173\u95ed\u6d3b\u52a8"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 682
    const-string v1, "ui:destructive"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 683
    new-instance v1, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;

    move-object/from16 v2, v19

    invoke-direct {v1, v10, v2, v14, v13}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;-><init>(Lcom/project7/localmanager/MainActivity;Lcom/project7/localmanager/LocalActivityStore;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedButtonWithMargin()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 694
    return-void

    .line 591
    :catch_1
    move-exception v0

    const-string v0, "\u6d3b\u52a8\u76ee\u5f55\u8bfb\u53d6\u5931\u8d25"

    invoke-direct {v10, v0}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createPage(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .locals 8

    .line 792
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 793
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 794
    const/16 v2, 0x16

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x1c

    invoke-direct {p0, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 795
    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->sectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 796
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    .line 797
    :cond_0
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 799
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 800
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 801
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    .line 802
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 803
    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 804
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x2d0

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/4 v6, -0x2

    invoke-direct {v5, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 805
    const/16 v3, 0x31

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 806
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 808
    const/4 v6, 0x3

    const/4 v7, -0x1

    if-ne v3, v6, :cond_1

    .line 810
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 811
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 812
    invoke-virtual {v2, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {v2, v0, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    :goto_0
    iget-object v5, p0, Lcom/project7/localmanager/MainActivity;->pageHost:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    iget-object v5, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41300000    # 11.0f

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p2, 0x11

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 819
    const/4 p2, 0x0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 p2, 0x7

    invoke-direct {p0, p2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, p2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result p2

    invoke-virtual {v2, v4, v5, v4, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 820
    invoke-static {p0, p3}, Lcom/project7/localmanager/LocalIcons;->drawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v2, p3, p2, p3, p3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x4

    invoke-direct {p0, p2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 821
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aget-object p2, p2, v1

    .line 822
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {p2, v4, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 823
    invoke-virtual {v2, p3, p2, p3, p3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 824
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 825
    new-instance p1, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0, v3}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda26;-><init>(Lcom/project7/localmanager/MainActivity;I)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    const/16 p1, 0x40

    const/high16 p2, 0x42400000    # 48.0f

    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v1, p3

    add-float/2addr v1, p2

    float-to-int p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 827
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p2, v4, p1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 828
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 829
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->navigationBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->navigation:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    return-object v0
.end method

.method private deleteSelectedAccounts()V
    .locals 2

    .line 1112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1113
    new-instance v1, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, v0}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda39;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->runAccountTask(Lcom/project7/localmanager/MainActivity$AccountTask;)V

    .line 1129
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 1449
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private horizontalActions()Landroid/widget/LinearLayout;
    .locals 3

    .line 1406
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1407
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1408
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1409
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1410
    return-object v0
.end method

.method static synthetic lambda$addHistoricalSections$36(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 771
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$confirmAdjustLevel$55([ZLandroid/widget/Button;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1362
    const/4 p2, 0x0

    aget-boolean p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$createActivityPage$24(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 597
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$createActivityPage$26(Ljava/util/Calendar;Landroid/widget/Button;Ljava/text/SimpleDateFormat;Landroid/widget/TimePicker;II)V
    .locals 0

    .line 641
    const/16 p3, 0xb

    invoke-virtual {p0, p3, p4}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xc

    invoke-virtual {p0, p3, p5}, Ljava/util/Calendar;->set(II)V

    .line 642
    const/16 p3, 0xd

    const/4 p4, 0x0

    invoke-virtual {p0, p3, p4}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xe

    invoke-virtual {p0, p3, p4}, Ljava/util/Calendar;->set(II)V

    .line 643
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 644
    return-void
.end method

.method static synthetic lambda$restoreDraft$42(Landroid/view/View;I)V
    .locals 1

    .line 1016
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method static synthetic lambda$showSearchList$34(Ljava/util/List;Ljava/util/List;Landroid/widget/EditText;Ljava/util/List;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;)V
    .locals 1

    .line 739
    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalUiSearch;->matching(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 740
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 741
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p4}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p4, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    invoke-virtual {p4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 743
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u9879"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    return-void
.end method

.method static synthetic lambda$showSearchList$35(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/IntConsumer;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 753
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 754
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    invoke-interface {p2, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 755
    return-void
.end method

.method private matchWrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1422
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private metric(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 6

    .line 855
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 856
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 857
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 858
    const-string v2, "0"

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 859
    const/4 p3, 0x0

    invoke-virtual {v2, p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 860
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    invoke-direct {p0, p2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, 0x0

    const/4 v1, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    return-object v2
.end method

.method private noticeAcknowledged()Z
    .locals 3

    .line 518
    const-string v0, "update_notice"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/project7/localmanager/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "first_read_confirmed"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private readNotice()Ljava/lang/String;
    .locals 3

    .line 896
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "local_notice.txt"

    invoke-static {p0, v1}, Lcom/project7/localmanager/AssetData;->readAll(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 897
    :catch_0
    move-exception v0

    const-string v0, "\u516c\u544a\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5b89\u88c5\u672c\u5730\u7ba1\u7406\u3002"

    return-object v0
.end method

.method private refreshAccounts()V
    .locals 3

    .line 1132
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accounts:Lcom/project7/localmanager/LocalAccountStore;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->accountRows:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1136
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/project7/localmanager/LocalAccountStore;->listAccounts()Ljava/util/List;

    move-result-object v0

    .line 1137
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1138
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->accountNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->accountNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1139
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->homeAccounts:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->renderAccounts()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    goto :goto_0

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bfb\u53d6\u8d26\u53f7\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 1144
    :goto_0
    return-void

    .line 1133
    :cond_1
    :goto_1
    return-void
.end method

.method private refreshLogs()V
    .locals 5

    .line 925
    iget v0, p0, Lcom/project7/localmanager/MainActivity;->activePage:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/project7/localmanager/MainActivity;->logRevision:J

    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->revision()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 926
    :cond_0
    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->revision()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/project7/localmanager/MainActivity;->logRevision:J

    .line 927
    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->snapshot()Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e80

    if-le v1, v2, :cond_2

    .line 929
    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8f83\u65e9\u8bb0\u5f55\u5df2\u6298\u53e0\uff0c\u590d\u5236\u65e5\u5fd7\u53ef\u83b7\u53d6\u5b8c\u6574\u8bb0\u5f55\u3002\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    :cond_2
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "\u6682\u65e0\u65e5\u5fd7"

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->followLogs:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->logScroll:Landroid/widget/ScrollView;

    new-instance v1, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda42;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 934
    :cond_4
    return-void

    .line 925
    :cond_5
    :goto_1
    return-void
.end method

.method private refreshResourceChoices()V
    .locals 10

    .line 1220
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->profiles:Lcom/project7/localmanager/LocalProfileStore;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 1221
    :cond_0
    sget-object v0, Lcom/project7/localmanager/MainActivity;->RESOURCE_KINDS:[Ljava/lang/String;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->resourceType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    .line 1222
    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->currency(Ljava/lang/String;)Z

    move-result v1

    .line 1223
    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    .line 1224
    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->chooseResource:Landroid/widget/Button;

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1225
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->resourceQuality:Landroid/widget/Spinner;

    const-string v2, "treasure"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1226
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->restoredResourceId:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, ""

    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/project7/localmanager/MainActivity;->restoredResourceId:Ljava/lang/String;

    .line 1228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    :try_start_0
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->profiles:Lcom/project7/localmanager/LocalProfileStore;

    invoke-virtual {v3}, Lcom/project7/localmanager/LocalProfileStore;->resources()Lcom/project7/localmanager/LocalResourceCatalog;

    move-result-object v3

    .line 1231
    const-string v4, "hero"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " : "

    if-eqz v4, :cond_5

    :try_start_1
    iget-object v0, v3, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalResourceCatalog$Hero;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1232
    :cond_5
    const-string v4, "skin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v0, v3, Lcom/project7/localmanager/LocalResourceCatalog;->skins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalResourceCatalog$Skin;

    .line 1233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    iget v7, v2, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v3, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    iget v2, v2, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalResourceCatalog$Hero;

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->name:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget v2, v2, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    goto :goto_7

    .line 1234
    :cond_8
    iget-object v4, v3, Lcom/project7/localmanager/LocalResourceCatalog;->items:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;

    .line 1235
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v3, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_9
    iget v7, v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;->type:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_a

    .line 1236
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_a
    goto :goto_5

    .line 1238
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x109000a

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1239
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceLabels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1240
    goto :goto_8

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d44\u6e90\u76ee\u5f55\u8bfb\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 1241
    :goto_8
    return-void

    .line 1220
    :cond_c
    :goto_9
    return-void
.end method

.method private renderAccounts()V
    .locals 12

    .line 1147
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountRows:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1149
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->accountRows:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1150
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->accountChecks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1151
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->accountNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0xc

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1152
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 1153
    :cond_1
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1154
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1155
    const/16 v5, 0x40

    invoke-direct {p0, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 1156
    new-instance v5, Landroid/widget/CheckBox;

    invoke-direct {v5, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1157
    const-string v6, "hakopania"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 1158
    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\uff08\u5b8c\u6574\u6a21\u677f\uff09"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 1160
    sget v6, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1161
    invoke-static {v5}, Lcom/project7/localmanager/LocalUiStyle;->tree(Landroid/view/View;)V

    .line 1162
    const v6, 0x800013

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 1163
    const/16 v6, 0x30

    invoke-direct {p0, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 1164
    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v5, v7, v7, v7, v8}, Lcom/project7/localmanager/LocalUiStyle;->ripple(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    invoke-direct {p0, v8}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v10

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v8}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v11

    invoke-virtual {v5, v9, v10, v3, v11}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 1166
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1167
    iget-object v9, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1168
    invoke-direct {p0, v5, v4}, Lcom/project7/localmanager/MainActivity;->styleAccount(Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V

    .line 1169
    new-instance v9, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;

    invoke-direct {v9, p0, v2, v5, v4}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/lang/String;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1178
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1179
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1180
    sget v9, Lcom/project7/localmanager/LocalUiStyle;->BORDER:I

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1181
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1182
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v10, 0x18

    invoke-direct {p0, v10}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v10

    invoke-direct {v9, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1183
    invoke-direct {p0, v8}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1184
    invoke-virtual {v4, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1185
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u8c03\u6574 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " \u7684\u7ecf\u9a8c\u4e0e\u7b49\u7ea7"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalUiStyle;->accountLevelButton(Landroid/widget/Button;Ljava/lang/String;)V

    .line 1187
    new-instance v7, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v7, p0, v2}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda32;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->accountChecks:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-direct {p0, v8}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1191
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->accountRows:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    goto/16 :goto_0

    .line 1193
    :cond_3
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->accountRows:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 1194
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u6682\u65e0\u672c\u5730\u8d26\u53f7"

    goto :goto_2

    :cond_4
    const-string v0, "\u6ca1\u6709\u5339\u914d\u7684\u8d26\u53f7"

    :goto_2
    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 1195
    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x16

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->accountRows:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    :cond_5
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->updateRecipients()V

    .line 1198
    return-void
.end method

.method private requestNotificationPermission()V
    .locals 2

    .line 1414
    nop

    .line 1415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 1416
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/project7/localmanager/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1417
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/project7/localmanager/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 1419
    :cond_0
    return-void
.end method

.method private restoreDraft(Landroid/os/Bundle;)V
    .locals 6

    .line 982
    if-nez p1, :cond_0

    return-void

    .line 983
    :cond_0
    const-string v0, "choosingRecipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->choosingRecipients:Z

    .line 984
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->registration:Landroid/widget/LinearLayout;

    const-string v1, "registration"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->registrationToggle:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u6536\u8d77\u6ce8\u518c"

    goto :goto_1

    :cond_2
    const-string v1, "\u6279\u91cf\u6ce8\u518c"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->prefixInput:Landroid/widget/EditText;

    const-string v1, "prefix"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->countInput:Landroid/widget/EditText;

    const-string v1, "count"

    const-string v4, "10"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountSearch:Landroid/widget/EditText;

    const-string v1, "search"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 989
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->mailTitle:Landroid/widget/EditText;

    const-string v1, "mailTitle"

    const-string v4, "\u8d44\u6e90\u8865\u7ed9"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 990
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->mailContent:Landroid/widget/EditText;

    const-string v1, "mailContent"

    const-string v4, "\u672c\u5730\u6d4b\u8bd5\u8d44\u6e90\uff0c\u8bf7\u67e5\u6536\u3002"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 991
    const-string v0, "resourceId"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->restoredResourceId:Ljava/lang/String;

    .line 992
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceType:Landroid/widget/Spinner;

    const-string v1, "resourceType"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 993
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceQuality:Landroid/widget/Spinner;

    const-string v1, "resourceQuality"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 994
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceQuantity:Landroid/widget/EditText;

    const-string v1, "quantity"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 995
    const-string v0, "levelValue"

    const-string v1, "1000"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->restoredLevelValue:Ljava/lang/String;

    .line 996
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelMode:Landroid/widget/Spinner;

    const-string v1, "levelMode"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 997
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->followLogs:Landroid/widget/CheckBox;

    const-string v1, "followLogs"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 998
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->activitySelection:Landroid/widget/Button;

    if-eqz v0, :cond_5

    const-string v0, "activityStart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 999
    const-string v1, "activityKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1000
    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->activityKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/project7/localmanager/MainActivity;->activityKey:Ljava/lang/String;

    .line 1001
    :cond_3
    const-string v1, "fashionOpen"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->setFashionOpen(Z)V

    .line 1002
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->refreshActivity:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1003
    :cond_4
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->activityStart:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1004
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->activityStartButton:Landroid/widget/Button;

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->activityStart:Ljava/util/Calendar;

    .line 1005
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1004
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->activityDuration:Landroid/widget/EditText;

    const-string v1, "activityDuration"

    const-string v2, "168"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    :cond_5
    const-string v0, "attachmentLabels"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1009
    if-eqz v0, :cond_7

    move v1, v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachment"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1011
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/project7/localmanager/MainActivity;->attachmentLabels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1013
    :cond_7
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->updateAttachments()V

    .line 1014
    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1015
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scroll"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1016
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda41;

    invoke-direct {v4, v1, v2}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda41;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1018
    :cond_8
    return-void
.end method

.method private runAccountTask(Lcom/project7/localmanager/MainActivity$AccountTask;)V
    .locals 2

    .line 1367
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0, p1}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda47;-><init>(Lcom/project7/localmanager/MainActivity;Lcom/project7/localmanager/MainActivity$AccountTask;)V

    const-string p1, "project7-account-admin"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1378
    return-void
.end method

.method private sectionTitle(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 1386
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1387
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1388
    const/high16 p1, 0x41880000    # 17.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1389
    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1390
    sget p1, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1391
    const/16 p1, 0x18

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result p1

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1392
    return-object v0
.end method

.method private selectAllAccounts()V
    .locals 4

    .line 1208
    nop

    .line 1209
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountChecks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1210
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 1211
    :cond_0
    goto :goto_0

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountChecks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1213
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1214
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1216
    :cond_2
    goto :goto_1

    .line 1217
    :cond_3
    return-void
.end method

.method private setFashionOpen(Z)V
    .locals 4

    .line 697
    iput-boolean p1, p0, Lcom/project7/localmanager/MainActivity;->fashionOpen:Z

    .line 698
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->activityHub:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->fashionPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 700
    :cond_3
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 701
    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->fashionPanel:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/project7/localmanager/LocalUiStyle;->enter(Landroid/view/View;)V

    .line 702
    :cond_5
    return-void
.end method

.method private shortcut(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 9

    .line 867
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 868
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x50

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 869
    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 870
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v0, v2, v4, v2, v5}, Lcom/project7/localmanager/LocalUiStyle;->ripple(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 871
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 872
    invoke-static {p0, p4}, Lcom/project7/localmanager/LocalIcons;->drawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 873
    invoke-virtual {p4, p6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/16 p6, 0x18

    invoke-direct {p0, p6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, p6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result p6

    invoke-virtual {p4, v4, v4, v6, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 874
    const/4 p6, 0x0

    invoke-virtual {v2, p6, p4, p6, p6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 875
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x20

    invoke-direct {p0, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {p4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    new-instance p4, Landroid/widget/LinearLayout;

    invoke-direct {p4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 877
    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {p4, v6, v4, v8, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 878
    invoke-direct {p0, p2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    sget v8, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 879
    invoke-virtual {v6, p6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 880
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {p4, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    invoke-direct {p0, p3}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v8

    invoke-virtual {v6, v4, v8, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 882
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {p4, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    const-string p4, ""

    invoke-direct {p0, p4}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p4

    .line 885
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalIcons;->drawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 886
    sget v8, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {v6, v4, v4, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 887
    invoke-virtual {p4, v6, p6, p6, p6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 888
    new-instance p6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p6, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p4, p6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\uff0c"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 890
    new-instance p2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p5}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda26;-><init>(Lcom/project7/localmanager/MainActivity;I)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-direct {p0, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 892
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    return-void
.end method

.method private showActivityPicker()V
    .locals 6

    .line 705
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->activityLabels:Ljava/util/List;

    iget-object v4, p0, Lcom/project7/localmanager/MainActivity;->activitySearchTexts:Ljava/util/List;

    new-instance v5, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda56;

    invoke-direct {v5, p0}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda56;-><init>(Lcom/project7/localmanager/MainActivity;)V

    const-string v1, "\u9009\u62e9\u590d\u523b\u6279\u6b21"

    const-string v2, "\u641c\u7d22\u65e5\u671f\u3001\u65f6\u88c5 / \u795e\u5668\u4f7f\u540d\u79f0\u6216 ID"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/MainActivity;->showSearchList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/function/IntConsumer;)V

    .line 710
    return-void
.end method

.method private showLevelEditor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 556
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u8bf7\u5148\u9009\u62e9\u8d26\u53f7\uff0c\u6216\u70b9\u51fb\u8d26\u53f7\u53f3\u4fa7\u7684\u7b49\u7ea7\u56fe\u6807"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 559
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->levelTargets:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u6574\u8d26\u53f7\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->levelAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff09\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->levelAccounts:Ljava/util/List;

    const-string v2, "\u3001"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->levelPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->levelPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 561
    :cond_2
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 562
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7ecf\u9a8c\u4e0e\u7b49\u7ea7"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 563
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u5173\u95ed"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity;->levelDialog:Landroid/app/AlertDialog;

    .line 564
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 565
    return-void
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 1

    .line 1381
    const-string v0, "I"

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1383
    return-void
.end method

.method private showResourcePicker()V
    .locals 7

    .line 1244
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1245
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1246
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const-string v1, "\u641c\u7d22\u540d\u79f0\u6216 ID"

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1247
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1249
    new-instance v3, Landroid/widget/ArrayAdapter;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/project7/localmanager/MainActivity;->resourceLabels:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v5, 0x1090003

    invoke-direct {v3, p0, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1250
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1251
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x118

    invoke-direct {p0, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1252
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/project7/localmanager/MainActivity;->resourceType:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1253
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "\u53d6\u6d88"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1254
    new-instance v5, Lcom/project7/localmanager/MainActivity$7;

    invoke-direct {v5, p0, v3}, Lcom/project7/localmanager/MainActivity$7;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1264
    new-instance v2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v2, p0, v3, v4}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda35;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/ArrayAdapter;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1267
    invoke-static {v0}, Lcom/project7/localmanager/LocalUiStyle;->tree(Landroid/view/View;)V

    .line 1268
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1269
    return-void
.end method

.method private showSearchList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/function/IntConsumer;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            ")V"
        }
    .end annotation

    .line 714
    move-object v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 715
    const/16 v4, 0x12

    invoke-direct {p0, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v2, v5, v7, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 716
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v14

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 720
    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/lit16 v5, v5, -0x118

    const/16 v6, 0x8c

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v6, 0x140

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 721
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    const/4 v7, -0x1

    invoke-direct {v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 723
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v6, Lcom/project7/localmanager/LocalUiStyle;->BORDER:I

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 724
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    const-string v3, "\u6ca1\u6709\u5339\u914d\u7684\u7ed3\u679c"

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 726
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 728
    new-instance v13, Lcom/project7/localmanager/MainActivity$5;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x1090003

    invoke-direct {v13, p0, p0, v3, v1}, Lcom/project7/localmanager/MainActivity$5;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 736
    invoke-virtual {v5, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 737
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 738
    new-instance v3, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda52;

    move-object v8, v3

    move-object v9, v1

    move-object/from16 v10, p4

    move-object v11, v4

    move-object/from16 v12, p3

    invoke-direct/range {v8 .. v14}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda52;-><init>(Ljava/util/List;Ljava/util/List;Landroid/widget/EditText;Ljava/util/List;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;)V

    .line 745
    new-instance v6, Lcom/project7/localmanager/MainActivity$6;

    invoke-direct {v6, p0, v3}, Lcom/project7/localmanager/MainActivity$6;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 750
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v6, p1

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 751
    const-string v6, "\u53d6\u6d88"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 752
    new-instance v6, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda36;

    move-object/from16 v7, p5

    invoke-direct {v6, v1, v4, v7}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda36;-><init>(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/IntConsumer;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 756
    invoke-static {v2}, Lcom/project7/localmanager/LocalUiStyle;->tree(Landroid/view/View;)V

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 757
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 758
    return-void
.end method

.method private showUpdateNotice()V
    .locals 11

    .line 522
    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 524
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "update_notice.md"

    invoke-static {p0, v1}, Lcom/project7/localmanager/AssetData;->readAll(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "\u66f4\u65b0\u5185\u5bb9\u8bfb\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5b89\u88c5\u672c\u5730\u7ba1\u7406\u3002"

    :goto_0
    move-object v5, v0

    .line 526
    new-instance v0, Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->appVersion:Ljava/lang/String;

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->readNotice()Ljava/lang/String;

    move-result-object v4

    .line 527
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->noticeAcknowledged()Z

    move-result v6

    iget-wide v7, p0, Lcom/project7/localmanager/MainActivity;->restoredNoticeReadMillis:J

    iget v9, p0, Lcom/project7/localmanager/MainActivity;->restoredNoticeScroll:I

    new-instance v10, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda43;

    invoke-direct {v10, p0}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda43;-><init>(Lcom/project7/localmanager/MainActivity;)V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    .line 536
    invoke-virtual {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->show()V

    .line 537
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    iget-boolean v1, p0, Lcom/project7/localmanager/MainActivity;->activityResumed:Z

    invoke-virtual {v0, v1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->setHostResumed(Z)V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->restoreManualNotice:Z

    .line 539
    return-void

    .line 522
    :cond_1
    :goto_1
    return-void
.end method

.method private styleAccount(Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V
    .locals 3

    .line 1201
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/project7/localmanager/LocalUiStyle;->SOFT_ACCENT:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1202
    :goto_0
    const/4 v1, 0x0

    .line 1203
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/project7/localmanager/LocalUiStyle;->BORDER:I

    .line 1202
    :goto_1
    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2, p2}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1204
    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v0

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1205
    return-void
.end method

.method private switchPage(I)V
    .locals 6

    .line 834
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 835
    iget v2, p0, Lcom/project7/localmanager/MainActivity;->activePage:I

    if-eq p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 836
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 837
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v3}, Lcom/project7/localmanager/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 838
    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 839
    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 841
    :cond_1
    iput p1, p0, Lcom/project7/localmanager/MainActivity;->activePage:I

    .line 842
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->accountDock:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    if-ne p1, v1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 843
    move p1, v0

    :goto_2
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    .line 844
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 845
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 846
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget v5, p0, Lcom/project7/localmanager/MainActivity;->activePage:I

    if-ne p1, v5, :cond_3

    move v5, v0

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 847
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->navigation:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v5, p0, Lcom/project7/localmanager/MainActivity;->activePage:I

    if-ne p1, v5, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v0

    :goto_4
    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalUiStyle;->navigation(Landroid/widget/TextView;Z)V

    .line 843
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 849
    :cond_5
    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    iget v1, p0, Lcom/project7/localmanager/MainActivity;->activePage:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/project7/localmanager/LocalUiStyle;->enter(Landroid/view/View;)V

    .line 850
    :cond_6
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->finishRecipients:Landroid/widget/Button;

    if-eqz p1, :cond_8

    iget-boolean v1, p0, Lcom/project7/localmanager/MainActivity;->choosingRecipients:Z

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v0, v4

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 851
    :cond_8
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->updateRecipients()V

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->refreshLogs()V

    .line 852
    return-void
.end method

.method private updateAttachments()V
    .locals 6

    .line 918
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->attachmentSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->attachmentLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u6682\u65e0\u9644\u4ef6"

    goto :goto_0

    .line 919
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u6dfb\u52a0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->attachmentLabels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / 20\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->attachmentLabels:Ljava/util/List;

    const-string v3, "\n"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 918
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->attachmentSummary:Landroid/widget/TextView;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 921
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->attachmentSummary:Landroid/widget/TextView;

    const/16 v1, 0xee

    const/16 v2, 0xeb

    const/16 v3, 0xf6

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->attachmentSummary:Landroid/widget/TextView;

    invoke-static {v4, v5, v1, v2, v3}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 922
    return-void
.end method

.method private updateRecipients()V
    .locals 5

    .line 901
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->recipients:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u6536\u4ef6\u8d26\u53f7\uff1a\u672a\u9009\u62e9"

    goto :goto_0

    .line 902
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u4ef6\u8d26\u53f7\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff09\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    const-string v3, "\u3001"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->dockSelection:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u9009 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u4e2a\u8d26\u53f7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    :cond_2
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->homeSelection:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    :cond_3
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountCount:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u53f7\u5217\u8868 \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->accountNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u4e2a / \u5df2\u9009 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u4e2a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    :cond_4
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->selectAllButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountRows:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 907
    nop

    .line 908
    nop

    .line 909
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountChecks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 910
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 911
    :cond_5
    goto :goto_1

    .line 912
    :cond_6
    if-lez v2, :cond_7

    if-ne v2, v3, :cond_7

    const/4 v1, 0x1

    .line 913
    :cond_7
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->selectAllButton:Landroid/widget/Button;

    if-eqz v1, :cond_8

    const-string v1, "\u53d6\u6d88\u5168\u9009"

    goto :goto_2

    :cond_8
    const-string v1, "\u5168\u9009"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 915
    :cond_9
    return-void
.end method

.method private weightedButton()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1429
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method private weightedButtonWithMargin()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 1433
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->weightedButton()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1434
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1435
    return-object v0
.end method

.method private weightedInput()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1439
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method private weightedInputWithMargin()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 1443
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->weightedInput()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 1444
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1445
    return-object v0
.end method


# virtual methods
.method public synthetic lambda$addHistoricalSections$37$MainActivity(Ljava/util/Map$Entry;I)V
    .locals 2

    .line 781
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 782
    const-string v1, "\u6d3b\u52a8\u914d\u7f6e"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n\u8be5\u7c7b\u578b\u5c1a\u4e0d\u652f\u6301\u5f00\u653e\u6e38\u73a9\u3002"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 783
    const-string p2, "\u5173\u95ed"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 781
    return-void
.end method

.method public synthetic lambda$addHistoricalSections$38$MainActivity(Ljava/lang/String;Ljava/util/Map$Entry;Landroid/view/View;)V
    .locals 6

    .line 780
    nop

    .line 781
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/util/List;

    new-instance v5, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda57;

    invoke-direct {v5, p0, p2}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda57;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/util/Map$Entry;)V

    .line 780
    const-string v2, "\u641c\u7d22\u6d3b\u52a8 ID\u3001\u6a21\u677f\u6216\u65e5\u671f"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/MainActivity;->showSearchList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public synthetic lambda$confirmAdjustLevel$52$MainActivity(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    .line 1356
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1357
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u8c03\u6574\u7ed3\u679c"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1358
    const-string p2, "\u786e\u5b9a"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1359
    return-void
.end method

.method public synthetic lambda$confirmAdjustLevel$53$MainActivity(Ljava/util/List;ZZILjava/lang/String;Landroid/widget/Button;)V
    .locals 5

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1343
    if-eqz p2, :cond_0

    .line 1344
    :try_start_0
    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->profiles:Lcom/project7/localmanager/LocalProfileStore;

    invoke-virtual {v2, v1}, Lcom/project7/localmanager/LocalProfileStore;->grantAllHeroes(Ljava/lang/String;)Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;

    move-result-object v2

    .line 1345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff1a\u65b0\u589e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;->added:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u4f4d\uff0c\u5df2\u62e5\u6709\u76ee\u5f55\u4e2d\u5168\u90e8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;->total:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u4f4d\u795e\u5668\u4f7f"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    goto :goto_0

    .line 1348
    :cond_0
    iget-object v2, p0, Lcom/project7/localmanager/MainActivity;->profiles:Lcom/project7/localmanager/LocalProfileStore;

    invoke-virtual {v2, v1, p3, p4}, Lcom/project7/localmanager/LocalProfileStore;->adjustCommanderLevel(Ljava/lang/String;ZI)[B

    move-result-object v2

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "level"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u7ea7\uff0c\u672c\u7ea7\u7ecf\u9a8c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "exp"

    .line 1350
    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1349
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a\u5931\u8d25\uff0c"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    :goto_1
    goto/16 :goto_0

    .line 1353
    :cond_1
    const-string p1, "\n"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 1354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8d26\u53f7\u8c03\u6574\uff08"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\uff09\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "I"

    invoke-static {p3, p2}, Lcom/project7/localmanager/LocalDiagnosticLog;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    iget-object p2, p0, Lcom/project7/localmanager/MainActivity;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda44;

    invoke-direct {p3, p0, p6, p1}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda44;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1360
    return-void
.end method

.method public synthetic lambda$confirmAdjustLevel$54$MainActivity([ZLjava/util/List;ZZILjava/lang/String;Landroid/widget/Button;Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1338
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    .line 1339
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda51;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda51;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/util/List;ZZILjava/lang/String;Landroid/widget/Button;)V

    const-string v1, "project7-level-admin"

    invoke-direct {v0, v9, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1361
    return-void
.end method

.method public synthetic lambda$confirmDeleteAccounts$44$MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1107
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->deleteSelectedAccounts()V

    return-void
.end method

.method public synthetic lambda$confirmSendMail$49$MainActivity(Landroid/widget/Button;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1306
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1307
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1308
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->refreshAccounts()V

    .line 1309
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->attachmentLabels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->updateAttachments()V

    .line 1310
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u90ae\u4ef6\u53d1\u9001\u7ed3\u679c"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6210\u529f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\u5931\u8d25\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1310
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 1311
    const-string p3, "\u786e\u5b9a"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1312
    return-void
.end method

.method public synthetic lambda$confirmSendMail$50$MainActivity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/Button;)V
    .locals 9

    .line 1300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1302
    :try_start_0
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->accounts:Lcom/project7/localmanager/LocalAccountStore;

    invoke-virtual {v3}, Lcom/project7/localmanager/LocalAccountStore;->listAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1303
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->profiles:Lcom/project7/localmanager/LocalProfileStore;

    iget-object v4, p0, Lcom/project7/localmanager/MainActivity;->tutorials:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v4, v2}, Lcom/project7/localmanager/LocalTutorialStore;->load(Ljava/lang/String;)Lcom/project7/localmanager/LocalTutorialStore$Progress;

    move-result-object v5

    move-object v4, v2

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/project7/localmanager/LocalProfileStore;->sendSystemMail(Ljava/lang/String;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    goto :goto_0

    .line 1302
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "\u8d26\u53f7\u5df2\u5220\u9664"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1305
    :cond_1
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;

    invoke-direct {p2, p0, p5, v0, v1}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/Button;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1313
    return-void
.end method

.method public synthetic lambda$confirmSendMail$51$MainActivity(Landroid/widget/Button;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1298
    const/4 p6, 0x0

    invoke-virtual {p1, p6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1299
    new-instance p6, Ljava/lang/Thread;

    new-instance p7, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda50;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda50;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/widget/Button;)V

    const-string p1, "project7-mail-admin"

    invoke-direct {p6, p7, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p6}, Ljava/lang/Thread;->start()V

    .line 1314
    return-void
.end method

.method public synthetic lambda$createAccounts$43$MainActivity(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accounts:Lcom/project7/localmanager/LocalAccountStore;

    invoke-virtual {v0, p1, p2}, Lcom/project7/localmanager/LocalAccountStore;->registerBatch(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p2

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u521b\u5efa "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u4e2a\u8d26\u53f7\uff1b\u5df2\u5b58\u5728 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1093
    return-object p1
.end method

.method public synthetic lambda$createActivityPage$22$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 573
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->setFashionOpen(Z)V

    return-void
.end method

.method public synthetic lambda$createActivityPage$23$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 584
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->setFashionOpen(Z)V

    return-void
.end method

.method public synthetic lambda$createActivityPage$25$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 629
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->showActivityPicker()V

    return-void
.end method

.method public synthetic lambda$createActivityPage$27$MainActivity(Ljava/util/Calendar;Landroid/widget/Button;Ljava/text/SimpleDateFormat;Landroid/widget/DatePicker;III)V
    .locals 1

    .line 639
    invoke-virtual {p1, p5, p6, p7}, Ljava/util/Calendar;->set(III)V

    .line 640
    new-instance p7, Landroid/app/TimePickerDialog;

    new-instance p4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {p4, p1, p2, p3}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda1;-><init>(Ljava/util/Calendar;Landroid/widget/Button;Ljava/text/SimpleDateFormat;)V

    .line 644
    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p5

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p6

    const/4 v0, 0x1

    move-object p1, p7

    move-object p2, p0

    move-object p3, p4

    move p4, p5

    move p5, p6

    move p6, v0

    invoke-direct/range {p1 .. p6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p7}, Landroid/app/TimePickerDialog;->show()V

    .line 645
    return-void
.end method

.method public synthetic lambda$createActivityPage$28$MainActivity(Ljava/util/Calendar;Landroid/widget/Button;Ljava/text/SimpleDateFormat;Landroid/view/View;)V
    .locals 6

    .line 638
    new-instance p4, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/util/Calendar;Landroid/widget/Button;Ljava/text/SimpleDateFormat;)V

    .line 645
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, p4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p4}, Landroid/app/DatePickerDialog;->show()V

    .line 638
    return-void
.end method

.method public synthetic lambda$createActivityPage$29$MainActivity(Landroid/widget/Button;Ljava/util/List;Ljava/util/List;Lcom/project7/localmanager/LocalActivityStore;Ljava/text/SimpleDateFormat;Landroid/widget/TextView;Ljava/util/Map;)V
    .locals 7

    .line 652
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->activityKey:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    nop

    .line 654
    invoke-interface {p3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :try_start_0
    invoke-virtual {p4}, Lcom/project7/localmanager/LocalActivityStore;->snapshot()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    .line 657
    const-string p2, "\u672a\u5f00\u653e"

    .line 658
    if-eqz p1, :cond_3

    const/4 p3, 0x1

    aget-wide v1, p1, p3

    const/4 p4, 0x0

    aget-wide v3, p1, p4

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 660
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v5, p1, p4

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    const-string v1, "\u5df2\u9884\u7ea6"

    goto :goto_0

    :cond_1
    aget-wide v5, p1, p3

    cmp-long v1, v1, v5

    if-gez v1, :cond_2

    const-string v1, "\u5f00\u653e\u4e2d"

    goto :goto_0

    :cond_2
    const-string v1, "\u5df2\u7ed3\u675f"

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    aget-wide v5, p1, p4

    mul-long/2addr v5, v3

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 661
    invoke-virtual {p5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " \u81f3 "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/util/Date;

    aget-wide v1, p1, p3

    mul-long/2addr v1, v3

    invoke-direct {p4, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 662
    invoke-virtual {p5, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 664
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n\u65f6\u88c5 ID\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u3001"

    invoke-interface {p7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    goto :goto_1

    :catch_0
    move-exception p1

    const-string p1, "\u6d3b\u52a8\u914d\u7f6e\u8bfb\u53d6\u5931\u8d25"

    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    :goto_1
    return-void
.end method

.method public synthetic lambda$createActivityPage$30$MainActivity(Landroid/widget/EditText;Ljava/util/Calendar;Lcom/project7/localmanager/LocalActivityStore;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 15

    move-object v1, p0

    .line 673
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 674
    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const-wide/32 v4, 0x15630

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-object v0, v1, Lcom/project7/localmanager/MainActivity;->activityKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v10, v4, v6

    .line 676
    iget-object v9, v1, Lcom/project7/localmanager/MainActivity;->activityKey:Ljava/lang/String;

    const-wide/16 v4, 0xe10

    mul-long/2addr v2, v4

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v12

    move-object/from16 v8, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v8 .. v14}, Lcom/project7/localmanager/LocalActivityStore;->set(Ljava/lang/String;JJLcom/project7/localmanager/LocalCommerceCatalog;)V

    .line 677
    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    const-string v0, "\u5df2\u5bf9\u6240\u6709\u8d26\u53f7\u751f\u6548\uff0c\u91cd\u65b0\u767b\u5f55\u6e38\u620f\u5237\u65b0\u5165\u53e3"

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 678
    goto :goto_1

    .line 674
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    const-string v0, "\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u65f6\u95f4\u548c\u6301\u7eed\u5c0f\u65f6\u6570"

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 679
    :goto_1
    return-void
.end method

.method public synthetic lambda$createActivityPage$31$MainActivity(Lcom/project7/localmanager/LocalActivityStore;Ljava/lang/String;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 7

    .line 688
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v6, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/project7/localmanager/LocalActivityStore;->set(Ljava/lang/String;JJLcom/project7/localmanager/LocalCommerceCatalog;)V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, "\u5173\u95ed\u5931\u8d25\uff0c\u539f\u914d\u7f6e\u4fdd\u7559"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 690
    :goto_0
    return-void
.end method

.method public synthetic lambda$createActivityPage$32$MainActivity(Lcom/project7/localmanager/LocalActivityStore;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 7

    .line 684
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->activityKey:Ljava/lang/String;

    if-nez v3, :cond_0

    return-void

    .line 685
    :cond_0
    nop

    .line 686
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u5173\u95ed\u6b64\u6d3b\u52a8\uff1f"

    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    const-string v0, "\u6240\u6709\u8d26\u53f7\u5c06\u505c\u6b62\u8d2d\u4e70\u8be5\u671f\u65f6\u88c5\uff0c\u5df2\u8d2d\u4e70\u7684\u65f6\u88c5\u4fdd\u7559\u3002"

    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    const/4 v0, 0x0

    .line 687
    const-string v1, "\u53d6\u6d88"

    invoke-virtual {p4, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    new-instance v6, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/project7/localmanager/MainActivity;Lcom/project7/localmanager/LocalActivityStore;Ljava/lang/String;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;)V

    const-string p1, "\u5173\u95ed"

    invoke-virtual {p4, p1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 690
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 691
    return-void
.end method

.method public synthetic lambda$createPage$39$MainActivity(ILandroid/view/View;)V
    .locals 0

    .line 825
    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->switchPage(I)V

    return-void
.end method

.method public synthetic lambda$deleteSelectedAccounts$45$MainActivity(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accounts:Lcom/project7/localmanager/LocalAccountStore;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalAccountStore;->deleteAccounts(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 1115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1117
    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->profiles:Lcom/project7/localmanager/LocalProfileStore;

    invoke-virtual {v3, v2}, Lcom/project7/localmanager/LocalProfileStore;->delete(Ljava/lang/String;)Z

    move-result v3

    .line 1118
    iget-object v4, p0, Lcom/project7/localmanager/MainActivity;->tutorials:Lcom/project7/localmanager/LocalTutorialStore;

    invoke-virtual {v4, v2}, Lcom/project7/localmanager/LocalTutorialStore;->delete(Ljava/lang/String;)Z

    move-result v4

    .line 1119
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 1120
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    :cond_1
    goto :goto_0

    .line 1123
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1126
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u5220\u9664 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a\u8d26\u53f7"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1124
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u53f7\u5df2\u5220\u9664\uff0c\u4f46\u4ee5\u4e0b\u8fdb\u5ea6\u6587\u4ef6\u6e05\u7406\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic lambda$onCreate$0$MainActivity(Landroid/view/View;)V
    .locals 1

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->showLevelEditor(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 244
    iget-boolean p1, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeRequired:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->showUpdateNotice()V

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {p0}, Lcom/project7/localmanager/GatewayService;->start(Landroid/content/Context;)V

    .line 246
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$10$MainActivity(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 412
    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->confirmAdjustLevel(Landroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$onCreate$11$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 422
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/project7/localmanager/MainActivity;->choosingRecipients:Z

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->switchPage(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$12$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 445
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->showResourcePicker()V

    return-void
.end method

.method public synthetic lambda$onCreate$13$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 462
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->addMailAttachment()V

    return-void
.end method

.method public synthetic lambda$onCreate$14$MainActivity(Landroid/view/View;)V
    .locals 1

    .line 467
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->attachmentLabels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->updateAttachments()V

    .line 469
    return-void
.end method

.method public synthetic lambda$onCreate$15$MainActivity(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 476
    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->confirmSendMail(Landroid/widget/Button;)V

    return-void
.end method

.method public synthetic lambda$onCreate$16$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 483
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->copyLogs()V

    return-void
.end method

.method public synthetic lambda$onCreate$17$MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 490
    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->clear()V

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->refreshLogs()V

    .line 491
    return-void
.end method

.method public synthetic lambda$onCreate$18$MainActivity(Landroid/view/View;)V
    .locals 2

    .line 487
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6e05\u7a7a\u65e5\u5fd7"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 488
    const-string v0, "\u6e05\u9664\u5f53\u524d\u8bbe\u5907\u4fdd\u5b58\u7684\u8bca\u65ad\u65e5\u5fd7\uff1f\u8d26\u53f7\u4e0e\u8fdb\u5ea6\u4e0d\u4f1a\u88ab\u5220\u9664\u3002"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 489
    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/project7/localmanager/MainActivity;)V

    const-string v1, "\u6e05\u7a7a"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 491
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 487
    return-void
.end method

.method public synthetic lambda$onCreate$19$MainActivity()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->logScroll:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method public synthetic lambda$onCreate$2$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 252
    invoke-static {p0}, Lcom/project7/localmanager/GatewayService;->stop(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$onCreate$20$MainActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 496
    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->logScroll:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda42;

    invoke-direct {p2, p0}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda42;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 497
    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$3$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->showUpdateNotice()V

    return-void
.end method

.method public synthetic lambda$onCreate$4$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 279
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/project7/localmanager/MainActivity;->choosingRecipients:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->switchPage(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$5$MainActivity(Landroid/widget/Button;Landroid/view/View;)V
    .locals 2

    .line 291
    iget-object p2, p0, Lcom/project7/localmanager/MainActivity;->registration:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->registration:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    if-eqz p2, :cond_2

    const-string v0, "\u6279\u91cf\u6ce8\u518c"

    goto :goto_1

    :cond_2
    const-string v0, "\u6536\u8d77\u6ce8\u518c"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 294
    if-eqz p2, :cond_3

    const-string v0, "\u5c55\u5f00\u6279\u91cf\u6ce8\u518c"

    goto :goto_2

    :cond_3
    const-string v0, "\u6536\u8d77\u6279\u91cf\u6ce8\u518c"

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 295
    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->registration:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/project7/localmanager/LocalUiStyle;->enter(Landroid/view/View;)V

    .line 296
    :cond_4
    return-void
.end method

.method public synthetic lambda$onCreate$6$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->createAccounts()V

    return-void
.end method

.method public synthetic lambda$onCreate$7$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->selectAllAccounts()V

    return-void
.end method

.method public synthetic lambda$onCreate$8$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->confirmDeleteAccounts()V

    return-void
.end method

.method public synthetic lambda$onCreate$9$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->refreshAccounts()V

    return-void
.end method

.method public synthetic lambda$renderAccounts$46$MainActivity(Ljava/lang/String;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1170
    if-eqz p5, :cond_0

    .line 1171
    iget-object p4, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1173
    :cond_0
    iget-object p4, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {p4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1175
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/project7/localmanager/MainActivity;->styleAccount(Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V

    .line 1176
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->updateRecipients()V

    .line 1177
    return-void
.end method

.method public synthetic lambda$renderAccounts$47$MainActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1187
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->showLevelEditor(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$runAccountTask$56$MainActivity(Ljava/lang/String;)V
    .locals 0

    .line 1371
    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    .line 1372
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->refreshAccounts()V

    .line 1373
    return-void
.end method

.method public synthetic lambda$runAccountTask$57$MainActivity(Ljava/lang/Exception;)V
    .locals 2

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8d26\u53f7\u64cd\u4f5c\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/project7/localmanager/MainActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$runAccountTask$58$MainActivity(Lcom/project7/localmanager/MainActivity$AccountTask;)V
    .locals 2

    .line 1369
    :try_start_0
    invoke-interface {p1}, Lcom/project7/localmanager/MainActivity$AccountTask;->run()Ljava/lang/String;

    move-result-object p1

    .line 1370
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p1}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda49;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    goto :goto_0

    .line 1374
    :catch_0
    move-exception p1

    .line 1375
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, p1}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda48;-><init>(Lcom/project7/localmanager/MainActivity;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1377
    :goto_0
    return-void
.end method

.method public synthetic lambda$showActivityPicker$33$MainActivity(I)V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->activityKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity;->activityKey:Ljava/lang/String;

    .line 708
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->refreshActivity:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 709
    return-void
.end method

.method public synthetic lambda$showResourcePicker$48$MainActivity(Landroid/widget/ArrayAdapter;Landroid/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1265
    iget-object p3, p0, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, p5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1266
    return-void
.end method

.method public synthetic lambda$showUpdateNotice$21$MainActivity()V
    .locals 4

    .line 528
    const-string v0, "update_notice"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/project7/localmanager/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "first_read_confirmed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 529
    iput-boolean v1, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeRequired:Z

    .line 530
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/project7/localmanager/MainActivity;->restoredNoticeReadMillis:J

    iput v1, p0, Lcom/project7/localmanager/MainActivity;->restoredNoticeScroll:I

    iput-boolean v1, p0, Lcom/project7/localmanager/MainActivity;->restoreManualNotice:Z

    .line 531
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    .line 532
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    .line 533
    invoke-virtual {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dismiss()V

    .line 534
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->continueAfterNotice()V

    .line 535
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1021
    iget-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeRequired:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->showUpdateNotice()V

    return-void

    .line 1022
    :cond_0
    iget v0, p0, Lcom/project7/localmanager/MainActivity;->activePage:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/project7/localmanager/MainActivity;->fashionOpen:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->setFashionOpen(Z)V

    return-void

    .line 1023
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/project7/localmanager/MainActivity;->choosingRecipients:Z

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/project7/localmanager/MainActivity;->choosingRecipients:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/project7/localmanager/MainActivity;->switchPage(I)V

    goto :goto_0

    .line 1024
    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/project7/localmanager/MainActivity;->switchPage(I)V

    goto :goto_0

    .line 1025
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1026
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25

    .line 146
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalAppVersion;->label(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/MainActivity;->appVersion:Ljava/lang/String;

    .line 148
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    sget-object v0, Lcom/project7/localmanager/MainActivity;->PROCESS_SESSION:Ljava/lang/String;

    const-string v1, "noticeSession"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v10

    .line 149
    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "updateNoticeRequired"

    invoke-virtual {v9, v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->noticeAcknowledged()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v10

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v11

    :goto_2
    iput-boolean v1, v8, Lcom/project7/localmanager/MainActivity;->updateNoticeRequired:Z

    .line 150
    if-eqz v0, :cond_4

    .line 151
    const-wide/16 v0, 0x0

    const-string v2, "noticeReadMillis"

    invoke-virtual {v9, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/project7/localmanager/MainActivity;->restoredNoticeReadMillis:J

    .line 152
    const-string v0, "noticeScroll"

    invoke-virtual {v9, v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v8, Lcom/project7/localmanager/MainActivity;->restoredNoticeScroll:I

    .line 153
    const-string v0, "noticeOpen"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v8, Lcom/project7/localmanager/MainActivity;->updateNoticeRequired:Z

    if-nez v0, :cond_3

    move v0, v11

    goto :goto_3

    :cond_3
    move v0, v10

    :goto_3
    iput-boolean v0, v8, Lcom/project7/localmanager/MainActivity;->restoreManualNotice:Z

    .line 155
    :cond_4
    if-eqz v9, :cond_5

    const-string v0, "pendingGatewayStart"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v11

    goto :goto_4

    :cond_5
    move v0, v10

    :goto_4
    iput-boolean v0, v8, Lcom/project7/localmanager/MainActivity;->pendingGatewayStart:Z

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/project7/localmanager/LocalUiStyle;->BACKGROUND:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v12, -0x1

    invoke-virtual {v0, v12}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2010

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->initialize(Ljava/io/File;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6253\u5f00\u672c\u5730\u7ba1\u7406 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1bAndroid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I"

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-eqz v9, :cond_6

    .line 162
    const-string v0, "selectedAccounts"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_6

    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 166
    :cond_6
    :try_start_0
    new-instance v0, Lcom/project7/localmanager/LocalAccountStore;

    invoke-direct {v0, v8}, Lcom/project7/localmanager/LocalAccountStore;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/project7/localmanager/MainActivity;->accounts:Lcom/project7/localmanager/LocalAccountStore;

    .line 167
    new-instance v0, Lcom/project7/localmanager/LocalProfileStore;

    invoke-direct {v0, v8}, Lcom/project7/localmanager/LocalProfileStore;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/project7/localmanager/MainActivity;->profiles:Lcom/project7/localmanager/LocalProfileStore;

    .line 168
    new-instance v0, Lcom/project7/localmanager/LocalTutorialStore;

    invoke-direct {v0, v8}, Lcom/project7/localmanager/LocalTutorialStore;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lcom/project7/localmanager/MainActivity;->tutorials:Lcom/project7/localmanager/LocalTutorialStore;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_5

    .line 169
    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e0\u6cd5\u6253\u5f00\u8d26\u53f7\u6570\u636e\u5e93\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    :goto_5
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 176
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 177
    sget v1, Lcom/project7/localmanager/LocalUiStyle;->BACKGROUND:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 178
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 179
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 180
    const/16 v2, 0x16

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x16

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 181
    const-string v2, "Project7  /  \u672c\u5730\u7ba1\u7406"

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 182
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget v3, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    invoke-direct {v3, v10, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->appVersion:Ljava/lang/String;

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    const/16 v3, 0xa

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xa

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-direct {v8, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 186
    sget v3, Lcom/project7/localmanager/LocalUiStyle;->BORDER:I

    const/16 v4, 0x8

    invoke-static {v12, v10, v3, v4, v2}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lcom/project7/localmanager/MainActivity;->navigationBar:Landroid/widget/LinearLayout;

    .line 191
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 192
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->navigationBar:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 193
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->navigationBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 194
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->navigationBar:Landroid/widget/LinearLayout;

    const/4 v2, 0x6

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 195
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lcom/project7/localmanager/MainActivity;->pageHost:Landroid/widget/FrameLayout;

    .line 196
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v12, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lcom/project7/localmanager/MainActivity;->accountDock:Landroid/widget/LinearLayout;

    .line 198
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 199
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->accountDock:Landroid/widget/LinearLayout;

    const/16 v2, 0x16

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x16

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 200
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->accountDock:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 201
    const-string v1, "\u672a\u9009\u62e9\u8d26\u53f7"

    invoke-direct {v8, v1}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v8, Lcom/project7/localmanager/MainActivity;->dockSelection:Landroid/widget/TextView;

    .line 202
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountDock:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u7ecf\u9a8c\u4e0e\u7b49\u7ea7"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const/16 v2, 0x12

    const-string v13, "ui:primary"

    invoke-static {v1, v13, v2}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 205
    new-instance v2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountDock:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->accountDock:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/project7/localmanager/LocalUiStyle;->tree(Landroid/view/View;)V

    .line 208
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->accountDock:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->navigationBar:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    const-string v1, "\u5de5\u4f5c\u53f0"

    const-string v2, "\u9996\u9875"

    invoke-direct {v8, v1, v2, v11}, Lcom/project7/localmanager/MainActivity;->createPage(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v14

    .line 212
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    const/16 v2, 0x14

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x14

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x14

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xe

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 215
    sget v2, Lcom/project7/localmanager/LocalUiStyle;->BORDER:I

    const/16 v3, 0x14

    invoke-static {v12, v10, v2, v3, v1}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 217
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 218
    const-string v3, "LOCAL GATEWAY"

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 219
    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 220
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-direct {v4, v10, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const-string v3, "\u5f85\u542f\u52a8"

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->gatewayBadge:Landroid/widget/TextView;

    .line 222
    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->gatewayBadge:Landroid/widget/TextView;

    const/16 v4, 0xa

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-direct {v8, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-direct {v8, v7}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 223
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->gatewayBadge:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->status:Landroid/widget/TextView;

    .line 226
    const/high16 v3, 0x41b80000    # 23.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->status:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 227
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 228
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->status:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v10, v3, v10, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 229
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->status:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->details:Landroid/widget/TextView;

    .line 232
    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 233
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->details:Landroid/widget/TextView;

    sget v3, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->details:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f933333    # 1.15f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 235
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->details:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 236
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->details:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->horizontalActions()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 239
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 240
    const-string v4, "\u542f\u52a8\u672c\u5730\u7f51\u5173"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const/4 v4, 0x6

    invoke-static {v3, v13, v4}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 242
    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->startGateway:Landroid/widget/Button;

    .line 243
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedButton()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 250
    const/4 v4, 0x7

    const-string v5, "\u505c\u6b62\u672c\u5730\u7f51\u5173"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/LocalUiStyle;->iconButton(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 251
    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->stopGateway:Landroid/widget/Button;

    .line 252
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v4, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x34

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x34

    invoke-direct {v8, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 254
    const/16 v5, 0x8

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 255
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->horizontalActions()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 259
    sget v2, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    const-string v3, "\u672c\u5730\u8d26\u53f7"

    invoke-direct {v8, v1, v3, v2}, Lcom/project7/localmanager/MainActivity;->metric(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->homeAccounts:Landroid/widget/TextView;

    .line 260
    const/16 v2, 0x6c

    const/16 v3, 0x56

    const/16 v4, 0xa1

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const-string v3, "\u5df2\u9009\u8d26\u53f7"

    invoke-direct {v8, v1, v3, v2}, Lcom/project7/localmanager/MainActivity;->metric(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->homeSelection:Landroid/widget/TextView;

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    const-string v1, "\u5e38\u7528\u7ba1\u7406"

    invoke-direct {v8, v1}, Lcom/project7/localmanager/MainActivity;->sectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    const/4 v5, 0x2

    const/4 v6, 0x1

    sget v7, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    const-string v3, "\u8d26\u53f7\u7ba1\u7406"

    const-string v4, "\u8d26\u53f7\u3001\u6279\u91cf\u6ce8\u518c\u4e0e\u7b49\u7ea7"

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/MainActivity;->shortcut(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;III)V

    .line 264
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v1, 0x6c

    const/16 v2, 0x56

    const/16 v3, 0xa1

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const-string v3, "\u7cfb\u7edf\u90ae\u4ef6"

    const-string v4, "\u6536\u4ef6\u8d26\u53f7\u4e0e\u8d44\u6e90\u9644\u4ef6"

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/MainActivity;->shortcut(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;III)V

    .line 265
    const/4 v5, 0x5

    const/4 v6, 0x4

    const/16 v1, 0xa7

    const/16 v2, 0x6d

    const/16 v3, 0x21

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const-string v3, "\u6d3b\u52a8\u4e2d\u5fc3"

    const-string v4, "\u65f6\u88c5\u590d\u523b\u4e0e\u5206\u7c7b\u76ee\u5f55"

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/MainActivity;->shortcut(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;III)V

    .line 266
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/16 v1, 0x36

    const/16 v2, 0x6c

    const/16 v3, 0xa0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const-string v3, "\u7f51\u5173\u65e5\u5fd7"

    const-string v4, "\u8fd0\u884c\u8bb0\u5f55\u4e0e\u8bca\u65ad"

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct/range {v1 .. v7}, Lcom/project7/localmanager/MainActivity;->shortcut(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;III)V

    .line 267
    const-string v1, "\u516c\u544a"

    invoke-direct {v8, v1}, Lcom/project7/localmanager/MainActivity;->sectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "\u66f4\u65b0\u516c\u544a"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 270
    new-instance v2, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 \u672c\u5730\u5316\u58f0\u660e\u4e0e\u6700\u65b0\u66f4\u65b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    const/4 v1, 0x2

    const-string v2, "\u8d26\u53f7\u7ba1\u7406"

    const-string v3, "\u8d26\u53f7"

    invoke-direct {v8, v2, v3, v1}, Lcom/project7/localmanager/MainActivity;->createPage(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 275
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->finishRecipients:Landroid/widget/Button;

    .line 276
    const-string v3, "\u5b8c\u6210\u9009\u62e9\uff0c\u8fd4\u56de\u90ae\u4ef6"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->finishRecipients:Landroid/widget/Button;

    const/16 v3, 0xa

    invoke-static {v2, v13, v3}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 278
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->finishRecipients:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->finishRecipients:Landroid/widget/Button;

    new-instance v3, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v3, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda21;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->finishRecipients:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 282
    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->registrationToggle:Landroid/widget/Button;

    .line 283
    const-string v3, "\u6279\u91cf\u6ce8\u518c"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->registration:Landroid/widget/LinearLayout;

    .line 287
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 288
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->registration:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->registration:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v3, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {v3, v8, v2}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda29;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    nop

    .line 298
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->registration:Landroid/widget/LinearLayout;

    .line 300
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->prefixInput:Landroid/widget/EditText;

    .line 301
    const-string v3, "\u8d26\u53f7\u6216\u8d26\u53f7\u524d\u7f00"

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->prefixInput:Landroid/widget/EditText;

    const-string v4, "\u8d26\u53f7\u6216\u8d26\u53f7\u524d\u7f00\uff0c\u4f8b\u5982 test"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->prefixInput:Landroid/widget/EditText;

    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 304
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->prefixInput:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->horizontalActions()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 307
    const-string v4, "\u6ce8\u518c\u6570\u91cf"

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x2

    invoke-direct {v5, v10, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    const-string v4, "\u7edf\u4e00\u5bc6\u7801"

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->horizontalActions()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 311
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 312
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, v8, Lcom/project7/localmanager/MainActivity;->countInput:Landroid/widget/EditText;

    .line 313
    const-string v5, "\u6570\u91cf"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->countInput:Landroid/widget/EditText;

    const-string v5, "10"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->countInput:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 316
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->countInput:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 317
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->countInput:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedInput()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, v8, Lcom/project7/localmanager/MainActivity;->passwordInput:Landroid/widget/EditText;

    .line 320
    const-string v5, "\u7edf\u4e00\u5bc6\u7801"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->passwordInput:Landroid/widget/EditText;

    const-string v5, "123456"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->passwordInput:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 323
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->passwordInput:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 325
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->passwordInput:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedInputWithMargin()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 329
    const-string v4, "\u6279\u91cf\u6ce8\u518c"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const/16 v4, 0x8

    invoke-static {v3, v13, v4}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 331
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v4, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda22;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    nop

    .line 335
    const-string v2, "\u8d26\u53f7\u5217\u8868"

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountCount:Landroid/widget/TextView;

    .line 336
    sget v3, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountCount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 337
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountCount:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {v2, v10, v3, v10, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 338
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountCount:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountSearch:Landroid/widget/EditText;

    .line 340
    const-string v3, "\u641c\u7d22\u8d26\u53f7"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountSearch:Landroid/widget/EditText;

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 341
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountSearch:Landroid/widget/EditText;

    const-string v3, "\u641c\u7d22\u8d26\u53f7"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountSearch:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountSearch:Landroid/widget/EditText;

    new-instance v3, Lcom/project7/localmanager/MainActivity$2;

    invoke-direct {v3, v8}, Lcom/project7/localmanager/MainActivity$2;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 349
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountRows:Landroid/widget/LinearLayout;

    .line 350
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 351
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->accountRows:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->horizontalActions()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 354
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 355
    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->selectAllButton:Landroid/widget/Button;

    .line 356
    const-string v4, "\u5168\u9009"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v4, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda23;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedButton()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 361
    const-string v4, "\u5220\u9664\u6240\u9009"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 362
    const-string v4, "ui:destructive"

    invoke-static {v3, v4, v10}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 363
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v4, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda24;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedButtonWithMargin()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 367
    const/16 v4, 0x9

    const-string v5, "\u5237\u65b0\u8d26\u53f7"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/LocalUiStyle;->iconButton(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 368
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v4, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda25;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x34

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x34

    invoke-direct {v8, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 370
    const/16 v5, 0x8

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    const-string v2, "\u5220\u9664\u8d26\u53f7\u4f1a\u540c\u65f6\u6e05\u7406\u8be5\u8d26\u53f7\u7684\u89d2\u8272\u5feb\u7167\u548c\u6559\u7a0b\u8fdb\u5ea6\u3002hakopania \u4e3a\u5b8c\u6574\u6d4b\u8bd5\u6a21\u677f\uff0c\u4e0d\u53ef\u5220\u9664\u3002"

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 376
    const/16 v3, 0x8

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 377
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lcom/project7/localmanager/MainActivity;->levelPanel:Landroid/widget/LinearLayout;

    .line 381
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 382
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->levelPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x14

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x14

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 383
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->levelPanel:Landroid/widget/LinearLayout;

    .line 384
    const-string v2, "\u64cd\u4f5c\u524d\u8bf7\u9000\u51fa\u6e38\u620f\u5e76\u505c\u6b62\u7f51\u5173\u3002"

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    const-string v2, ""

    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->levelTargets:Landroid/widget/TextView;

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v3, Landroid/widget/Spinner;

    invoke-direct {v3, v8}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->levelMode:Landroid/widget/Spinner;

    .line 388
    const-string v4, "\u589e\u52a0\u7ecf\u9a8c"

    const-string v5, "\u8bbe\u5b9a\u7b49\u7ea7"

    const-string v6, "\u53d1\u653e\u6240\u6709\u795e\u5668\u4f7f"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalUiStyle;->options(Landroid/content/Context;Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 389
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->levelMode:Landroid/widget/Spinner;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->levelValue:Landroid/widget/EditText;

    .line 391
    const-string v3, "\u7ecf\u9a8c\u503c / \u76ee\u6807\u7b49\u7ea7"

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 392
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->levelValue:Landroid/widget/EditText;

    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 394
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->levelValue:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 395
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->levelValue:Landroid/widget/EditText;

    const-string v5, "1000"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->levelValue:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v4, v8, Lcom/project7/localmanager/MainActivity;->levelMode:Landroid/widget/Spinner;

    new-instance v5, Lcom/project7/localmanager/MainActivity$3;

    invoke-direct {v5, v8, v3}, Lcom/project7/localmanager/MainActivity$3;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 409
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 410
    const-string v4, "\u786e\u8ba4\u8c03\u6574"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 411
    const/16 v4, 0x12

    invoke-static {v3, v13, v4}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 412
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {v4, v8, v3}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda27;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->levelPanel:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/project7/localmanager/LocalUiStyle;->tree(Landroid/view/View;)V

    .line 416
    const/4 v1, 0x3

    const-string v3, "\u7cfb\u7edf\u90ae\u4ef6"

    const-string v4, "\u90ae\u4ef6"

    invoke-direct {v8, v3, v4, v1}, Lcom/project7/localmanager/MainActivity;->createPage(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 417
    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->recipients:Landroid/widget/TextView;

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 420
    const-string v4, "\u9009\u62e9\u6536\u4ef6\u8d26\u53f7"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 422
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v4, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailTitle:Landroid/widget/EditText;

    .line 425
    const-string v3, "\u90ae\u4ef6\u6807\u9898"

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailTitle:Landroid/widget/EditText;

    const-string v4, "\u90ae\u4ef6\u6807\u9898"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailTitle:Landroid/widget/EditText;

    const-string v4, "\u8d44\u6e90\u8865\u7ed9"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailTitle:Landroid/widget/EditText;

    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 427
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailTitle:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailContent:Landroid/widget/EditText;

    .line 429
    const-string v3, "\u90ae\u4ef6\u6b63\u6587"

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailContent:Landroid/widget/EditText;

    const-string v4, "\u90ae\u4ef6\u5185\u5bb9"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailContent:Landroid/widget/EditText;

    const-string v4, "\u672c\u5730\u6d4b\u8bd5\u8d44\u6e90\uff0c\u8bf7\u67e5\u6536\u3002"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailContent:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailContent:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailContent:Landroid/widget/EditText;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 432
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->mailContent:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    new-instance v3, Landroid/widget/Spinner;

    invoke-direct {v3, v8}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceType:Landroid/widget/Spinner;

    .line 434
    const-string v3, "\u9644\u4ef6"

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->sectionTitle(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    const-string v3, "\u8d44\u6e90\u7c7b\u578b"

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceType:Landroid/widget/Spinner;

    const-string v14, "\u91d1\u5e01"

    const-string v15, "\u94bb\u77f3"

    const-string v16, "\u6676\u94bb"

    const-string v17, "\u6b27\u6cca"

    const-string v18, "\u94c3\u94db"

    const-string v19, "\u53cb\u60c5\u70b9"

    const-string v20, "\u7eaa\u5ff5\u5238"

    const-string v21, "\u795e\u5668\u4f7f"

    const-string v22, "\u9053\u5177 / \u89d2\u8272\u788e\u7247"

    const-string v23, "\u5f71\u88c5"

    const-string v24, "\u65f6\u88c5"

    filled-new-array/range {v14 .. v24}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalUiStyle;->options(Landroid/content/Context;Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 438
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceType:Landroid/widget/Spinner;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    new-instance v3, Landroid/widget/AutoCompleteTextView;

    invoke-direct {v3, v8}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    .line 440
    const-string v4, "\u8d44\u6e90 ID \u6216\u540d\u79f0"

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v11}, Landroid/widget/AutoCompleteTextView;->setSingleLine(Z)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v11}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 441
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->chooseResource:Landroid/widget/Button;

    .line 443
    const-string v4, "\u9009\u62e9\u8d44\u6e90"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->chooseResource:Landroid/widget/Button;

    const/16 v4, 0xb

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 445
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->chooseResource:Landroid/widget/Button;

    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->chooseResource:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceQuantity:Landroid/widget/EditText;

    .line 448
    const-string v3, "\u9644\u4ef6\u6570\u91cf"

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceQuantity:Landroid/widget/EditText;

    const-string v4, "\u6570\u91cf"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceQuantity:Landroid/widget/EditText;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceQuantity:Landroid/widget/EditText;

    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 450
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceQuantity:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 451
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceQuantity:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    new-instance v3, Landroid/widget/Spinner;

    invoke-direct {v3, v8}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceQuality:Landroid/widget/Spinner;

    .line 453
    const-string v4, "\u7eff\u8272"

    const-string v5, "\u84dd\u8272"

    const-string v6, "\u7d2b\u8272"

    const-string v7, "\u91d1\u8272"

    const-string v14, "\u6a59\u8272"

    filled-new-array {v4, v5, v6, v7, v14}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalUiStyle;->options(Landroid/content/Context;Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 454
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceQuality:Landroid/widget/Spinner;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->resourceType:Landroid/widget/Spinner;

    new-instance v4, Lcom/project7/localmanager/MainActivity$4;

    invoke-direct {v4, v8}, Lcom/project7/localmanager/MainActivity$4;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->horizontalActions()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 460
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u6dfb\u52a0\u9644\u4ef6"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 461
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v4, v5, v6}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 462
    new-instance v5, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v5, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedButton()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u64a4\u9500\u9644\u4ef6"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 465
    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 466
    new-instance v5, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v5, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda16;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedButtonWithMargin()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->attachmentSummary:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->updateAttachments()V

    .line 474
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\u53d1\u9001\u81f3\u6240\u9009\u8d26\u53f7"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 475
    const/16 v4, 0xa

    invoke-static {v3, v13, v4}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 476
    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v4, v8, v3}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda28;-><init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    const/4 v1, 0x4

    const-string v3, "\u7f51\u5173\u65e5\u5fd7"

    const-string v4, "\u65e5\u5fd7"

    invoke-direct {v8, v3, v4, v1}, Lcom/project7/localmanager/MainActivity;->createPage(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 480
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->horizontalActions()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 481
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u590d\u5236\u65e5\u5fd7"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 482
    const/16 v5, 0xd

    invoke-static {v4, v6, v5}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 483
    new-instance v5, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v5, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedButton()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u6e05\u7a7a"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const/16 v5, 0xe

    const-string v6, "ui:destructive"

    invoke-static {v4, v6, v5}, Lcom/project7/localmanager/LocalUiStyle;->action(Landroid/widget/Button;Ljava/lang/String;I)V

    .line 487
    new-instance v5, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v5, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda18;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->weightedButtonWithMargin()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, v8}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/project7/localmanager/MainActivity;->followLogs:Landroid/widget/CheckBox;

    const-string v4, "\u8ddf\u968f\u6700\u65b0\u65e5\u5fd7"

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->followLogs:Landroid/widget/CheckBox;

    invoke-virtual {v3, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 495
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->followLogs:Landroid/widget/CheckBox;

    new-instance v4, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda37;

    invoke-direct {v4, v8}, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda37;-><init>(Lcom/project7/localmanager/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 498
    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->followLogs:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->matchWrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    invoke-direct {v8, v2}, Lcom/project7/localmanager/MainActivity;->bodyText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 500
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-direct {v8, v3}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-direct {v8, v4}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {v8, v5}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-direct {v8, v6}, Lcom/project7/localmanager/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 501
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    const-string v3, "#F4F6F8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 502
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v8, Lcom/project7/localmanager/MainActivity;->logScroll:Landroid/widget/ScrollView;

    invoke-virtual {v2, v11}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->logScroll:Landroid/widget/ScrollView;

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 503
    iget-object v2, v8, Lcom/project7/localmanager/MainActivity;->logScroll:Landroid/widget/ScrollView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v12, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->createActivityPage()V

    .line 505
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->pageHost:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/project7/localmanager/LocalUiStyle;->tree(Landroid/view/View;)V

    .line 506
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    sget v2, Lcom/project7/localmanager/LocalUiStyle;->BORDER:I

    iget-object v3, v8, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    const/16 v4, 0xc

    invoke-static {v12, v12, v2, v4, v3}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object v1, v8, Lcom/project7/localmanager/MainActivity;->logText:Landroid/widget/TextView;

    sget v2, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    invoke-virtual {v8, v0}, Lcom/project7/localmanager/MainActivity;->setContentView(Landroid/view/View;)V

    .line 509
    invoke-direct/range {p0 .. p1}, Lcom/project7/localmanager/MainActivity;->restoreDraft(Landroid/os/Bundle;)V

    .line 510
    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    const-string v0, "page"

    invoke-virtual {v9, v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    :goto_6
    invoke-direct {v8, v10}, Lcom/project7/localmanager/MainActivity;->switchPage(I)V

    .line 511
    invoke-direct/range {p0 .. p0}, Lcom/project7/localmanager/MainActivity;->refreshAccounts()V

    .line 512
    if-eqz v9, :cond_8

    const-string v0, "levelDialog"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 513
    const-string v0, "levelAccounts"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/MainActivity;->pendingLevelTargets:Ljava/util/ArrayList;

    .line 515
    :cond_8
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1063
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1064
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1048
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->activityResumed:Z

    .line 1049
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->setHostResumed(Z)V

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1051
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda53;->INSTANCE:Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda53;

    const-string v2, "project7-log-flush"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1052
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1053
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1039
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1040
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->activityResumed:Z

    .line 1041
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->setHostResumed(Z)V

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1043
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->refreshAccounts()V

    .line 1044
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 945
    sget-object v0, Lcom/project7/localmanager/MainActivity;->PROCESS_SESSION:Ljava/lang/String;

    const-string v1, "noticeSession"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeRequired:Z

    const-string v1, "updateNoticeRequired"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 947
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "noticeOpen"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 948
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->readMillis()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    iget-wide v3, p0, Lcom/project7/localmanager/MainActivity;->restoredNoticeReadMillis:J

    :goto_1
    const-string v0, "noticeReadMillis"

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 949
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeDialog:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->scrollY()I

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/project7/localmanager/MainActivity;->restoredNoticeScroll:I

    :goto_2
    const-string v3, "noticeScroll"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 950
    iget-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->pendingGatewayStart:Z

    const-string v3, "pendingGatewayStart"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 951
    iget v0, p0, Lcom/project7/localmanager/MainActivity;->activePage:I

    const-string v3, "page"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->selectedAccounts:Ljava/util/Set;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "selectedAccounts"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 953
    iget-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->choosingRecipients:Z

    const-string v3, "choosingRecipients"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 954
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->registration:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    const-string v3, "registration"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 955
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->prefixInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "prefix"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->countInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "count"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->accountSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "search"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->mailTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mailTitle"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->mailContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mailContent"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const-string v3, "resourceType"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 961
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceQuality:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const-string v3, "resourceQuality"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 962
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceId:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "resourceId"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->resourceQuantity:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "quantity"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const-string v3, "levelMode"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 965
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "levelValue"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->pendingLevelTargets:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->levelDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :cond_5
    :goto_4
    const-string v0, "levelDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 967
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->pendingLevelTargets:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->levelAccounts:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    const-string v1, "levelAccounts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 968
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->followLogs:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "followLogs"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 969
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->activitySelection:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 970
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->activityKey:Ljava/lang/String;

    const-string v1, "activityKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->fashionOpen:Z

    const-string v1, "fashionOpen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 972
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->activityStart:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v3, "activityStart"

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 973
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->activityDuration:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activityDuration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->attachmentLabels:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "attachmentLabels"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 976
    move v0, v2

    :goto_6
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity;->mailAttachments:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 977
    :cond_8
    nop

    :goto_7
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scroll"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity;->pages:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 978
    :cond_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 979
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 1030
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1031
    iget-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->pendingGatewayStart:Z

    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "start_gateway"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->pendingGatewayStart:Z

    .line 1032
    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1033
    iget-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeRequired:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->restoreManualNotice:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->continueAfterNotice()V

    goto :goto_1

    .line 1033
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/project7/localmanager/MainActivity;->showUpdateNotice()V

    .line 1035
    :goto_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1056
    invoke-virtual {p0}, Lcom/project7/localmanager/MainActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/project7/localmanager/MainActivity;->updateNoticeRequired:Z

    .line 1057
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1058
    return-void
.end method
