.class public Lcom/miui/home/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;
    }
.end annotation


# instance fields
.field private mBgColor:I

.field private mBgColorForSmallWindow:I

.field private mBgFillPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

.field private mCornerRadius:I

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplay:Landroid/view/Display;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFullscreenThumbnailScale:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mPosition:I

.field private mRealInsets:Landroid/graphics/Rect;

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field private mScaledInsets:Landroid/graphics/Rect;

.field private mSoscTaskViewRect:Landroid/graphics/Rect;

.field private mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mTaskRatio:F

.field private mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailBitmapRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailDrawingRect:Landroid/graphics/RectF;

.field private mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 77
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    .line 78
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    .line 89
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 90
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    .line 91
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    .line 94
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    .line 99
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    .line 100
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRealInsets:Landroid/graphics/Rect;

    .line 101
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 102
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    .line 103
    new-instance p1, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-direct {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    .line 121
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x1

    const/16 p3, 0x1c

    if-lt p1, p3, :cond_0

    .line 122
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 123
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f060579

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColor:I

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06057a

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColorForSmallWindow:I

    .line 127
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f06057d

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p1, 0x3f19999a    # 0.6f

    .line 130
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisplay:Landroid/view/Display;

    .line 133
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method private calculateInsets(Z)V
    .locals 3

    .line 171
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->isPredictHalfSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 173
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictRecentsVisibleBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isNeedRotate(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 175
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 176
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 179
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 181
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    int-to-float p1, v0

    mul-float/2addr p1, v2

    .line 182
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    return-void
.end method

.method public static getScaleToTargetAreaWithLimits(IIIIIII)F
    .locals 1

    if-eqz p5, :cond_4

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p5, p5

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p5, v0

    int-to-float p6, p6

    div-float/2addr p5, p6

    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p0, p5

    .line 653
    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p2, p3

    int-to-float p1, p1

    div-float/2addr p1, p5

    .line 654
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    cmpg-float p2, p1, p0

    if-gez p2, :cond_1

    move p0, p1

    :cond_1
    int-to-float p2, p4

    div-float/2addr p2, p5

    float-to-double p2, p2

    .line 658
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    cmpg-float p3, p2, p0

    if-gez p3, :cond_2

    div-float/2addr p0, p6

    return p0

    :cond_2
    cmpl-float p0, p2, p1

    if-lez p0, :cond_3

    div-float/2addr p1, p6

    return p1

    :cond_3
    div-float/2addr p2, p6

    return p2

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRecentsContainerLandscape()Z
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p0

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSplitScreen()Z
    .locals 1

    .line 634
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private postTranslateToMatrix(ZLandroid/graphics/Matrix;Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)V
    .locals 6

    .line 447
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterClipForThumbnail()Z

    move-result v0

    .line 448
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_2

    .line 450
    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v1

    const/16 v3, 0x5a

    const/4 v4, -0x1

    if-ne v1, v3, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v2

    .line 451
    :goto_1
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v3

    const/16 v5, -0x5a

    if-ne v3, v5, :cond_3

    move v2, v4

    .line 453
    :cond_3
    :goto_2
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v3

    mul-int/2addr v3, v1

    .line 454
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v4

    mul-int/2addr v4, v2

    if-nez v0, :cond_4

    if-eqz p1, :cond_6

    .line 455
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result p1

    if-nez p1, :cond_6

    .line 456
    :cond_4
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le p1, v0, :cond_5

    .line 457
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 458
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v0

    sub-int/2addr p1, v0

    mul-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    move v3, p1

    .line 460
    :cond_5
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le p1, v0, :cond_6

    .line 461
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 462
    invoke-static {p3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p1

    sub-int/2addr p0, p1

    mul-int/2addr p0, v2

    div-int/lit8 v4, p0, 0x2

    .line 465
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateThumbnailDrawInfo: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", transY="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskViewThumbnail"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p0, v3

    int-to-float p1, v4

    .line 466
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private splitVerticallyInRecents(Z)Z
    .locals 0

    .line 669
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateBgColor()V
    .locals 1

    .line 470
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColorForSmallWindow:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method private updateDrawingPropertiesAndRequestDraw()V
    .locals 2

    .line 619
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060579

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColor:I

    .line 620
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06057a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColorForSmallWindow:I

    .line 621
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateBgColor()V

    .line 622
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method private updateOffset(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;)V
    .locals 1

    .line 555
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 557
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    .line 556
    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$202(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 558
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 559
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p2

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    .line 558
    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$302(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    goto :goto_0

    .line 561
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$202(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 562
    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p0

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$302(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    :goto_0
    return-void
.end method

.method private updateRotation(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;ZZ)V
    .locals 4

    .line 479
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    :cond_1
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    goto/16 :goto_4

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    .line 483
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz p3, :cond_9

    iget v3, p3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    if-eqz v3, :cond_9

    iget p3, p3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_a

    xor-int p3, p5, p6

    if-eqz p3, :cond_8

    const/high16 p3, 0x40000000    # 2.0f

    if-eqz p5, :cond_7

    .line 487
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 p5, 0x3

    if-ne p0, p5, :cond_6

    goto :goto_2

    :cond_6
    const/16 p0, -0x5a

    .line 491
    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 492
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p3

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$702(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$602(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_4

    :cond_7
    :goto_2
    const/16 p0, 0x5a

    .line 488
    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 489
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p3

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$702(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$602(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_4

    .line 495
    :cond_8
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    goto :goto_4

    .line 484
    :cond_9
    :goto_3
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 499
    :cond_a
    :goto_4
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    move v1, v2

    :goto_5
    if-eqz v1, :cond_c

    .line 500
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_6

    :cond_c
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_6
    int-to-float p0, p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$802(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    if-eqz v1, :cond_d

    .line 501
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_7

    :cond_d
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_7
    int-to-float p0, p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$902(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    return-void
.end method

.method private updateScale(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;ZZ)V
    .locals 7

    .line 508
    iget-object p5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p5}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result p5

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p5, p5, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    move p5, p6

    goto :goto_1

    :cond_1
    :goto_0
    move p5, v0

    .line 509
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    if-eqz p3, :cond_c

    iget v1, p3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    if-eqz v1, :cond_c

    iget p3, p3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    if-nez p3, :cond_2

    goto/16 :goto_6

    :cond_2
    if-eqz p5, :cond_9

    .line 514
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    cmpl-float p3, p3, v2

    if-eqz p3, :cond_8

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    cmpl-float p3, p3, v2

    if-nez p3, :cond_3

    goto/16 :goto_4

    .line 518
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result p3

    .line 519
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isSplitScreen()Z

    move-result p4

    if-eqz p4, :cond_4

    sget-boolean p4, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez p4, :cond_4

    move p6, v0

    .line 520
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    const/high16 p5, 0x3f800000    # 1.0f

    mul-float/2addr p4, p5

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result v0

    div-float/2addr p4, v0

    .line 521
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p5

    div-float/2addr v0, p5

    if-eqz p3, :cond_5

    .line 525
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x3ecccccd    # 0.4f

    mul-float/2addr p3, p4

    float-to-int v0, p3

    .line 526
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    const p5, 0x3f666666    # 0.9f

    mul-float/2addr p3, p5

    float-to-int v1, p3

    .line 527
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p4

    float-to-int v2, p3

    .line 528
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p5

    float-to-int v3, p3

    .line 529
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    mul-int/2addr p3, p2

    int-to-float p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    float-to-int v4, p2

    .line 530
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    float-to-int v5, p2

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    float-to-int v6, p2

    .line 524
    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getScaleToTargetAreaWithLimits(IIIIIII)F

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_3

    :cond_5
    if-nez p6, :cond_7

    cmpl-float p2, p4, v0

    if-lez p2, :cond_6

    goto :goto_2

    .line 534
    :cond_6
    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_3

    .line 532
    :cond_7
    :goto_2
    invoke-static {p1, p4}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    .line 536
    :goto_3
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$002(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 537
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$102(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 538
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateThumbnailScale, t="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", mThumbnailBitmapSizeAfterScaled=("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskViewThumbnail"

    .line 538
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 515
    :cond_8
    :goto_4
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    return-void

    .line 544
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-nez p0, :cond_a

    goto :goto_5

    .line 548
    :cond_a
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p0, p3

    .line 549
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 547
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_7

    .line 545
    :cond_b
    :goto_5
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_7

    .line 512
    :cond_c
    :goto_6
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    :goto_7
    return-void
.end method

.method private updateThumbnailDrawInfo()V
    .locals 8

    .line 419
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isRecentsContainerLandscape()Z

    move-result v7

    .line 420
    invoke-direct {p0, v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->calculateInsets(Z)V

    xor-int/lit8 v0, v7, 0x1

    .line 421
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->mapSplitBoundsToTaskViewRect(Z)V

    .line 422
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    :goto_0
    move-object v1, v0

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfoImpl(Landroid/graphics/Rect;Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Matrix;Landroid/graphics/BitmapShader;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;Z)V

    .line 425
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateBgColor()V

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method private updateThumbnailDrawInfoImpl(Landroid/graphics/Rect;Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Matrix;Landroid/graphics/BitmapShader;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;Z)V
    .locals 8

    .line 395
    iput-boolean p7, p2, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->isRecentContainerLandscape:Z

    .line 396
    iget v0, p5, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move v7, v0

    .line 397
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateRotation(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;ZZ)V

    .line 398
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateScale(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Rect;ZZ)V

    .line 399
    invoke-direct {p0, p2, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateOffset(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;Landroid/graphics/Rect;)V

    .line 400
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 401
    invoke-virtual {p3, p1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 403
    :cond_1
    invoke-static {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p1

    invoke-static {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p5

    invoke-virtual {p3, p1, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 404
    invoke-static {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$600(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p5

    invoke-static {p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$700(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p6

    invoke-virtual {p3, p1, p5, p6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 405
    invoke-direct {p0, v0, p3, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->postTranslateToMatrix(ZLandroid/graphics/Matrix;Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)V

    if-eqz p4, :cond_2

    .line 408
    :try_start_0
    invoke-virtual {p4, p3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "TaskViewThumbnail"

    const-string p2, "updateThumbnailDrawInfo mBitmapShader.setLocalMatrix error"

    .line 411
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private useCenterClipForThumbnail()Z
    .locals 1

    .line 441
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private useCenterLayoutForThumbnail()Z
    .locals 0

    .line 626
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isFreeFormMode()Z

    move-result p0

    return p0
.end method


# virtual methods
.method bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZI)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 580
    iput p3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    .line 581
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateDrawingPropertiesAndRequestDraw()V

    return-void
.end method

.method public calculateInsets(FLandroid/graphics/RectF;)V
    .locals 1

    .line 187
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    .line 188
    new-instance p2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    return-void
.end method

.method public clearThumbnail()V
    .locals 2

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 379
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    .line 380
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 381
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 382
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    return-void
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRealHeight()F
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result p0

    goto :goto_0
.end method

.method public getRealWidth()F
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result p0

    goto :goto_0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object p0
.end method

.method public getSysUiStatusNavFlags()I
    .locals 6

    .line 287
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 289
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->appearance:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/lit8 v0, v4, 0x0

    .line 293
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->appearance:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_3

    goto :goto_2

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->systemUiVisibility:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    or-int/lit8 v0, v4, 0x0

    .line 300
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->systemUiVisibility:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    or-int p0, v0, v2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSysUiStatusNavFlags,flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskViewThumbnail"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_4
    return v1
.end method

.method public getTaskRatio()F
    .locals 0

    .line 145
    iget p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    return p0
.end method

.method public getTaskViewHeaderHeight()I
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/recents/util/Utilities;->isAddToLauncher(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result p0

    return p0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070613

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public isFreeFormMode()Z
    .locals 1

    .line 630
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method mapSplitBoundsToTaskViewRect(Z)V
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/wm/shell/util/StagedSplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 347
    iget-boolean v2, v0, Lcom/android/wm/shell/util/StagedSplitBounds;->appsStackedVertically:Z

    if-eqz v2, :cond_1

    .line 348
    iget v0, v0, Lcom/android/wm/shell/util/StagedSplitBounds;->topTaskPercent:F

    .line 349
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 351
    :cond_1
    iget v0, v0, Lcom/android/wm/shell/util/StagedSplitBounds;->leftTaskPercent:F

    .line 352
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 354
    invoke-direct {p0, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->splitVerticallyInRecents(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 355
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    if-nez p1, :cond_2

    .line 356
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 357
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 360
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    .line 361
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 365
    :cond_3
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    if-nez p1, :cond_4

    .line 366
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 367
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 370
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 371
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 206
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 207
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateDrawingPropertiesAndRequestDraw()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 212
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 213
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getFullscreenProgress()F

    move-result v0

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 217
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 220
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 222
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v1, :cond_2

    .line 223
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 225
    :goto_2
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v6}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 226
    iget-object v7, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v7}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    iget-boolean v1, v1, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->isRecentContainerLandscape:Z

    if-nez v1, :cond_3

    :cond_3
    goto :goto_3

    move v1, v4

    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v3, :cond_4

    int-to-float v1, v5

    .line 229
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v5, v1

    .line 230
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v1

    if-nez v1, :cond_4

    int-to-float v1, v7

    .line 231
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v7, v1

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v2

    int-to-float v2, v2

    iget-object v8, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 236
    invoke-static {v8}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v8

    add-int/2addr v8, v6

    int-to-float v8, v8

    iget-object v9, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 237
    invoke-static {v9}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v9

    add-int/2addr v9, v7

    int-to-float v9, v9

    .line 235
    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 240
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_9

    if-lez v6, :cond_9

    if-lez v7, :cond_9

    sub-int v0, v4, v6

    sub-int v1, v5, v7

    .line 243
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    goto :goto_4

    :cond_5
    move v4, v6

    .line 244
    :goto_4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_6

    goto :goto_5

    :cond_6
    move v5, v7

    .line 246
    :goto_5
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result v2

    if-nez v2, :cond_8

    if-gt v0, v3, :cond_7

    if-le v1, v3, :cond_8

    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v9, v4

    int-to-float v10, v5

    .line 248
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v11, v0

    int-to-float v12, v0

    iget-object v13, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 254
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v1, "TaskViewThumbnail"

    const-string v2, "ondraw"

    .line 256
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    const/4 v6, 0x0

    int-to-float v1, v4

    int-to-float v2, v5

    .line 259
    iget v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v9, v4

    int-to-float v10, v4

    iget-object v11, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v0

    move v7, v1

    move v8, v2

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 261
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 263
    :goto_6
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isCoverThumbnail()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 264
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 266
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p2, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    invoke-static {p0, v2, v2, p1, p2}, Lcom/android/systemui/shared/recents/system/ViewWrapper;->set(Landroid/view/View;IIII)V

    .line 161
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfo()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 604
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 605
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setAlpha(F)V

    .line 606
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setScaleX(F)V

    .line 607
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setScaleY(F)V

    const/4 v1, 0x0

    .line 608
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTranslationX(F)V

    .line 609
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTranslationY(F)V

    .line 610
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 611
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 270
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 271
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    .line 571
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDimAlpha:F

    .line 572
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void
.end method

.method public setTaskRatio(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 137
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 138
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 139
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    :cond_0
    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/wm/shell/util/StagedSplitBounds;)V
    .locals 4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 319
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 320
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 321
    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    .line 322
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    iput p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 323
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 324
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v2, v3

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 324
    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 329
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setThumbnail, t="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mThumbnailInfo="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mThumbnailBitmapRect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskViewThumbnail"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 334
    iput-object p3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    .line 336
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfo()V

    return-void

    .line 315
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->clearThumbnail()V

    return-void
.end method

.method public soscStartTaskFromPair(FFLandroid/os/Bundle;)V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->getLaunchHalfSplitTaskPosition()I

    move-result v0

    .line 681
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSoscTaskViewRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 682
    iget p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mPosition:I

    if-nez p1, :cond_1

    .line 683
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, p0, v0, p3}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 685
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, p0, v0, p3}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method unbindFromTask()V
    .locals 1

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 589
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->clearThumbnail()V

    return-void
.end method

.method updateThumbnailPaintFilter()V
    .locals 0

    .line 389
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method
