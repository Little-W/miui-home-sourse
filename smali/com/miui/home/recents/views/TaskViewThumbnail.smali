.class public Lcom/miui/home/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# instance fields
.field private mBgFillPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mCornerRadius:I

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplay:Landroid/view/Display;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mEdgePaint:Landroid/graphics/Paint;

.field private mFullscreenThumbnailScale:F

.field private mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field private mRealInsets:Landroid/graphics/Rect;

.field private mRotateDegrees:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field private mScaledInsets:Landroid/graphics/Rect;

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mTaskRatio:F

.field private mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

.field private mThumbnailRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailScale:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 78
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 79
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    .line 83
    new-instance p1, Landroid/graphics/LightingColorFilter;

    const/4 p2, -0x1

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    .line 84
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mEdgePaint:Landroid/graphics/Paint;

    .line 90
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    .line 91
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRealInsets:Landroid/graphics/Rect;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 92
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    .line 108
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 109
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x1

    const/16 p3, 0x1c

    if-lt p1, p3, :cond_0

    .line 110
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 111
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 114
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060190

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060194

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p1, 0x3f19999a    # 0.6f

    .line 118
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 120
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060192

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mEdgePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mEdgePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisplay:Landroid/view/Display;

    .line 126
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method private calculateInsets(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 157
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 163
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    int-to-float p1, v0

    mul-float/2addr p1, v2

    .line 164
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 165
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    return-void
.end method

.method private updateThumbnailScale()V
    .locals 7

    .line 301
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 306
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->calculateInsets(Z)V

    const/4 v4, 0x0

    .line 308
    iput v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 311
    iput v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    .line 312
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v6, :cond_c

    .line 315
    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez v6, :cond_3

    :cond_2
    move v1, v2

    .line 316
    :cond_3
    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v6, :cond_a

    iget v6, v6, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    if-nez v6, :cond_4

    goto/16 :goto_1

    :cond_4
    if-eqz v1, :cond_9

    const/high16 v1, 0x42b40000    # 90.0f

    if-nez v0, :cond_6

    .line 323
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    if-ne v0, v2, :cond_5

    .line 326
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_2

    .line 328
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    .line 329
    iput v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    .line 330
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    .line 331
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    goto/16 :goto_3

    .line 334
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    if-ne v0, v3, :cond_7

    .line 337
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 338
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 337
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_2

    .line 340
    :cond_7
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    .line 342
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 343
    iput v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    .line 344
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    .line 345
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    goto :goto_3

    :cond_8
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 347
    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    .line 348
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 349
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    div-float v1, v2, v1

    goto :goto_3

    .line 356
    :cond_9
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 357
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 358
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 356
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_2

    .line 320
    :cond_a
    :goto_1
    iput v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    :goto_2
    move v0, v4

    move v1, v0

    .line 360
    :goto_3
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    if-eqz v2, :cond_b

    .line 366
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 369
    :cond_b
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 370
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 371
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_c

    .line 372
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 375
    :cond_c
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method


# virtual methods
.method bindToTask(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 392
    iput-boolean p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    return-void
.end method

.method public getInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public getSysUiStatusNavFlags()I
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 251
    iget v0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->systemUiVisibility:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    or-int/2addr v0, v1

    .line 254
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->systemUiVisibility:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_2
    return v1
.end method

.method public getTaskViewHeaderHeight()I
    .locals 1

    .line 174
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 180
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getFullscreenProgress()F

    move-result v0

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float v6, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 186
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 187
    iget v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 188
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    iget v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 187
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 189
    iget v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRotateDegrees:F

    cmpl-float v2, v4, v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 190
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_1
    int-to-float v2, v2

    iget v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 189
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 191
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_2

    int-to-float v3, v3

    .line 192
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v2, v2

    .line 193
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v3

    .line 197
    :goto_2
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_5

    if-lez v11, :cond_5

    if-lez v2, :cond_5

    sub-int v3, v1, v11

    .line 198
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v11

    :goto_3
    sub-int v3, v0, v2

    .line 199
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v4, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v1

    int-to-float v7, v0

    .line 203
    iget v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v3

    int-to-float v9, v3

    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    int-to-float v6, v11

    int-to-float v7, v2

    .line 206
    iget v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    int-to-float v9, v2

    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 211
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    add-int/lit8 v2, v1, -0x1

    int-to-float v6, v2

    add-int/lit8 v2, v0, -0x1

    int-to-float v7, v2

    .line 212
    iget v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    int-to-float v9, v2

    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mEdgePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v1

    int-to-float v7, v0

    .line 216
    iget v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    int-to-float v9, v2

    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 221
    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isCoverThumbnail()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v1

    int-to-float v7, v0

    .line 222
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 224
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 403
    invoke-virtual {p0, p1, p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    :goto_0
    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p2, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    invoke-static {p0, v2, v2, p1, p2}, Lcom/android/systemui/shared/recents/system/ViewWrapper;->set(Landroid/view/View;IIII)V

    .line 150
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 427
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 428
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setAlpha(F)V

    .line 429
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setScaleX(F)V

    .line 430
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setScaleY(F)V

    const/4 v1, 0x0

    .line 431
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTranslationX(F)V

    .line 432
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTranslationY(F)V

    .line 433
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 434
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 229
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    .line 383
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDimAlpha:F

    .line 384
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void
.end method

.method public setTaskRatio(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 130
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 131
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 132
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    .line 133
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    :cond_0
    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 268
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 269
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 270
    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    .line 271
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz p2, :cond_0

    .line 272
    iget p2, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    iput p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 274
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    if-eqz p2, :cond_1

    .line 275
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 276
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

    .line 275
    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 280
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 283
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 284
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 285
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    :goto_1
    return-void
.end method

.method unbindFromTask()V
    .locals 1

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 412
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    return-void
.end method

.method updateThumbnailPaintFilter()V
    .locals 0

    .line 293
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method
