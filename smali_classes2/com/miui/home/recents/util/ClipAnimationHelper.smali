.class public Lcom/miui/home/recents/util/ClipAnimationHelper;
.super Ljava/lang/Object;
.source "ClipAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;,
        Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;
    }
.end annotation


# instance fields
.field private mBoostModeTargetLayers:I

.field private mClipRectF:Landroid/graphics/RectF;

.field private mCurrentRect:Landroid/graphics/RectF;

.field private mCurrentRectWithInsets:Landroid/graphics/RectF;

.field public final mHomeStackBounds:Landroid/graphics/Rect;

.field private mIsUseForHomeGesture:Z

.field private final mSourceInsets:Landroid/graphics/Rect;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mSourceStackBounds:Landroid/graphics/Rect;

.field private final mSourceWindowClipInsets:Landroid/graphics/RectF;

.field private final mSplitSingleSourceStackBounds:Landroid/graphics/Rect;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSplitSingleSourceStackBounds:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mIsUseForHomeGesture:Z

    return-void
.end method

.method private applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->scheduleApply([Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    goto :goto_4

    .line 620
    :cond_0
    new-instance p0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    const/4 p1, 0x0

    move v0, p1

    .line 621
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 622
    aget-object v1, p2, v0

    .line 623
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 625
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    .line 626
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/AppPairController;->beginAppPairAnimation(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p1

    .line 629
    :goto_1
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    .line 633
    :cond_2
    invoke-static {p0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(Lcom/android/systemui/shared/recents/system/TransactionCompat;Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    goto :goto_3

    :cond_3
    :goto_2
    const-string v1, "ClipAnimationHelper"

    const-string v2, "Error! param.surface is not valid"

    .line 630
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 636
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    :goto_4
    return-void
.end method

.method private calculateSurfaceParams(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;Z)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    .line 384
    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 385
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->initCropFromCalculateSurfaceParams(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v11, 0x0

    .line 386
    invoke-virtual {v10, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 387
    iget-object v12, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    const/4 v13, 0x1

    if-eqz v12, :cond_0

    iget-object v12, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v12, v12

    if-ne v12, v13, :cond_0

    move v12, v13

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    const/4 v14, 0x2

    if-nez v12, :cond_1

    .line 390
    iget-object v15, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-eqz v15, :cond_1

    iget-object v15, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v15, v15

    if-lt v15, v14, :cond_1

    iget-object v15, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v15, v15, v11

    iget-object v15, v15, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    if-nez v15, :cond_1

    iget-object v4, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v4, v4, v13

    iget-object v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-nez v4, :cond_1

    move v4, v13

    goto :goto_1

    :cond_1
    move v4, v11

    .line 395
    :goto_1
    iget v15, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    invoke-static {v1, v15}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->getLayer(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)I

    move-result v15

    .line 396
    iget v13, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v11, p5

    if-ne v13, v11, :cond_b

    .line 397
    iget v11, v5, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    .line 398
    iget v5, v5, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    .line 399
    iget v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    if-eq v6, v14, :cond_e

    .line 400
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 401
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1e

    if-lt v6, v9, :cond_2

    .line 402
    new-instance v6, Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 403
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    invoke-virtual {v6, v9, v13}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 404
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    sget-object v14, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v13, v6, v14}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 406
    :cond_2
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v9, Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-direct {v9, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    sget-object v14, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v9, v13, v14}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 407
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    invoke-virtual {v6, v9, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_2

    .line 410
    :cond_3
    invoke-direct {v0, v7, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isNeedMatrixScaleAndTranslate(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 411
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float v6, v6, v16

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 412
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 413
    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float v6, v6, v16

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 414
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    mul-float v9, v9, v16

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float/2addr v6, v13

    add-float/2addr v9, v6

    .line 415
    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float v6, v6, v16

    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v6, v13

    .line 416
    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    mul-float v13, v13, v16

    iget-object v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float/2addr v6, v14

    add-float/2addr v13, v6

    .line 417
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v9, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 418
    :cond_4
    invoke-direct {v0, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isRightSplitSelect(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 419
    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    .line 420
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 v13, 0x0

    invoke-virtual {v9, v6, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 421
    :cond_5
    invoke-direct {v0, v7, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isSoscSingleTask(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 422
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float v6, v6, v16

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    .line 423
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 424
    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    mul-float v6, v6, v16

    .line 425
    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    mul-float v9, v9, v16

    .line 426
    iget-object v13, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v6, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_6
    :goto_2
    if-eqz v12, :cond_7

    .line 431
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v10}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 432
    invoke-direct {v0, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isRightSplitSelect(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 433
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-static {v10, v4, v6}, Lcom/miui/home/launcher/common/Utilities;->offsetTo(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    .line 436
    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-lez v4, :cond_9

    .line 437
    :cond_8
    iget-object v4, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 441
    :cond_9
    :goto_3
    iget-boolean v4, v8, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mFirst:Z

    if-nez v4, :cond_a

    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v6, v8, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mX:I

    if-lt v4, v6, :cond_a

    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v6, v8, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->mY:I

    if-ge v4, v6, :cond_e

    :cond_a
    const/4 v4, 0x0

    .line 442
    invoke-virtual {v8, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setFirst(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v4

    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    .line 443
    invoke-virtual {v4, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setX(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v4

    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 444
    invoke-virtual {v4, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setY(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateCurrentRectWithInsets()V

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    .line 448
    iget v4, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    if-ne v4, v14, :cond_d

    if-eqz v6, :cond_d

    .line 449
    iget v4, v6, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    .line 450
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_c

    .line 451
    iget-object v5, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v7, v6, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    iget v6, v6, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->scale:F

    iget-object v8, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v7, v6, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :cond_c
    move v5, v4

    move v11, v13

    goto :goto_4

    :cond_d
    move v11, v13

    move/from16 v5, v16

    .line 457
    :cond_e
    :goto_4
    new-instance v4, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v4, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 459
    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 460
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0, v10}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    .line 462
    invoke-virtual {v0, v15}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withLayer(I)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    .line 463
    invoke-virtual {v0, v11}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 464
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withShow(Z)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v0

    if-eqz v2, :cond_f

    .line 466
    iget-object v1, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withRelativeLayerTo(Landroid/view/SurfaceControl;I)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    :cond_f
    if-eqz v3, :cond_10

    .line 469
    iget-object v1, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withHomeLayer(Landroid/view/SurfaceControl;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 472
    :cond_10
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v0

    return-object v0
.end method

.method private initCropFromCalculateSurfaceParams(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 152
    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method private initCurrentRect(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)Landroid/graphics/RectF;
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 477
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 478
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 480
    iget-boolean v0, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    if-eqz v0, :cond_1

    .line 481
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 482
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 484
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 485
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 487
    :goto_1
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private isIgnoreTranslateSurface()Z
    .locals 2

    .line 590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mIsUseForHomeGesture:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedMatrixScaleAndTranslate(IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 302
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 305
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 308
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isSoscSingleTask(IZ)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isRightSplitSelect(I)Z
    .locals 0

    .line 295
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSoscSingleTask(IZ)Z
    .locals 0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateClipRectF(Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)V
    .locals 2

    .line 562
    iget-boolean v0, p2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isClipFromLeftOrTop:Z

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 564
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 565
    iget-boolean p2, p2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    if-eqz p2, :cond_0

    .line 566
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 567
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    iput p3, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 569
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p3

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 570
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 574
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 575
    iget-boolean p2, p2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->isVerticalClip:Z

    if-eqz p2, :cond_2

    .line 576
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 577
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    iput p2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 579
    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 580
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iput p1, p0, Landroid/graphics/RectF;->top:F

    :goto_0
    return-void
.end method

.method private updateStackBoundsToMultiWindowTaskSize(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public applyTransformHalfTask(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;II)Landroid/graphics/RectF;
    .locals 15

    move-object v11, p0

    move-object/from16 v4, p1

    move-object/from16 v12, p2

    move/from16 v0, p4

    const/4 v1, 0x0

    if-nez v4, :cond_0

    return-object v1

    .line 327
    :cond_0
    iget v2, v12, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 328
    iget v3, v12, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    mul-float/2addr v3, v2

    .line 330
    iget-object v5, v11, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 331
    invoke-direct {p0, v5, v12, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateClipRectF(Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)V

    .line 333
    invoke-direct {p0, v12, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->initCurrentRect(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, v11, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 335
    iget-object v2, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez v2, :cond_1

    .line 336
    iget-object v0, v11, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    return-object v0

    :cond_1
    const/4 v2, 0x1

    new-array v13, v2, [Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 342
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper;)V

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setFirst(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setX(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setY(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v9

    move-object v2, v1

    move-object v3, v2

    move-object v5, v3

    move v1, v14

    .line 347
    :goto_0
    iget-object v6, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 348
    iget-object v6, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v6, v0, :cond_2

    iget-object v6, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    iget v7, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    if-ne v6, v7, :cond_2

    .line 350
    iget-object v2, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v2, v2, v1

    .line 352
    :cond_2
    iget-object v6, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-eq v6, v0, :cond_3

    iget-object v6, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    iget v7, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    if-ne v6, v7, :cond_3

    iget-object v6, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v7, 0x7f2

    if-eq v6, v7, :cond_3

    .line 355
    iget-object v3, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v3, v3, v1

    .line 357
    :cond_3
    iget-object v6, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 358
    iget-object v5, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v5, v5, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    .line 363
    iget-object v0, v11, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    return-object v0

    .line 368
    :cond_6
    iget v6, v4, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v4, p1

    move v5, v6

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/util/ClipAnimationHelper;->calculateSurfaceParams(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;Z)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v0

    aput-object v0, v13, v14

    .line 370
    iget-object v0, v12, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {p0, v0, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 371
    iget-object v0, v11, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    return-object v0
.end method

.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x1

    .line 206
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;I)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;I)Landroid/graphics/RectF;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;IZ)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;IZ)Landroid/graphics/RectF;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    if-nez v12, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    iget v1, v13, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 217
    iget v2, v13, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    mul-float/2addr v2, v1

    move/from16 v14, p4

    .line 219
    invoke-virtual {v0, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 220
    invoke-direct {v0, v3, v13, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateClipRectF(Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)V

    .line 222
    invoke-direct {v0, v13, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->initCurrentRect(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    .line 224
    iget-object v1, v12, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez v1, :cond_1

    .line 225
    iget-object v0, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    return-object v0

    .line 229
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyTransformNew::mCurrentRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 230
    iget-object v1, v12, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    new-array v15, v1, [Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    .line 233
    new-instance v1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setFirst(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setX(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;->setY(I)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;

    move-result-object v16

    move v11, v2

    .line 235
    :goto_0
    iget-object v1, v12, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    if-ge v11, v1, :cond_2

    .line 238
    iget-object v1, v12, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v2, v1, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 239
    iget v6, v12, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, v16

    move/from16 v17, v11

    move/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lcom/miui/home/recents/util/ClipAnimationHelper;->calculateSurfaceParams(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformTimes;Z)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v1

    aput-object v1, v15, v17

    add-int/lit8 v11, v17, 0x1

    goto :goto_0

    .line 241
    :cond_2
    iget-object v1, v13, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, v1, v15}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 246
    iget-object v0, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    return-object v0

    :catchall_0
    move-exception v0

    .line 243
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 244
    throw v0
.end method

.method public applyTransformThreeGesture(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 501
    :cond_0
    iget v3, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->ratio:F

    .line 502
    iget v4, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->width:F

    mul-float/2addr v4, v3

    .line 504
    iget-object v5, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v5, v2, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateClipRectF(Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;F)V

    .line 506
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 507
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->x:F

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 508
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->y:F

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 509
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 510
    iget-object v3, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    iget-object v6, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 512
    iget-object v3, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez v3, :cond_1

    .line 513
    iget-object v0, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRect:Landroid/graphics/RectF;

    return-object v0

    .line 516
    :cond_1
    iget-object v3, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v3, v3

    new-array v3, v3, [Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v7, v4

    move v6, v5

    move v8, v6

    move v9, v8

    .line 521
    :goto_0
    iget-object v10, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v10, v10

    if-ge v6, v10, :cond_4

    .line 522
    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 523
    iget-object v10, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v10, v10, v6

    .line 524
    iget-object v11, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 525
    invoke-virtual {v11, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    .line 528
    iget v14, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    invoke-static {v10, v14}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->getLayer(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)I

    move-result v14

    .line 529
    iget v15, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    iget v5, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->targetMode:I

    if-ne v15, v5, :cond_3

    .line 530
    iget v13, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->radius:F

    .line 531
    iget v12, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->targetAlpha:F

    .line 532
    iget v5, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v15, 0x2

    if-eq v5, v15, :cond_3

    .line 533
    iget-object v5, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v11}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    if-nez v7, :cond_2

    .line 535
    iget-object v5, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-lt v5, v8, :cond_2

    iget-object v5, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ge v5, v9, :cond_3

    .line 537
    :cond_2
    iget-object v5, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 538
    iget-object v7, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateCurrentRectWithInsets()V

    move v8, v5

    move v9, v7

    const/4 v7, 0x0

    .line 545
    :cond_3
    new-instance v5, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v10, v10, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v10, v10, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v5, v10}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 546
    invoke-virtual {v5, v12}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v5

    iget-object v10, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 547
    invoke-virtual {v5, v10}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v5

    .line 548
    invoke-virtual {v5, v11}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v5

    .line 549
    invoke-virtual {v5, v14}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withLayer(I)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v5

    .line 550
    invoke-virtual {v5, v13}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v5

    .line 551
    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withShow(Z)Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v5

    .line 552
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v5

    aput-object v5, v3, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_0

    .line 556
    :cond_4
    iget-object v1, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->syncTransactionApplier:Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, v1, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applySurfaceParams(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;[Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 558
    iget-object v0, v0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    return-object v0
.end method

.method public fromTaskThumbnailView(Lcom/miui/home/recents/views/TaskViewThumbnail;Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 6

    .line 641
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 645
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DragLayer;->getLocationOnScreen([I)V

    .line 646
    iget-object v3, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getHeight()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p3, :cond_0

    .line 649
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->shouldUseMultiWindowTaskSizeStrategy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    invoke-direct {p0, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateStackBoundsToMultiWindowTaskSize(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 654
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-array v0, v2, [F

    .line 658
    invoke-static {p1, p2, v0, v5, v5}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 659
    new-instance p2, Landroid/graphics/Rect;

    aget v1, v0, v5

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    aget v4, v0, v5

    .line 660
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    aget v0, v0, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {p2, v1, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 662
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    if-nez p3, :cond_2

    .line 668
    iget-object p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    .line 669
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 670
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->top:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 671
    iget-object p2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->right:F

    mul-float/2addr p3, p1

    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 672
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method public getSourceRect()Landroid/graphics/RectF;
    .locals 0

    .line 685
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getSourceStackBounds()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSourceStackBounds(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    return-object p0

    .line 125
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSplitSingleSourceStackBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSplitSingleSourceStackBounds()Landroid/graphics/Rect;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSplitSingleSourceStackBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTargetRect()Landroid/graphics/RectF;
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public modifyRectFToHome(Landroid/graphics/RectF;)V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public modifyRectFToSource(Landroid/graphics/RectF;)V
    .locals 4

    .line 601
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 602
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 603
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    .line 605
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v2, p0

    mul-float/2addr v1, v2

    .line 607
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public prepareAnimation(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 198
    iput p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mBoostModeTargetLayers:I

    return-void
.end method

.method public setIsUseForHomeGesture(Z)V
    .locals 0

    .line 586
    iput-boolean p1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mIsUseForHomeGesture:Z

    return-void
.end method

.method public shouldVerticalClip(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    const/4 p0, 0x1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 316
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 317
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr v0, p2

    .line 318
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p2, p3

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_0
    cmpg-float p1, p2, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, p3

    :cond_2
    :goto_0
    return p0
.end method

.method public updateCurrentRectWithInsets()V
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mClipRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 595
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->isIgnoreTranslateSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mCurrentRectWithInsets:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    return-void
.end method

.method public updateHomeStack(Landroid/graphics/Rect;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateHomeStack  mSourceInsets="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mHomeStackBounds="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClipAnimationHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 3

    const-string v0, "ClipAnimationHelper"

    if-nez p1, :cond_0

    const-string p0, "updateSourceStack, target=null"

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 90
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_2

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSourceStack  mSourceInsets="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceStackBounds="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)V

    return-void
.end method

.method public updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)V
    .locals 4

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 107
    iget-object p1, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-eqz p2, :cond_0

    .line 108
    iget-object v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 109
    :goto_1
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_2

    .line 115
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_3
    :goto_2
    const-string p0, "ClipAnimationHelper"

    const-string p1, "updateSourceStackBounds, rect is invalid"

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSplitSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "ClipAnimationHelper"

    const-string p1, "updateSplitSourceStackBounds: splitSingleOpenTarget is null, return"

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSplitSingleSourceStackBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public updateTargetRect(Landroid/graphics/Rect;)V
    .locals 8

    .line 169
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 170
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 171
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 169
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    iget-object v0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 178
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 179
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    .line 180
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 179
    invoke-static {v0, v1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 181
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 182
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    .line 183
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 184
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 185
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceStackBounds:Landroid/graphics/Rect;

    .line 186
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 182
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 187
    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTargetRect  mSourceRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   mTargetRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   mSourceWindowClipInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mSourceWindowClipInsets:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   mHomeStackBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "   targetRect="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClipAnimationHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
