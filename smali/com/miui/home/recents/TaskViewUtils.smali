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
    new-instance v9, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v0, 0x0

    move-object/from16 v2, p2

    invoke-direct {v9, v2, v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/RectF;

    move-result-object v8

    .line 110
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_5

    .line 111
    iget-object v3, v9, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v3, v3

    if-eqz v3, :cond_5

    if-nez v8, :cond_0

    goto/16 :goto_2

    .line 115
    :cond_0
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    const/4 v4, 0x1

    .line 116
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 117
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 119
    iget-object v6, v9, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 120
    invoke-virtual {v3, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 123
    new-instance v13, Landroid/graphics/RectF;

    invoke-virtual {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v13, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 124
    invoke-virtual {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v13, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result v2

    .line 129
    invoke-static {v2, v0, v8}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLastRotation()I

    move-result v2

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 135
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 137
    iget v7, v13, Landroid/graphics/RectF;->right:F

    iget v11, v13, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v11

    .line 138
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v11, v13, Landroid/graphics/RectF;->bottom:F

    iget v12, v13, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 137
    invoke-static {v2, v5, v7, v11, v6}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformToRotation(IIIILandroid/graphics/Matrix;)V

    .line 139
    new-instance v2, Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v7, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v11, v8, Landroid/graphics/RectF;->right:F

    .line 140
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v2, v5, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    invoke-static {v6, v2, v10}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 143
    invoke-virtual {v8, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 147
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v2, v5

    .line 148
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v14, v2, v5

    .line 149
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v2

    :goto_1
    move v15, v2

    const-string v2, "TaskViewUtils"

    .line 151
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

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v7, Lcom/miui/home/recents/util/RectFSpringAnim;

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v8, v13, v2}, Lcom/miui/home/recents/util/RectUtil;->generateLeastWrapBoundWithRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v12

    const/16 v16, 0x0

    const/high16 v17, 0x3fa00000    # 1.25f

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 155
    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v7, v2, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 156
    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v7, v2, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 157
    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3f7d70a4    # 0.99f

    invoke-virtual {v7, v2, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 158
    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v7, v2, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v5

    if-ge v2, v5, :cond_4

    move v0, v4

    :cond_4
    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result v6

    .line 163
    new-instance v11, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$Y6ahbWNnpwKYOM5UHZANPQlwUzw;

    move-object v0, v11

    move-object v2, v3

    move-object v3, v9

    move/from16 v4, p1

    move-object/from16 v5, p0

    move-object v12, v7

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$Y6ahbWNnpwKYOM5UHZANPQlwUzw;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;)V

    invoke-virtual {v12, v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 185
    new-instance v0, Lcom/miui/home/recents/TaskViewUtils$1;

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v9, v2, v1}, Lcom/miui/home/recents/TaskViewUtils$1;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v12, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0, v12, v10}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12

    :cond_5
    :goto_2
    return-object v10
.end method

.method static synthetic lambda$getRecentsWindowAnimatorNew$0(Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 9

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    const v1, 0x3ecccccd    # 0.4f

    sub-float v2, v1, p1

    div-float/2addr v2, v1

    .line 170
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 171
    invoke-virtual {p0, v0, v0, v8}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    if-eqz p2, :cond_0

    move-object v3, p3

    move-object v4, p0

    move-object v5, p4

    move-object v6, p5

    move v7, p1

    .line 174
    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/views/RecentsView;->alignTaskViewWhenTaskLaunch(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getRecentsWindowAnimatorNew$1(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 164
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v3

    move-object/from16 v10, p8

    invoke-virtual {v3, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v3

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v3

    move/from16 v4, p10

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object v3, p1

    .line 165
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    if-nez p3, :cond_0

    .line 168
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$-QIE15lfWEh_ZRZC2jN8wKBxkMc;

    move-object v4, v3

    move-object/from16 v5, p4

    move/from16 v6, p9

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v4 .. v10}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$-QIE15lfWEh_ZRZC2jN8wKBxkMc;-><init>(Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    move/from16 v3, p9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 181
    invoke-virtual {p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v1

    const/4 v3, 0x1

    .line 180
    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    :cond_1
    return-void
.end method
