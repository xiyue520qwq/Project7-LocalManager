.class final Lcom/project7/localmanager/LocalUiStyle;
.super Ljava/lang/Object;
.source "LocalUiStyle.java"


# static fields
.field static final ACCENT:I

.field static final BACKGROUND:I

.field static final BORDER:I

.field static final DANGER:I

.field static final DESTRUCTIVE:Ljava/lang/String; = "ui:destructive"

.field static final INK:I

.field static final MUTED:I

.field static final PRIMARY:Ljava/lang/String; = "ui:primary"

.field static final SOFT_ACCENT:I

.field static final WHITE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const/16 v0, 0xf5

    const/16 v1, 0xf7

    const/16 v2, 0xf8

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/project7/localmanager/LocalUiStyle;->BACKGROUND:I

    .line 29
    const/16 v0, 0x1c

    const/16 v1, 0x25

    const/16 v2, 0x2b

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    .line 30
    const/16 v0, 0x64

    const/16 v1, 0x71

    const/16 v2, 0x7b

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    .line 31
    const/16 v0, 0xe

    const/16 v1, 0x75

    const/16 v2, 0x6a

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    .line 32
    const/16 v0, 0xe2

    const/16 v1, 0xf3

    const/16 v2, 0xed

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/project7/localmanager/LocalUiStyle;->SOFT_ACCENT:I

    .line 33
    const/16 v0, 0xdf

    const/16 v1, 0xe5

    const/16 v2, 0xe9

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/project7/localmanager/LocalUiStyle;->BORDER:I

    .line 34
    const/16 v0, 0xae

    const/16 v1, 0x39

    const/16 v2, 0x47

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/project7/localmanager/LocalUiStyle;->DANGER:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static accountLevelButton(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 5

    .line 150
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 151
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-static {p0}, Lcom/project7/localmanager/LocalUiStyle;->button(Landroid/widget/Button;)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalIcons;->drawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 155
    sget v0, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 156
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/project7/localmanager/LocalUiStyle;->SOFT_ACCENT:I

    .line 157
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {p0, v2, v3, v2, v4}, Lcom/project7/localmanager/LocalUiStyle;->ripple(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 158
    const/16 p1, 0x11

    invoke-virtual {v0, v3, p1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 159
    const/16 v1, 0x28

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 160
    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 161
    const/16 p1, 0x14

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 164
    const/16 p1, 0x30

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 165
    return-void
.end method

.method static action(Landroid/widget/Button;Ljava/lang/String;I)V
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 139
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalIcons;->drawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 140
    :cond_0
    return-void
.end method

.method static button(Landroid/widget/Button;)V
    .locals 17

    .line 94
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ui:primary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ui:destructive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 96
    const/4 v3, -0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    sget v4, Lcom/project7/localmanager/LocalUiStyle;->DANGER:I

    goto :goto_0

    :cond_1
    sget v4, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    .line 97
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setLetterSpacing(F)V

    .line 98
    const-string v7, "sans-serif-medium"

    invoke-static {v7, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    new-instance v7, Landroid/content/res/ColorStateList;

    const/4 v8, 0x2

    new-array v9, v8, [[I

    const/4 v10, 0x1

    new-array v11, v10, [I

    const v12, -0x101009e

    aput v12, v11, v5

    aput-object v11, v9, v5

    new-array v11, v5, [I

    aput-object v11, v9, v10

    new-array v11, v8, [I

    const/16 v13, 0x89

    const/16 v14, 0x94

    const/16 v15, 0x9b

    .line 101
    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    aput v13, v11, v5

    aput v4, v11, v10

    invoke-direct {v7, v9, v11}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 99
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 102
    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setGravity(I)V

    const/16 v9, 0x34

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setMinHeight(I)V

    .line 103
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setMinimumWidth(I)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setMaxLines(I)V

    .line 104
    const/16 v9, 0xe

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v11

    const/16 v13, 0xa

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v14

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v9

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v13

    invoke-virtual {v0, v11, v14, v9, v13}, Landroid/widget/Button;->setPadding(IIII)V

    .line 105
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 106
    new-array v11, v10, [I

    aput v12, v11, v5

    .line 107
    const/16 v13, 0xe9

    const/16 v14, 0xed

    const/16 v15, 0xef

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    const/16 v14, 0x10

    invoke-static {v6, v3, v13, v14, v0}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    .line 106
    invoke-virtual {v9, v11, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 108
    new-array v6, v5, [I

    if-eqz v1, :cond_2

    sget v11, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    goto :goto_1

    :cond_2
    move v11, v3

    .line 109
    :goto_1
    if-eqz v1, :cond_3

    sget v1, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    const/16 v1, 0xee

    const/16 v2, 0xd3

    const/16 v13, 0xd7

    invoke-static {v1, v2, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    goto :goto_2

    :cond_4
    sget v1, Lcom/project7/localmanager/LocalUiStyle;->BORDER:I

    .line 108
    :goto_2
    invoke-static {v0, v11, v3, v1, v14}, Lcom/project7/localmanager/LocalUiStyle;->ripple(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v9, v6, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    move v3, v5

    :goto_3
    if-ge v3, v2, :cond_6

    aget-object v6, v1, v3

    if-eqz v6, :cond_5

    .line 112
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v13, Landroid/content/res/ColorStateList;

    new-array v14, v8, [[I

    new-array v15, v10, [I

    aput v12, v15, v5

    aput-object v15, v14, v5

    new-array v15, v5, [I

    aput-object v15, v14, v10

    new-array v15, v8, [I

    sget v16, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    aput v16, v15, v5

    aput v4, v15, v10

    invoke-direct {v13, v14, v15}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 115
    const/16 v11, 0x12

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v13

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v11

    invoke-virtual {v6, v5, v5, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 117
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    aget-object v2, v1, v10

    if-eqz v2, :cond_7

    .line 119
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v3, v5

    aget-object v1, v1, v10

    aput-object v1, v3, v10

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {v2, v10, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 121
    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v3

    invoke-virtual {v2, v10, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v2, v10, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    goto :goto_4

    .line 125
    :cond_7
    aget-object v2, v1, v5

    aget-object v3, v1, v10

    aget-object v4, v1, v8

    const/4 v6, 0x3

    aget-object v1, v1, v6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    :goto_4
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setElevation(F)V

    .line 130
    new-instance v2, Landroid/animation/StateListAnimator;

    invoke-direct {v2}, Landroid/animation/StateListAnimator;-><init>()V

    .line 131
    new-array v3, v10, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    new-array v4, v10, [F

    const v6, 0x3f47ae14    # 0.78f

    aput v6, v4, v5

    .line 132
    const-string v6, "alpha"

    invoke-static {v0, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v7, 0x5a

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 131
    invoke-virtual {v2, v3, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 133
    new-array v3, v5, [I

    new-array v4, v10, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v4, v5

    invoke-static {v0, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x8c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 135
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalUiStyle;->spacing(Landroid/view/View;I)V

    .line 136
    return-void
.end method

.method static dp(Landroid/view/View;I)I
    .locals 0

    .line 40
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static enter(Landroid/view/View;)V
    .locals 4

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 184
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v2, 0xdc

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v3, v1, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 187
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 188
    return-void
.end method

.method static iconButton(Landroid/widget/Button;Ljava/lang/String;I)V
    .locals 2

    .line 142
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalIcons;->drawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 145
    sget p2, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 146
    const/16 p2, 0x16

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v0

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2, p2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 148
    return-void
.end method

.method static input(Landroid/widget/EditText;)V
    .locals 6

    .line 82
    sget v0, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    sget v0, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setLetterSpacing(F)V

    .line 84
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 85
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101009c

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    .line 86
    const/4 v4, -0x1

    const/16 v5, 0xe

    invoke-static {v4, v4, v2, v5, p0}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 87
    new-array v1, v3, [I

    sget v2, Lcom/project7/localmanager/LocalUiStyle;->BORDER:I

    invoke-static {v4, v4, v2, v5, p0}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v1

    invoke-static {p0, v5}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v2

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v0

    invoke-static {p0, v5}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v0, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 90
    const/16 v0, 0x36

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setMinimumHeight(I)V

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 91
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalUiStyle;->spacing(Landroid/view/View;I)V

    .line 92
    return-void
.end method

.method static navigation(Landroid/widget/TextView;Z)V
    .locals 5

    .line 174
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    sget v1, Lcom/project7/localmanager/LocalUiStyle;->SOFT_ACCENT:I

    goto :goto_0

    :cond_0
    move v1, v0

    .line 175
    :goto_0
    if-eqz p1, :cond_1

    sget v2, Lcom/project7/localmanager/LocalUiStyle;->SOFT_ACCENT:I

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const/16 v3, 0x10

    .line 174
    invoke-static {p0, v1, v0, v2, v3}, Lcom/project7/localmanager/LocalUiStyle;->ripple(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    if-eqz p1, :cond_2

    sget v0, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 178
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz p1, :cond_3

    sget v4, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    goto :goto_4

    :cond_3
    sget v4, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    :goto_4
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 177
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 179
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 180
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 181
    return-void
.end method

.method static options(Landroid/content/Context;Ljava/util/List;)Landroid/widget/ArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/project7/localmanager/LocalUiStyle$1;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Lcom/project7/localmanager/LocalUiStyle$1;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-object v0
.end method

.method static ripple(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 50
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    const/16 v0, 0x1c

    const/16 v1, 0xe

    const/16 v2, 0x75

    const/16 v3, 0x6a

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 51
    invoke-static {p1, p1, p3, p4, p0}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    const/4 p3, -0x1

    invoke-static {p3, p3, p3, p4, p0}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-direct {p2, v0, p1, p0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-object p2
.end method

.method static spacing(Landroid/view/View;I)V
    .locals 3

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 169
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 170
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 172
    :cond_0
    return-void
.end method

.method static surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 43
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 44
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 45
    invoke-static {p4, p3}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 46
    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p4, p0}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 47
    :cond_0
    return-object p1
.end method

.method static tree(Landroid/view/View;)V
    .locals 12

    .line 54
    instance-of v0, p0, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUiStyle;->input(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 55
    :cond_0
    instance-of v0, p0, Landroid/widget/CheckBox;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 56
    move-object v0, p0

    check-cast v0, Landroid/widget/CheckBox;

    .line 57
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v2, [[I

    new-array v6, v3, [I

    const v7, 0x10100a0

    aput v7, v6, v1

    aput-object v6, v5, v1

    new-array v6, v1, [I

    aput-object v6, v5, v3

    new-array v2, v2, [I

    sget v6, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    aput v6, v2, v1

    sget v6, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    aput v6, v2, v3

    invoke-direct {v4, v5, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 60
    sget v2, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    const/16 v2, 0x34

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setMinHeight(I)V

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setLetterSpacing(F)V

    .line 62
    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUiStyle;->button(Landroid/widget/Button;)V

    goto :goto_0

    .line 63
    :cond_2
    instance-of v0, p0, Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0xf

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalIcons;->drawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    sget v4, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 66
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v2, [Landroid/graphics/drawable/Drawable;

    sget v6, Lcom/project7/localmanager/LocalUiStyle;->BORDER:I

    .line 67
    const/4 v7, -0x1

    const/16 v11, 0xe

    invoke-static {p0, v7, v7, v6, v11}, Lcom/project7/localmanager/LocalUiStyle;->ripple(Landroid/view/View;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v0, v5, v3

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 68
    const v0, 0x800015

    invoke-virtual {v4, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 69
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 70
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v11}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v9

    const/4 v10, 0x0

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 71
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    const/16 v0, 0x36

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 73
    invoke-static {p0, v11}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v0

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v4

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalUiStyle;->dp(Landroid/view/View;I)I

    move-result v2

    invoke-virtual {p0, v0, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 74
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalUiStyle;->spacing(Landroid/view/View;I)V

    .line 76
    :cond_3
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 77
    check-cast p0, Landroid/view/ViewGroup;

    .line 78
    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalUiStyle;->tree(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_4
    return-void
.end method
