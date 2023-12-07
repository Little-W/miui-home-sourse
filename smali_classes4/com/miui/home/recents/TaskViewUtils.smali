.class public final Lcom/miui/home/recents/TaskViewUtils;
.super Ljava/lang/Object;
.source "TaskViewUtils.java"


# direct methods
.method private static createSpringAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFZI)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 16

    move-object/from16 v13, p4

    .line 301
    new-instance v14, Lcom/miui/home/recents/util/RectFSpringAnim;

    const v0, 0x3dcccccd    # 0.1f

    move-object/from16 v11, p5

    move-object/from16 v2, p6

    invoke-static {v11, v2, v0}, Lcom/miui/home/recents/util/RectUtil;->generateLeastWrapBoundWithRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    const/4 v5, 0x0

    const/high16 v6, 0x3fa00000    # 1.25f

    move-object v0, v14

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 302
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v14, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result v9

    .line 306
    invoke-static/range {p10 .. p10}, Lcom/miui/home/recents/TaskViewUtils;->isVerticalClip(I)Z

    move-result v8

    .line 307
    invoke-static/range {p10 .. p10}, Lcom/miui/home/recents/TaskViewUtils;->isClipFromLeftOrTop(I)Z

    move-result v10

    if-eqz v13, :cond_1

    .line 308
    invoke-virtual/range {p4 .. p4}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowModeCompatAndroidT()Z

    move-result v0

    if-nez v0, :cond_1

    move v12, v2

    goto :goto_1

    :cond_1
    move v12, v3

    .line 311
    :goto_1
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_2

    .line 312
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setRemoteAnim(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 313
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v4, v8

    move v5, v10

    move/from16 v6, p10

    move v7, v12

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setControl(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZZIZ)V

    .line 316
    :cond_2
    new-instance v15, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$xJ4CvfE8ozBl-rNWgiFtcrFFyqc;

    move-object v0, v15

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v4, v8

    move v5, v10

    move/from16 v6, p10

    move/from16 v7, p9

    move-object/from16 v8, p1

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v12}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$xJ4CvfE8ozBl-rNWgiFtcrFFyqc;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZZIZLcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Z)V

    invoke-virtual {v14, v15}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 344
    new-instance v0, Lcom/miui/home/recents/TaskViewUtils$1;

    move-object/from16 v1, p1

    move/from16 v2, p9

    invoke-direct {v0, v13, v2, v1}, Lcom/miui/home/recents/TaskViewUtils$1;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v14, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v14
.end method

.method private static filtOpeningTargets(ILcom/miui/home/recents/util/RemoteAnimationTargetSet;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;II)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static findTaskViewToLaunch(Lcom/miui/home/launcher/Launcher;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/views/RecentsView;

    .line 96
    instance-of v0, p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    return-object p1

    .line 105
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 107
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v4, :cond_2

    .line 108
    iget v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    return-object p1

    .line 120
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v0, p1

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_6
    if-nez v0, :cond_7

    return-object p1

    :cond_7
    return-object v0
.end method

.method public static getEndRadius(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;I)I
    .locals 1

    .line 493
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v0

    .line 494
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/miui/home/recents/TaskViewUtils;->isSoscLaunchPosition(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 v0, 0x16

    :cond_1
    return v0
.end method

.method public static getEndRectF(Lcom/miui/home/recents/util/ClipAnimationHelper;I)Landroid/graphics/RectF;
    .locals 1

    .line 470
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 473
    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 478
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getTargetRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 475
    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSplitSingleSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 476
    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSplitSingleSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSplitSingleSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RectF;->offset(FF)V

    :goto_1
    return-object p1
.end method

.method public static getRecentsWindowAnimatorNew(Lcom/miui/home/recents/views/TaskView;ZI[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/views/RecentsView;IIZ)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 16

    move-object/from16 v0, p3

    move/from16 v10, p8

    .line 147
    new-instance v6, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 149
    new-instance v7, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    const-string v8, "TaskViewUtils"

    const/4 v11, 0x1

    const/4 v12, 0x0

    move/from16 v4, p7

    if-eq v4, v11, :cond_0

    if-nez p0, :cond_0

    const-string v0, "getRecentsWindowAnimatorNew error:taskView == null"

    .line 151
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    .line 154
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 155
    iget-object v3, v7, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v3, v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eqz p9, :cond_2

    .line 160
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v3

    iget-object v5, v7, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    iget-object v9, v7, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v9, v9, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 161
    invoke-virtual {v3, v5, v9}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->tempSaveOpenLeash(ILandroid/view/SurfaceControl;)V

    .line 165
    :cond_2
    new-instance v9, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 166
    invoke-virtual {v9, v11}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 167
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 169
    iget-object v5, v7, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    aget-object v1, v5, v1

    invoke-virtual {v9, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 170
    invoke-virtual {v9, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 171
    invoke-virtual {v9, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 172
    invoke-virtual {v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 174
    invoke-static {v10, v7, v0}, Lcom/miui/home/recents/TaskViewUtils;->filtOpeningTargets(ILcom/miui/home/recents/util/RemoteAnimationTargetSet;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v13

    .line 176
    iget-object v0, v13, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-nez v0, :cond_3

    const-string v0, "getRecentsWindowAnimatorNew: filterOpeningTargets.unfilteredApps == null"

    .line 177
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    .line 180
    :cond_3
    invoke-virtual {v9, v13, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSplitSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;I)V

    .line 182
    invoke-static {v9, v10}, Lcom/miui/home/recents/TaskViewUtils;->getEndRectF(Lcom/miui/home/recents/util/ClipAnimationHelper;I)Landroid/graphics/RectF;

    move-result-object v14

    move-object v0, v2

    move-object/from16 v1, p6

    move-object/from16 v2, p0

    move-object v3, v14

    move/from16 v4, p7

    move/from16 v5, p8

    .line 184
    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/TaskViewUtils;->initStartRectF(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v0, "getRecentsWindowAnimatorNew: startRectF is null"

    .line 186
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    .line 190
    :cond_4
    invoke-static {v7, v5, v14, v10}, Lcom/miui/home/recents/TaskViewUtils;->getStartRadius(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v8

    .line 192
    invoke-static {v7, v10}, Lcom/miui/home/recents/TaskViewUtils;->getEndRadius(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;I)I

    move-result v0

    int-to-float v15, v0

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    move-object v4, v13

    move-object v6, v14

    move v7, v8

    move v8, v15

    move/from16 v9, p1

    move/from16 v10, p8

    .line 194
    invoke-static/range {v0 .. v10}, Lcom/miui/home/recents/TaskViewUtils;->createSpringAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFZI)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIsOpenAnim(Z)V

    .line 207
    invoke-virtual {v0, v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIsFromRecent(Z)V

    .line 208
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    :goto_0
    return-object v12
.end method

.method public static getSoscLaunchPosition(Landroid/view/View;)I
    .locals 3

    .line 509
    invoke-static {p0}, Lcom/miui/home/recents/TaskViewUtils;->isLaunchPositionNormal(Landroid/view/View;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 513
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getState()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    if-ne p0, v0, :cond_2

    const/4 v0, 0x4

    .line 519
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoscLaunchPosition: soscState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", launchPosition = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TaskViewUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getSoscPredictPosition()I
    .locals 2

    .line 525
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    .line 527
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/RecentsSoscController;->getInstance()Lcom/miui/home/recents/RecentsSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscController;->getRecentStateHelp()Lcom/miui/home/recents/RecentsSoscStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsSoscStateHelper;->getPredictState()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x4

    :cond_1
    :goto_0
    return v1
.end method

.method private static getStartRadius(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F
    .locals 0

    .line 484
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    if-ne p3, p0, :cond_0

    const/high16 p0, 0x41b00000    # 22.0f

    return p0

    .line 487
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result p0

    int-to-float p0, p0

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p0, p3

    .line 488
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    mul-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p0, p1

    return p0
.end method

.method private static getTaskViewStartRectF(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    .line 263
    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/RectF;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p0, "TaskViewUtils"

    const-string p1, "getTaskViewStartRectF: startRectF is null"

    .line 265
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 269
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getRecentsRotation()I

    move-result p0

    const/4 p2, 0x0

    .line 271
    invoke-static {p0, p2, p1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getLastRotation()I

    move-result p0

    .line 274
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v0

    if-eq p0, v0, :cond_2

    .line 276
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 278
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    .line 279
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 278
    invoke-static {p0, v0, v2, p3, v1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformToRotation(IIIILandroid/graphics/Matrix;)V

    .line 280
    new-instance p0, Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/RectF;->left:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 281
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {p0, p3, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    invoke-static {v1, p0, p2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 284
    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static hideDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 436
    array-length v0, p0

    if-lez v0, :cond_3

    .line 437
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 438
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v4, 0x7f2

    if-ne v3, v4, :cond_2

    .line 439
    iget-object v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    new-instance v3, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    .line 444
    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->hide(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 445
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    goto :goto_2

    :cond_1
    :goto_1
    const-string v2, "TaskViewUtils"

    const-string v3, "hideDockDivider: target.leash is not valid"

    .line 440
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static initStartRectF(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .locals 4

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v3, 0x2

    if-ne p5, v3, :cond_3

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p5

    if-nez p5, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p5

    invoke-virtual {p5}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 228
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p5

    if-eqz p5, :cond_2

    if-ne p4, v0, :cond_1

    .line 230
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3e800000    # 0.25f

    mul-float/2addr p0, p1

    .line 231
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 232
    new-instance p2, Landroid/graphics/RectF;

    sub-float p3, p0, v2

    sub-float p4, p1, v2

    add-float/2addr p0, v2

    add-float/2addr p1, v2

    invoke-direct {p2, p3, p4, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2

    .line 234
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/TaskViewUtils;->getTaskViewStartRectF(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    .line 237
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskViewRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v3, 0x3

    if-ne p5, v3, :cond_8

    .line 240
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p5

    const/high16 v3, 0x3f400000    # 0.75f

    if-nez p5, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p5

    invoke-virtual {p5}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p5

    if-eqz p5, :cond_4

    goto :goto_0

    .line 253
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenShortSize()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    .line 254
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenLongSize()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    .line 255
    new-instance p2, Landroid/graphics/RectF;

    sub-float p3, p0, v2

    sub-float p4, p1, v2

    add-float/2addr p0, v2

    add-float/2addr p1, v2

    invoke-direct {p2, p3, p4, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2

    .line 241
    :cond_5
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p5

    if-eqz p5, :cond_6

    .line 242
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->getFloatingTaskViewRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_6
    if-ne p4, v0, :cond_7

    .line 245
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    .line 246
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 247
    new-instance p2, Landroid/graphics/RectF;

    sub-float p3, p0, v2

    sub-float p4, p1, v2

    add-float/2addr p0, v2

    add-float/2addr p1, v2

    invoke-direct {p2, p3, p4, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2

    .line 249
    :cond_7
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/TaskViewUtils;->getTaskViewStartRectF(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    .line 258
    :cond_8
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/recents/TaskViewUtils;->getTaskViewStartRectF(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private static isClipFromLeftOrTop(I)Z
    .locals 1

    .line 461
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 462
    invoke-static {}, Lcom/miui/home/recents/views/FloatingTaskView;->isFloatingTaskViewOnRight()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isLaunchPositionNormal(Landroid/view/View;)Z
    .locals 1

    .line 534
    instance-of v0, p0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->isPairIcon()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getHalfSplitAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/recents/TaskViewUtils;->isPairIconContainAPP(Lcom/miui/home/launcher/ShortcutIcon;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isPairIconContainAPP(Lcom/miui/home/launcher/ShortcutIcon;Ljava/lang/String;)Z
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getExtraPairPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSoscLaunchPosition(I)Z
    .locals 2

    .line 501
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isVerticalClip(I)Z
    .locals 1

    .line 452
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$createSpringAnim$0(Lcom/miui/home/recents/views/TaskView;FZILcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 9

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    const v1, 0x3ecccccd    # 0.4f

    sub-float v2, v1, p1

    div-float/2addr v2, v1

    .line 323
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 324
    invoke-virtual {p0, v0, v0, v8}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    move-object v3, p4

    move-object v4, p0

    move-object v5, p5

    move-object v6, p6

    move v7, p1

    .line 328
    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/views/RecentsView;->alignTaskViewWhenTaskLaunch(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    sub-float p1, v2, p1

    .line 330
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 331
    invoke-virtual {p4, p0, p1}, Lcom/miui/home/recents/views/RecentsView;->hideTaskViews(Lcom/miui/home/recents/views/TaskView;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$createSpringAnim$1(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZZIZLcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;ZLandroid/graphics/RectF;FFF)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p12

    move/from16 v4, p14

    move v5, p3

    move v6, p4

    move v7, p5

    .line 317
    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/TaskViewUtils;->updateOpenAnimRecent(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FZZI)V

    if-nez p6, :cond_0

    .line 321
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v9, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$fiv1dYDbjmKMsTaSKub35wMx6rY;

    move-object v1, v9

    move-object/from16 v2, p7

    move/from16 v3, p13

    move/from16 v4, p8

    move v5, p5

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p12

    invoke-direct/range {v1 .. v8}, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$fiv1dYDbjmKMsTaSKub35wMx6rY;-><init>(Lcom/miui/home/recents/views/TaskView;FZILcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v9}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p11, :cond_1

    .line 338
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v3, p13

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 339
    invoke-virtual {p2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    const/4 v3, 0x1

    .line 338
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    :cond_1
    return-void
.end method

.method public static showAppearedTaskTargets([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 6

    .line 421
    new-instance v0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    .line 422
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    const-string v4, "TaskViewUtils"

    if-nez v3, :cond_0

    const-string v3, "showAppearedTaskTargets: appearedTaskTarget is null"

    .line 424
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 427
    :cond_0
    iget-object v5, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 431
    :cond_1
    iget-object v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    move-result-object v4

    iget-object v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v3, "showAppearedTaskTargets: appearedTaskTarget is not valid"

    .line 428
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static showDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 405
    array-length v0, p0

    if-lez v0, :cond_3

    .line 406
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 407
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v4, 0x7f2

    if-ne v3, v4, :cond_2

    .line 408
    iget-object v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    new-instance v3, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    .line 413
    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    .line 414
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    goto :goto_2

    :cond_1
    :goto_1
    const-string v2, "TaskViewUtils"

    const-string v3, "showDockDivider: target.leash is not valid"

    .line 409
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static updateOpenAnimRecent(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FZZI)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 395
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    .line 396
    invoke-virtual {v0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    const/4 v0, 0x0

    .line 397
    invoke-virtual {p3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    .line 398
    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    .line 399
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    .line 400
    invoke-virtual {p3, p6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipFromLeftOrTop(Z)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    const/4 p3, 0x0

    .line 401
    invoke-virtual {p1, p2, p0, p3, p7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;I)Landroid/graphics/RectF;

    return-void
.end method
