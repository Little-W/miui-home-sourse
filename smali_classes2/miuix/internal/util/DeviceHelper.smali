.class public Lmiuix/internal/util/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# static fields
.field public static final IS_DEBUGGABLE:Z

.field public static PAD_THRESHOLD:F = 0.0f

.field private static sMuiltDisplayType:I = -0x1

.field private static sScreenRealSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    .line 65
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lmiuix/internal/util/DeviceHelper;->IS_DEBUGGABLE:Z

    return-void
.end method

.method public static isFeatureWholeAnim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isFoldDevice()Z
    .locals 3

    .line 47
    sget v0, Lmiuix/internal/util/DeviceHelper;->sMuiltDisplayType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "persist.sys.muiltdisplay_type"

    .line 48
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiuix/internal/util/DeviceHelper;->sMuiltDisplayType:I

    .line 50
    :cond_0
    sget v0, Lmiuix/internal/util/DeviceHelper;->sMuiltDisplayType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isHideGestureLine(Landroid/content/Context;)Z
    .locals 2

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isOled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 1

    .line 37
    sget-object v0, Lmiuix/internal/util/DeviceHelper;->sScreenRealSize:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lmiuix/internal/util/DeviceHelper;->sScreenRealSize:Landroid/graphics/Point;

    const-string v0, "window"

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 40
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    sget-object v0, Lmiuix/internal/util/DeviceHelper;->sScreenRealSize:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const/high16 p0, 0x44160000    # 600.0f

    .line 41
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    sput v0, Lmiuix/internal/util/DeviceHelper;->PAD_THRESHOLD:F

    .line 43
    :cond_1
    sget-object p0, Lmiuix/internal/util/DeviceHelper;->sScreenRealSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    sget-object v0, Lmiuix/internal/util/DeviceHelper;->sScreenRealSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    sget v0, Lmiuix/internal/util/DeviceHelper;->PAD_THRESHOLD:F

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
