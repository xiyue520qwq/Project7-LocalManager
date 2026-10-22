.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Ljava/util/Calendar;

.field public final synthetic f$2:Landroid/widget/Button;

.field public final synthetic f$3:Ljava/text/SimpleDateFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Ljava/util/Calendar;Landroid/widget/Button;Ljava/text/SimpleDateFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;->f$2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;->f$3:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;->f$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda0;->f$3:Ljava/text/SimpleDateFormat;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/project7/localmanager/MainActivity;->lambda$createActivityPage$27$MainActivity(Ljava/util/Calendar;Landroid/widget/Button;Ljava/text/SimpleDateFormat;Landroid/widget/DatePicker;III)V

    return-void
.end method
