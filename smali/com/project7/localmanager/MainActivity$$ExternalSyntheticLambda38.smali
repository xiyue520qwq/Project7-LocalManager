.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/CheckBox;

.field public final synthetic f$3:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Ljava/lang/String;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;->f$2:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;->f$3:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;->f$2:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda38;->f$3:Landroid/widget/LinearLayout;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/project7/localmanager/MainActivity;->lambda$renderAccounts$46$MainActivity(Ljava/lang/String;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
