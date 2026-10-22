.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final synthetic f$0:Ljava/util/Calendar;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Ljava/text/SimpleDateFormat;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Calendar;Landroid/widget/Button;Ljava/text/SimpleDateFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/util/Calendar;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda1;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda1;->f$2:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda1;->f$0:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda1;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda1;->f$2:Ljava/text/SimpleDateFormat;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/MainActivity;->lambda$createActivityPage$26(Ljava/util/Calendar;Landroid/widget/Button;Ljava/text/SimpleDateFormat;Landroid/widget/TimePicker;II)V

    return-void
.end method
