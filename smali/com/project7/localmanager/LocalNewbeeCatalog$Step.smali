.class final Lcom/project7/localmanager/LocalNewbeeCatalog$Step;
.super Ljava/lang/Object;
.source "LocalNewbeeCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalNewbeeCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# instance fields
.field final battle:Z

.field final begin:Z

.field final completes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final endEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field final multiTrigger:Z

.field final next:I

.field final requireEventAnd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final requireEventOr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final requireNewbees:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final requireNotEventAnd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final requireNotEventOr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final requirePanel:Ljava/lang/String;

.field final uiPanel:Ljava/lang/String;


# direct methods
.method constructor <init>(IZZZILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZI",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->id:I

    .line 146
    iput-boolean p2, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->begin:Z

    .line 147
    iput-boolean p3, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->multiTrigger:Z

    .line 148
    iput-boolean p4, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->battle:Z

    .line 149
    iput p5, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->next:I

    .line 150
    iput-object p6, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->completes:Ljava/util/Set;

    .line 151
    iput-object p7, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireNewbees:Ljava/util/Set;

    .line 152
    iput-object p8, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireEventAnd:Ljava/util/Set;

    .line 153
    iput-object p9, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireEventOr:Ljava/util/Set;

    .line 154
    iput-object p10, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireNotEventAnd:Ljava/util/Set;

    .line 155
    iput-object p11, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireNotEventOr:Ljava/util/Set;

    .line 156
    iput-object p12, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->endEvents:Ljava/util/Set;

    .line 157
    iput-object p13, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->uiPanel:Ljava/lang/String;

    .line 158
    iput-object p14, p0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requirePanel:Ljava/lang/String;

    .line 159
    return-void
.end method
