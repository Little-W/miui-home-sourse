.class public Lcom/miui/home/launcher/ToggleDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "ToggleDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .line 16
    invoke-static {p1, p2}, Lcom/miui/home/launcher/ToggleDrawable;->getArray(Landroid/content/Context;I)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ToggleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/ToggleDrawable;->setId(II)V

    .line 19
    invoke-virtual {p0, p1, p1}, Lcom/miui/home/launcher/ToggleDrawable;->setId(II)V

    if-eqz p2, :cond_0

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 v4, p1, 0x2

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 v5, p1, 0x2

    const/4 v1, 0x1

    move-object v0, p0

    move v2, v4

    move v3, v5

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/ToggleDrawable;->setLayerInset(IIIII)V

    :cond_0
    return-void
.end method

.method private static getArray(Landroid/content/Context;I)[Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x2

    .line 28
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-static {p0}, Lcom/miui/home/launcher/ToggleDrawable;->getBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    invoke-static {p0, p1}, Lcom/miui/home/launcher/ToggleDrawable;->getForeground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0
.end method

.method private static getBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->loadToggleBackground(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getForeground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 49
    invoke-static {p1, p0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->initDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0703d8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 52
    invoke-static {v0, p0, p1, p1}, Lcom/miui/home/launcher/common/Utilities;->getSpecifiedSizeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public refreshForeground(Landroid/content/Context;I)V
    .locals 0

    .line 35
    invoke-static {p1, p2}, Lcom/miui/home/launcher/ToggleDrawable;->getForeground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/ToggleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 36
    new-instance p1, Lcom/miui/home/launcher/ToggleDrawable$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ToggleDrawable$1;-><init>(Lcom/miui/home/launcher/ToggleDrawable;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method
