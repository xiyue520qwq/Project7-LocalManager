.class final Lcom/project7/localmanager/LocalEconomyEngine$Result;
.super Ljava/lang/Object;
.source "LocalEconomyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalEconomyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field accepted:Z

.field final fatigue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final friendly:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field profile:[B

.field reason:Ljava/lang/String;

.field remainingActions:I

.field remainingSandglass:I

.field replay:Z

.field final replies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/project7/localmanager/LocalResourceEngine$Reply;",
            ">;"
        }
    .end annotation
.end field

.field resetPatrolCount:Z

.field reward:[B

.field win:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    iput-object v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    .line 18
    iput v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->fatigue:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->friendly:Ljava/util/Map;

    .line 22
    const-string v0, "ok"

    iput-object v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    return-void
.end method
