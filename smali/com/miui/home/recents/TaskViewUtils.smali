.class public final Lcom/miui/home/recents/TaskViewUtils;
.super Ljava/lang/Object;
.source "TaskViewUtils.java"


# direct methods
.method public static findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/RecentsView;

    .line 69
    instance-of v0, p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    return-object p1

    .line 79
    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3

    aget-object v3, p2, v1

    .line 80
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v4, :cond_2

    .line 81
    iget p2, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move p2, v2

    :goto_1
    if-ne p2, v2, :cond_4

    return-object p1

    .line 93
    :cond_4
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_5

    return-object p1

    :cond_5
    return-object p0
.end method

.method public static getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;Z[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 18

    .line 106
    new-instance v1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 108
    new-instance v10, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v0, 0x0

    move-object/from16 v2, p2

    invoke-direct {v10, v2, v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/RectF;

    move-result-object v8

    .line 110
    iget-object v2, v10, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v2, v2

    const/4 v9, 0x0

    if-eqz v2, :cond_6

    if-nez v8, :cond_0

    goto/16 :goto_3

    .line 114
    :cond_0
    new-instance v2, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    const/4 v3, 0x1

    .line 115
    invoke-virtual {v2, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 118
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_0

    .line 120
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v6

    invoke-direct {v4, v0, v0, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    :goto_0
    iget-object v5, v10, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v5, v5, v0

    invoke-virtual {v2, v4, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 124
    invoke-virtual {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 127
    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v13, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 128
    invoke-virtual {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v13, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result v4

    .line 133
    invoke-static {v4, v0, v8}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 136
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLastRotation()I

    move-result v4

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 139
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 141
    iget v7, v13, Landroid/graphics/RectF;->right:F

    iget v11, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v11

    .line 142
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v11, v13, Landroid/graphics/RectF;->bottom:F

    iget v12, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 141
    invoke-static {v4, v5, v7, v11, v6}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformToRotation(IIIILandroid/graphics/Matrix;)V

    .line 143
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v7, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v11, v8, Landroid/graphics/RectF;->right:F

    .line 144
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v4, v5, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 146
    invoke-static {v6, v4, v9}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 147
    invoke-virtual {v8, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 151
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    .line 152
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v14, v4, v5

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v4

    :goto_2
    move v15, v4

    const-string v4, "TaskViewUtils"

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRecentsWindowAnimatorNew, startRectF="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", endRectF="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v7, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/16 v16, 0x0

    const/high16 v17, 0x3fa00000    # 1.25f

    move-object v11, v7

    move-object v12, v8

    invoke-direct/range {v11 .. v17}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 158
    sget-object v4, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v7, v4, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 159
    sget-object v4, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v7, v4, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 160
    sget-object v4, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3f7d70a4    # 0.99f

    invoke-virtual {v7, v4, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 161
    sget-object v4, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v7, v4, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_5

    move v0, v3

    :cond_5
    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result v6

    .line 166
    new-instance v11, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;

    move-object v0, v11

    move-object v3, v10

    move/from16 v4, p1

    move-object/from16 v5, p0

    move-object v12, v7

    move-object/from16 v7, p3

    move-object v13, v9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v12, v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 188
    new-instance v0, Lcom/miui/home/recents/TaskViewUtils$1;

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v10, v2, v1}, Lcom/miui/home/recents/TaskViewUtils$1;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v12, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12

    :cond_6
    :goto_3
    move-object v13, v9

    return-object v13
.end method

.method static synthetic lambda$getRecentsWindowAnimatorNew$1(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;FFF)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 167
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v2

    move-object/from16 v9, p9

    invoke-virtual {v2, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v2

    move/from16 v3, p11

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object v2, p1

    .line 168
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    if-nez p3, :cond_0

    .line 171
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$figiPTKpKa1xSb2tj_5Sh0vXzyg;

    move-object v3, v2

    move-object v4, p4

    move/from16 v5, p10

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v3 .. v9}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$figiPTKpKa1xSb2tj_5Sh0vXzyg;-><init>(Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/RectF;->width()F

    move-result v2

    move-object/from16 v3, p8

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getDimAlphaByCurrentWidth(F)F

    move-result v2

    .line 184
    invoke-virtual {p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v1

    const/4 v3, 0x1

    .line 183
    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$null$0(Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 9

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    const v1, 0x3ecccccd    # 0.4f

    sub-float v2, v1, p1

    div-float/2addr v2, v1

    .line 173
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 174
    invoke-virtual {p0, v0, v0, v8}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    if-eqz p2, :cond_0

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    move-object v6, p5

    move v7, p1

    .line 177
    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/views/RecentsView;->alignTaskViewWhenTaskLaunch(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    :cond_0
    return-void
.end method
