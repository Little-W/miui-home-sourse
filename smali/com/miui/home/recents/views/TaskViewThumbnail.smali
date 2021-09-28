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

.field private mDisplay:Landroid/view/Display;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFullscreenThumbnailScale:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field private mRealInsets:Landroid/graphics/Rect;

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

.field private mThumbnailBitmapRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailBitmapSizeAfterScaled:[I

.field private mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 68
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

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

    .line 86
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    .line 87
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRealInsets:Landroid/graphics/Rect;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 88
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    const/4 p1, 0x2

    .line 89
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapSizeAfterScaled:[I

    .line 105
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 106
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x1

    const/16 p3, 0x1c

    if-lt p1, p3, :cond_0

    .line 107
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 108
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 111
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060324

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060328

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p1, 0x3f19999a    # 0.6f

    .line 115
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisplay:Landroid/view/Display;

    .line 118
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method private calculateInsets(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 154
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 157
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 159
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    int-to-float p1, v0

    mul-float/2addr p1, v2

    .line 160
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    return-void
.end method

.method private updateThumbnailScale()V
    .locals 13

    .line 300
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

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

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 306
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->calculateInsets(Z)V

    .line 312
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v4, :cond_11

    .line 315
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v2

    .line 316
    :goto_2
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v5, :cond_f

    iget v5, v5, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    if-nez v5, :cond_4

    goto/16 :goto_9

    :cond_4
    if-eqz v4, :cond_e

    .line 322
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    if-ne v4, v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    xor-int v4, v0, v1

    if-eqz v4, :cond_8

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_7

    .line 326
    iget-object v7, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    goto :goto_4

    :cond_6
    const/16 v7, -0x5a

    .line 331
    iget-object v8, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v8, v5

    move v8, v7

    move v7, v5

    goto :goto_5

    :cond_7
    :goto_4
    const/16 v7, 0x5a

    .line 328
    iget-object v8, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v8, v5

    move v8, v7

    move v7, v5

    goto :goto_5

    :cond_8
    move v8, v3

    move v5, v6

    move v7, v5

    :goto_5
    if-eqz v4, :cond_9

    .line 337
    iget-object v9, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    goto :goto_6

    :cond_9
    iget-object v9, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    :goto_6
    if-eqz v4, :cond_a

    .line 338
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    goto :goto_7

    :cond_a
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 339
    :goto_7
    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    int-to-float v9, v9

    div-float/2addr v10, v9

    .line 340
    iget-object v12, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    int-to-float v4, v4

    div-float/2addr v12, v4

    if-nez v0, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    cmpl-float v0, v10, v12

    if-lez v0, :cond_d

    .line 344
    :cond_c
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapSizeAfterScaled:[I

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    aput v1, v0, v3

    .line 345
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapSizeAfterScaled:[I

    mul-float/2addr v4, v10

    float-to-int v1, v4

    aput v1, v0, v2

    goto :goto_8

    .line 348
    :cond_d
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapSizeAfterScaled:[I

    mul-float/2addr v9, v12

    float-to-int v1, v9

    aput v1, v0, v3

    .line 349
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    aput v1, v0, v2

    move v10, v12

    :goto_8
    move v3, v8

    move v0, v10

    goto :goto_a

    .line 354
    :cond_e
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 355
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 356
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 354
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v5, v6

    move v7, v5

    goto :goto_a

    :cond_f
    :goto_9
    move v0, v6

    move v5, v0

    move v7, v5

    .line 359
    :goto_a
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    if-eqz v1, :cond_10

    .line 365
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 368
    :cond_10
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 369
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    int-to-float v1, v3

    invoke-virtual {v0, v1, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_11

    .line 372
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    const-string v1, "TaskViewThumbnail"

    const-string v2, "updateThumbnailScale mBitmapShader.setLocalMatrix error"

    .line 375
    .line 378
    :cond_11
    :goto_b
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method


# virtual methods
.method bindToTask(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method

.method public clearThumbnail()V
    .locals 2

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 283
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 284
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 285
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    return-void
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public getSysUiStatusNavFlags()I
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 248
    iget v0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->systemUiVisibility:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    or-int/2addr v0, v1

    .line 251
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

.method public getTaskRatio()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    return v0
.end method

.method public getTaskViewHeaderHeight()I
    .locals 2

    .line 170
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

    .line 171
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

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070311

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 166
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
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 188
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapSizeAfterScaled:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 189
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapSizeAfterScaled:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 191
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_0

    int-to-float v2, v2

    .line 192
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v3, v3

    .line 193
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v3

    .line 197
    :goto_0
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_5

    if-lez v11, :cond_5

    if-lez v0, :cond_5

    sub-int v3, v1, v11

    sub-int v4, v2, v0

    .line 200
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move v1, v11

    .line 201
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v6, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    if-gt v3, v6, :cond_3

    if-le v4, v6, :cond_4

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v1

    int-to-float v7, v2

    .line 205
    iget v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v3

    int-to-float v9, v3

    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v11

    int-to-float v7, v0

    .line 210
    :try_start_0
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v0

    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v9, v0

    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v3, "TaskViewThumbnail"

    const-string v4, "ondraw"

    .line 213
    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v1

    int-to-float v7, v2

    .line 217
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 222
    :goto_3
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isCoverThumbnail()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v1

    int-to-float v7, v2

    .line 223
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 225
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p2, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    invoke-static {p0, v2, v2, p1, p2}, Lcom/android/systemui/shared/recents/system/ViewWrapper;->set(Landroid/view/View;IIII)V

    .line 146
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 417
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 418
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setAlpha(F)V

    .line 419
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setScaleX(F)V

    .line 420
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setScaleY(F)V

    const/4 v1, 0x0

    .line 421
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTranslationX(F)V

    .line 422
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTranslationY(F)V

    .line 423
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 424
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 230
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDimAlpha:F

    .line 387
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void
.end method

.method public setTaskRatio(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 122
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 123
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 124
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    :cond_0
    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 4

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 268
    :cond_0
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

    iget p2, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    iput p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 272
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 273
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 274
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

    .line 273
    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 278
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailScale()V

    return-void

    .line 264
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->clearThumbnail()V

    return-void
.end method

.method unbindFromTask()V
    .locals 1

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 402
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->clearThumbnail()V

    return-void
.end method

.method updateThumbnailPaintFilter()V
    .locals 0

    .line 292
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method
