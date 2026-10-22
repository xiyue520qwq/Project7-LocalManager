.class final Lcom/project7/localmanager/LocalIcons;
.super Ljava/lang/Object;
.source "LocalIcons.java"


# static fields
.field static final ARCHIVE:I = 0x14

.field static final BACK:I = 0x11

.field static final CALENDAR:I = 0x5

.field static final CHECK:I = 0x17

.field static final CLOSE:I = 0x16

.field static final COPY:I = 0xd

.field static final DOWN:I = 0xf

.field static final HOME:I = 0x1

.field static final LEVEL:I = 0x12

.field static final LOGS:I = 0x4

.field static final MAIL:I = 0x3

.field private static final NAMES:[Ljava/lang/String;

.field static final NOTICE:I = 0x15

.field static final PLAY:I = 0x6

.field static final PLUS:I = 0x8

.field static final POWER:I = 0x7

.field static final REFRESH:I = 0x9

.field static final RIGHT:I = 0x10

.field static final SEARCH:I = 0xb

.field static final SEND:I = 0xa

.field static final SETTINGS:I = 0x18

.field static final SHIRT:I = 0x13

.field static final TRASH:I = 0xe

.field static final UNDO:I = 0xc

.field static final USERS:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 12
    const-string v0, ""

    const-string v1, "house"

    const-string v2, "users"

    const-string v3, "mail"

    const-string v4, "logs"

    const-string v5, "calendar_days"

    const-string v6, "play"

    const-string v7, "power"

    const-string v8, "plus"

    const-string v9, "refresh_cw"

    const-string v10, "send"

    const-string v11, "search"

    const-string v12, "undo_2"

    const-string v13, "copy"

    const-string v14, "trash_2"

    const-string v15, "chevron_down"

    const-string v16, "chevron_right"

    const-string v17, "arrow_left"

    const-string v18, "trending_up"

    const-string v19, "shirt"

    const-string v20, "archive"

    const-string v21, "megaphone"

    const-string v22, "x"

    const-string v23, "check"

    const-string v24, "sliders_horizontal"

    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalIcons;->NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static drawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalIcons;->resource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static resource(Landroid/content/Context;I)I
    .locals 4

    .line 17
    if-lez p1, :cond_1

    sget-object v0, Lcom/project7/localmanager/LocalIcons;->NAMES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ic_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "drawable"

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    return p0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing vector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
