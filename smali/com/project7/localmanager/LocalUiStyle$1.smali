.class Lcom/project7/localmanager/LocalUiStyle$1;
.super Landroid/widget/ArrayAdapter;
.source "LocalUiStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/project7/localmanager/LocalUiStyle;->options(Landroid/content/Context;Ljava/util/List;)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private format(Landroid/view/View;Z)Landroid/view/View;
    .locals 5

    .line 192
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 193
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 194
    sget v1, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 196
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 197
    if-eqz p2, :cond_0

    const/16 v1, 0x10

    :cond_0
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v3

    const/16 v4, 0x20

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v4

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 198
    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 199
    if-eqz p2, :cond_1

    const/4 p2, -0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 201
    :cond_1
    return-object p1
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 204
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/project7/localmanager/LocalUiStyle$1;->format(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/project7/localmanager/LocalUiStyle$1;->format(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
