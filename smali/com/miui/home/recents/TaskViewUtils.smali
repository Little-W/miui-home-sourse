.class public final Lcom/miui/home/recents/TaskViewUtils;
.super Ljava/lang/Object;
.source "TaskViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/TaskViewUtils$_lancet;
    }
.end annotation


# direct methods
.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/RecentsView;

    .line 67
    instance-of v0, p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    return-object p1

    .line 77
    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3

    aget-object v3, p2, v1

    .line 78
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v4, :cond_2

    .line 79
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

    .line 91
    :cond_4
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    if-nez p0, :cond_5

    return-object p1

    :cond_5
    return-object p0
.end method

.method public static getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;Z[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 20

    move-object/from16 v11, p0

    .line 104
    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, v11}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    .line 105
    new-instance v1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v1

    .line 107
    new-instance v12, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v2, 0x0

    move-object/from16 v3, p2

    invoke-direct {v12, v3, v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 108
    iget-object v3, v12, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v3, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 111
    :cond_0
    invoke-virtual {v12, v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->addDependentTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)V

    .line 113
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    const/4 v0, 0x1

    .line 114
    invoke-virtual {v3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_0

    .line 119
    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v6

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v7

    invoke-direct {v5, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 122
    :goto_0
    iget-object v6, v12, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v6, v6, v2

    invoke-virtual {v3, v5, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 123
    invoke-virtual {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/RectF;

    move-result-object v7

    .line 126
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 128
    new-instance v15, Landroid/graphics/RectF;

    invoke-virtual {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v15, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 129
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

    invoke-virtual {v15, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result v4

    .line 134
    invoke-static {v4, v2, v7}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move v9, v4

    goto :goto_1

    .line 137
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLastRotation()I

    move-result v5

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 140
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 142
    iget v9, v15, Landroid/graphics/RectF;->right:F

    iget v13, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v13

    .line 143
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v13, v15, Landroid/graphics/RectF;->bottom:F

    iget v14, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 142
    invoke-static {v5, v6, v9, v13, v8}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformToRotation(IIIILandroid/graphics/Matrix;)V

    .line 144
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v7, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v9, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v13, v7, Landroid/graphics/RectF;->right:F

    .line 145
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-direct {v5, v6, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    invoke-static {v8, v5, v4}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 148
    invoke-virtual {v7, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_3
    move v9, v2

    .line 152
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    .line 153
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v16, v4, v5

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v17

    const-string v4, "TaskViewUtils"

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRecentsWindowAnimatorNew, startRectF="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", endRectF="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/recents/TaskViewUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v8, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/16 v18, 0x0

    const/high16 v19, 0x3fa00000    # 1.25f

    move-object v13, v8

    move-object v14, v7

    invoke-direct/range {v13 .. v19}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 159
    sget-object v4, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v8, v4, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 160
    sget-object v4, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v8, v4, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 161
    sget-object v4, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3f7d70a4    # 0.99f

    invoke-virtual {v8, v4, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 162
    sget-object v4, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v8, v4, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_4

    move v4, v0

    goto :goto_2

    :cond_4
    move v4, v2

    .line 166
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    .line 168
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskStackLayoutStyleVertical(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    move v4, v2

    .line 170
    :goto_3
    new-instance v13, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$pmfIOtKV4T4Qs_JcohCw8wg0lqo;

    move-object v0, v13

    move-object v2, v3

    move-object v3, v12

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    move-object v14, v8

    move/from16 v8, p1

    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$pmfIOtKV4T4Qs_JcohCw8wg0lqo;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;ZILandroid/graphics/RectF;)V

    invoke-virtual {v14, v13}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 236
    new-instance v0, Lcom/miui/home/recents/TaskViewUtils$1;

    move/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/miui/home/recents/TaskViewUtils$1;-><init>(ZLcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v14, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    invoke-virtual {v14}, Lcom/miui/home/recents/util/RectFSpringAnim;->start()V

    return-object v14
.end method

.method static synthetic lambda$getRecentsWindowAnimatorNew$0(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;ZILandroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    .line 171
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 172
    iget v7, v5, Landroid/graphics/RectF;->top:F

    .line 173
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/RectF;->width()F

    move-result v8

    .line 174
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float/2addr v9, v10

    const/4 v10, 0x0

    move/from16 v11, p13

    .line 175
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 176
    invoke-virtual {v0, v11}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    .line 177
    invoke-virtual {v13, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    .line 178
    invoke-virtual {v6, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    .line 179
    invoke-virtual {v6, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    .line 180
    invoke-virtual {v6, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    .line 181
    invoke-virtual {v6, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    move/from16 v7, p12

    .line 182
    invoke-virtual {v6, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 183
    invoke-virtual {v6, v7, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    if-eqz p3, :cond_1

    const/high16 v6, 0x41c80000    # 25.0f

    .line 187
    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v7}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v7

    .line 188
    iget v8, v5, Landroid/graphics/RectF;->left:F

    iget v9, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v13, v3, Landroid/graphics/RectF;->left:F

    iget v14, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v13, v14

    div-float/2addr v13, v9

    sub-float/2addr v8, v13

    .line 189
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v14

    sub-float/2addr v13, v14

    .line 190
    iget v14, v5, Landroid/graphics/RectF;->top:F

    iget v15, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v15

    div-float/2addr v14, v9

    iget v15, v3, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v15, v10

    div-float/2addr v15, v9

    sub-float/2addr v14, v15

    .line 191
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v10, v3

    const/4 v3, 0x0

    .line 192
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_1

    .line 193
    invoke-virtual/range {p4 .. p4}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/home/recents/views/TaskView;

    if-eq v2, v15, :cond_0

    .line 195
    invoke-virtual {v15}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v0

    sub-int v0, v7, v0

    int-to-float v0, v0

    mul-float v16, v6, p11

    add-float v16, v16, v13

    mul-float v0, v0, v16

    add-float/2addr v0, v8

    .line 197
    invoke-virtual {v15}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-virtual {v15, v6}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 198
    invoke-virtual {v15}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-virtual {v15, v6}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 199
    invoke-virtual {v15, v10}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 200
    invoke-virtual {v15, v10}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 201
    invoke-virtual {v15, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 202
    invoke-virtual {v15, v14}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 203
    invoke-virtual {v15}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v0

    sub-float v6, v12, v11

    invoke-virtual {v0, v6}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/high16 v6, 0x41c80000    # 25.0f

    goto :goto_0

    .line 210
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotationBerforStart()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/16 v0, 0x8

    .line 211
    invoke-virtual {v2, v0}, Lcom/miui/home/recents/views/TaskView;->setVisibility(I)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz p7, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    move/from16 v0, p8

    const/4 v1, 0x0

    .line 215
    invoke-static {v1, v0, v5}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    const-string v1, "TaskViewUtils"

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRecentsWindowAnimatorNew, remote anim running, currentRotationStartRectF="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", currentRotationCurrentRectF="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/home/recents/TaskViewUtils$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v1, v11, v12

    if-gez v1, :cond_4

    .line 219
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v1, v3

    const/4 v3, 0x0

    .line 220
    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 221
    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskViewHeaderHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 222
    invoke-virtual {v2, v1}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 223
    invoke-virtual {v2, v1}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 225
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v3, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    .line 226
    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v3, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    .line 227
    invoke-virtual {v2, v1}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 228
    invoke-virtual {v2, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    :cond_4
    const v0, 0x3f19999a    # 0.6f

    sub-float v1, v0, p11

    div-float/2addr v1, v0

    const/4 v0, 0x0

    .line 231
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 232
    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/recents/views/TaskView;->getHeaderView()Lcom/miui/home/recents/views/TaskViewHeader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskViewHeader;->setAlpha(F)V

    :cond_5
    return-void
.end method
