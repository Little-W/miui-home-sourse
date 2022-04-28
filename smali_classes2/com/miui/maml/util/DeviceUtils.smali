.class public Lcom/miui/maml/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static final DEFAULT_RESIZE_SCALE_FOLD:F = 0.5f

.field private static final DEFAULT_RESIZE_SCALE_PAD:F = 0.383f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPhysicalScreenSmallWidthDip(Landroid/view/WindowManager;)I
    .locals 2

    .line 66
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getTargetScreenWH(Landroid/view/WindowManager;F)[I
    .locals 10

    if-eqz p0, :cond_7

    const/4 v0, 0x2

    .line 35
    new-array v0, v0, [I

    .line 37
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 38
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 41
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 44
    invoke-static {p0}, Lcom/miui/maml/util/DeviceUtils;->needScaleDevice(Landroid/view/WindowManager;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v6, p0

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p0, v6, v8

    if-gtz p0, :cond_4

    .line 46
    invoke-static {}, Lcom/miui/maml/util/DeviceUtils;->isPad()Z

    move-result p0

    if-eqz p0, :cond_2

    const p1, 0x3ec41893    # 0.383f

    goto :goto_2

    .line 48
    :cond_2
    invoke-static {}, Lcom/miui/maml/util/DeviceUtils;->isFold()Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_3
    move p1, v5

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 56
    iget p0, v2, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_5
    iget p0, v2, Landroid/graphics/Point;->x:I

    :goto_3
    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    aput p0, v0, v3

    if-eqz v1, :cond_6

    .line 57
    iget p0, v2, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_6
    iget p0, v2, Landroid/graphics/Point;->y:I

    :goto_4
    aput p0, v0, v4

    return-object v0

    .line 33
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "wm is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isFold()Z
    .locals 3

    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isPad()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    .line 17
    invoke-static {v0}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static needScaleDevice(Landroid/view/WindowManager;)Z
    .locals 1

    .line 72
    invoke-static {}, Lcom/miui/maml/util/DeviceUtils;->isPad()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/maml/util/DeviceUtils;->isFold()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/maml/util/DeviceUtils;->getPhysicalScreenSmallWidthDip(Landroid/view/WindowManager;)I

    move-result p0

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
