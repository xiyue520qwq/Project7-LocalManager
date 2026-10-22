.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda57;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda57;->f$1:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda57;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda57;->f$1:Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, p1}, Lcom/project7/localmanager/MainActivity;->lambda$addHistoricalSections$37$MainActivity(Ljava/util/Map$Entry;I)V

    return-void
.end method
