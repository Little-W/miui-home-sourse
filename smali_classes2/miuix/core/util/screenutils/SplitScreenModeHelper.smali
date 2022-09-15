.class public Lmiuix/core/util/screenutils/SplitScreenModeHelper;
.super Ljava/lang/Object;
.source "SplitScreenModeHelper.java"


# static fields
.field private static sScreenRealSize:Landroid/graphics/Point;

.field private static sWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->sScreenRealSize:Landroid/graphics/Point;

    return-void
.end method

.method public static detectScreenMode(Landroid/content/Context;)I
    .locals 0

    .line 61
    invoke-static {p0}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->detectWindowInfo(Landroid/content/Context;)Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;

    move-result-object p0

    iget p0, p0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    return p0
.end method

.method public static detectWindowInfo(Landroid/content/Context;)Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;
    .locals 4

    .line 66
    new-instance v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;

    invoke-direct {v0}, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;-><init>()V

    .line 67
    invoke-static {p0}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->sScreenRealSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 71
    invoke-static {}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isLandscape()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 72
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    sget-object v3, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->sScreenRealSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    div-float/2addr v1, v3

    goto :goto_0

    .line 75
    :cond_0
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    sget-object v3, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->sScreenRealSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    .line 77
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    sget-object v3, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->sScreenRealSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    div-float/2addr v1, v3

    .line 82
    :cond_1
    :goto_0
    iget v3, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowWidth:I

    .line 83
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p0, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowHeight:I

    const p0, 0x3ecccccd    # 0.4f

    .line 84
    invoke-static {v1, v2, p0}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 p0, 0x1001

    .line 85
    iput p0, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    goto :goto_1

    :cond_2
    const v2, 0x3f19999a    # 0.6f

    .line 86
    invoke-static {v1, p0, v2}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x1002

    .line 87
    iput p0, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    goto :goto_1

    :cond_3
    const p0, 0x3f4ccccd    # 0.8f

    .line 88
    invoke-static {v1, v2, p0}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->isInRegion(FFF)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x1003

    .line 89
    iput p0, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    goto :goto_1

    :cond_4
    const/16 p0, 0x1004

    .line 91
    iput p0, v0, Lmiuix/core/util/screenutils/MultiWindowModeHelper$WindowInfo;->windowMode:I

    :goto_1
    return-object v0
.end method

.method private static getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    .line 38
    sget-object v0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->sWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    sput-object p0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->sWindowManager:Landroid/view/WindowManager;

    .line 41
    :cond_0
    sget-object p0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->sWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private static isInRegion(FFF)Z
    .locals 0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isLandscape()Z
    .locals 2

    .line 45
    sget-object v0, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->sScreenRealSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->sScreenRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
