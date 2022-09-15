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

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 69
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    .line 79
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    .line 84
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    .line 88
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    .line 89
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mRealInsets:Landroid/graphics/Rect;

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 91
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    .line 92
    new-instance p1, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-direct {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 108
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x1

    const/16 p3, 0x1c

    if-lt p1, p3, :cond_0

    .line 109
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 110
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06056b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColor:I

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06056c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColorForSmallWindow:I

    .line 115
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f060570

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
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisplay:Landroid/view/Display;

    .line 121
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method private calculateInsets(Z)V
    .locals 3

    .line 159
    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->isNeedRotate(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 166
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float p1, p1

    div-float/2addr v2, p1

    int-to-float p1, v0

    mul-float/2addr p1, v2

    .line 167
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 168
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

    .line 562
    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p2, p3

    int-to-float p1, p1

    div-float/2addr p1, p5

    .line 563
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    cmpg-float p2, p1, p0

    if-gez p2, :cond_1

    move p0, p1

    :cond_1
    int-to-float p2, p4

    div-float/2addr p2, p5

    float-to-double p2, p2

    .line 567
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

.method private isSplitScreen()Z
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateBgColor()V
    .locals 2

    .line 377
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColorForSmallWindow:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method private updateDrawingPropertiesAndRequestDraw()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06056b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060570

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method private updateOffset(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)V
    .locals 2

    .line 466
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 468
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 467
    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$202(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 469
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 470
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 469
    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$302(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 472
    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$202(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 473
    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$302(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    :goto_0
    return-void
.end method

.method private updateRotation(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;ZZ)V
    .locals 4

    .line 387
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

    .line 388
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    :cond_1
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    goto/16 :goto_4

    .line 391
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

    .line 392
    :goto_1
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v3, :cond_9

    iget v3, v3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_a

    xor-int/2addr p3, p2

    if-eqz p3, :cond_8

    const/high16 p3, 0x40000000    # 2.0f

    if-eqz p2, :cond_7

    .line 397
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDisplay:Landroid/view/Display;

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    goto :goto_2

    :cond_6
    const/16 p2, -0x5a

    .line 401
    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 402
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$702(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$602(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_4

    :cond_7
    :goto_2
    const/16 p2, 0x5a

    .line 398
    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 399
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$702(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$602(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_4

    .line 405
    :cond_8
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    goto :goto_4

    .line 394
    :cond_9
    :goto_3
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$502(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 409
    :cond_a
    :goto_4
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_5

    :cond_b
    move v1, v2

    :goto_5
    if-eqz v1, :cond_c

    .line 410
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_6

    :cond_c
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    :goto_6
    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$802(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    if-eqz v1, :cond_d

    .line 411
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    goto :goto_7

    :cond_d
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    :goto_7
    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$902(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    return-void
.end method

.method private updateScale(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;ZZ)V
    .locals 7

    .line 418
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    .line 419
    :goto_1
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v1, :cond_c

    iget v1, v1, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    if-nez v1, :cond_2

    goto/16 :goto_6

    :cond_2
    if-eqz p2, :cond_9

    .line 425
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_8

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    cmpl-float p2, p2, v2

    if-nez p2, :cond_3

    goto/16 :goto_4

    .line 429
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result p2

    .line 430
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isSplitScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez v1, :cond_4

    move p3, v0

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result v2

    div-float/2addr v0, v2

    .line 432
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result v1

    div-float/2addr v2, v1

    if-eqz p2, :cond_5

    .line 435
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 436
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3ecccccd    # 0.4f

    mul-float/2addr p2, p3

    float-to-int v0, p2

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 437
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 438
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 439
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int v3, p3

    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 440
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr p3, v1

    int-to-float p3, p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p3, v1

    float-to-int v4, p3

    .line 441
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    float-to-int v5, p3

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    float-to-int v6, p3

    move v1, p2

    .line 435
    invoke-static/range {v0 .. v6}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getScaleToTargetAreaWithLimits(IIIIIII)F

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_3

    :cond_5
    if-nez p3, :cond_7

    cmpl-float p2, v0, v2

    if-lez p2, :cond_6

    goto :goto_2

    .line 445
    :cond_6
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_3

    .line 443
    :cond_7
    :goto_2
    invoke-static {p1, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    .line 447
    :goto_3
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$800(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$002(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    .line 448
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$900(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p2

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$102(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;I)I

    const-string p2, "TaskViewThumbnail"

    .line 449
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateThumbnailScale, t="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mThumbnailBitmapSizeAfterScaled=("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 426
    :cond_8
    :goto_4
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    return-void

    .line 455
    :cond_9
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-nez p2, :cond_a

    goto :goto_5

    .line 458
    :cond_a
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 459
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 460
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 458
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_7

    .line 456
    :cond_b
    :goto_5
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    goto :goto_7

    .line 423
    :cond_c
    :goto_6
    invoke-static {p1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$402(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;F)F

    :goto_7
    return-void
.end method

.method private updateThumbnailDrawInfo()V
    .locals 5

    .line 311
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 317
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->calculateInsets(Z)V

    .line 318
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v4, :cond_4

    .line 319
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    if-ne v4, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 320
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateBgColor()V

    .line 321
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateRotation(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;ZZ)V

    .line 322
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateScale(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;ZZ)V

    .line 323
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateOffset(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)V

    .line 324
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$400(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 334
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$600(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result v3

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v4}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$700(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 335
    invoke-direct {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateTranslate(Z)V

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_4

    .line 338
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "TaskViewThumbnail"

    const-string v2, "updateThumbnailDrawInfo mBitmapShader.setLocalMatrix error"

    .line 341
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method private updateTranslate(Z)V
    .locals 5

    .line 352
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 353
    :goto_0
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$500(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v3

    const/16 v4, -0x5a

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 354
    :goto_1
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v2

    mul-int/2addr v2, v0

    .line 355
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v3

    mul-int/2addr v3, v1

    .line 356
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterClipForThumbnail()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_4

    .line 357
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p1

    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 358
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le p1, v4, :cond_3

    .line 359
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 360
    invoke-static {v2}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v2

    sub-int/2addr p1, v2

    mul-int/2addr p1, v0

    div-int/lit8 v2, p1, 0x2

    .line 364
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    .line 365
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 366
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 367
    invoke-static {v0}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v0

    sub-int/2addr p1, v0

    mul-int/2addr p1, v1

    div-int/lit8 v3, p1, 0x2

    :cond_4
    const-string p1, "TaskViewThumbnail"

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThumbnailDrawInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v2

    int-to-float v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private useCenterClipForThumbnail()Z
    .locals 1

    .line 348
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private useCenterLayoutForThumbnail()Z
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->isFreeFormMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method bindToTask(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 491
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateDrawingPropertiesAndRequestDraw()V

    return-void
.end method

.method public clearThumbnail()V
    .locals 2

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 294
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 295
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 296
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    return-void
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public getSysUiStatusNavFlags()I
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 259
    iget v0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->systemUiVisibility:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    or-int/2addr v0, v1

    .line 262
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

    .line 133
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    return v0
.end method

.method public getTaskViewHeaderHeight()I
    .locals 2

    .line 177
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

    .line 178
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

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public isFreeFormMode()Z
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 173
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateDrawingPropertiesAndRequestDraw()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/TaskView;

    .line 187
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskView;->getFullscreenProgress()F

    move-result v0

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 190
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

    const/4 v9, 0x0

    invoke-virtual {p1, v9, v9, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 193
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 194
    iget-object v2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 196
    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$000(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 197
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v4}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$100(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_0

    int-to-float v2, v2

    .line 200
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 201
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->useCenterLayoutForThumbnail()Z

    move-result v5

    if-nez v5, :cond_0

    int-to-float v4, v4

    .line 202
    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mScaledInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v5}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    invoke-static {v6}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 207
    invoke-static {v7}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$200(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    iget-object v8, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShaderDrawInfo:Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;

    .line 208
    invoke-static {v8}, Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;->access$300(Lcom/miui/home/recents/views/TaskViewThumbnail$BitmapShaderDrawInfo;)I

    move-result v8

    add-int/2addr v8, v4

    int-to-float v8, v8

    .line 206
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 210
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_5

    if-lez v3, :cond_5

    if-lez v4, :cond_5

    sub-int v0, v1, v3

    sub-int v5, v2, v4

    .line 213
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 214
    :goto_0
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v7, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    if-gt v0, v7, :cond_3

    if-le v5, v7, :cond_4

    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v5, v2

    .line 218
    iget v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 223
    :cond_4
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

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "TaskViewThumbnail"

    const-string v2, "ondraw"

    .line 225
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const/4 v3, 0x0

    int-to-float v10, v1

    int-to-float v11, v2

    .line 229
    iget v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v0

    move v4, v10

    move v5, v11

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 231
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v9, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 233
    :goto_2
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isCoverThumbnail()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 236
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p2, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskViewWithoutHeaderRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 147
    invoke-static {p0, v2, v2, p1, p2}, Lcom/android/systemui/shared/recents/system/ViewWrapper;->set(Landroid/view/View;IIII)V

    .line 149
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfo()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 514
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 515
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setAlpha(F)V

    .line 516
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setScaleX(F)V

    .line 517
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setScaleY(F)V

    const/4 v1, 0x0

    .line 518
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTranslationX(F)V

    .line 519
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTranslationY(F)V

    .line 520
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 521
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 241
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    .line 482
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDimAlpha:F

    .line 483
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void
.end method

.method public setTaskRatio(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 125
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 126
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 127
    iput p1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTaskRatio:F

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    :cond_0
    return-void
.end method

.method setThumbnail(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 4

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 279
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 280
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 281
    iput-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    .line 282
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    iput p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 283
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 284
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 285
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

    .line 284
    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mThumbnailBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->updateThumbnailDrawInfo()V

    return-void

    .line 275
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->clearThumbnail()V

    return-void
.end method

.method unbindFromTask()V
    .locals 1

    const/4 v0, 0x0

    .line 498
    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 499
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->clearThumbnail()V

    return-void
.end method

.method updateThumbnailPaintFilter()V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method
