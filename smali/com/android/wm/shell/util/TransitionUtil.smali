.class public Lcom/android/wm/shell/util/TransitionUtil;
.super Ljava/lang/Object;
.source "TransitionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;
    }
.end annotation


# static fields
.field public static final FLAG_IS_DIVIDER_BAR:I

.field public static final FLAG_TRANSIT_IN_SOSC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/android/wm/shell/util/TransitionUtil;->getDividerBarFlag()I

    move-result v0

    sput v0, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_IS_DIVIDER_BAR:I

    .line 76
    invoke-static {}, Lcom/android/wm/shell/util/TransitionUtil;->getTransitInSoscFlag()I

    move-result v0

    sput v0, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    return-void
.end method

.method public static applySync(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    return-void
.end method

.method private static createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;Z)Landroid/view/SurfaceControl;
    .locals 13

    move-object/from16 v7, p3

    .line 314
    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v1

    .line 315
    invoke-static {p1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v8

    .line 316
    invoke-virtual {v8}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v8}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v2

    const-string v3, ""

    const/4 v0, 0x0

    const-string v4, "TransitionUtil"

    if-eqz p4, :cond_2

    .line 327
    :try_start_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "get key fail"

    .line 329
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getLeashFromCache(Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_1

    .line 333
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 334
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->containsTaskId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getOpenLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 336
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "reuse openLeash"

    .line 337
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 342
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getRoot()Landroid/view/SurfaceControl;

    move-result-object v5

    move-object v12, v3

    move-object v3, v0

    move-object v0, v5

    move-object v5, v12

    goto :goto_1

    :cond_2
    move-object v5, v3

    move-object v3, v0

    :goto_1
    if-nez v0, :cond_3

    .line 345
    invoke-static {v8, v1}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;Lcom/android/hideapi/TransitionInfoExpose;)I

    move-result v0

    .line 346
    invoke-virtual {v1, v0}, Lcom/android/hideapi/TransitionInfoExpose;->getRoot(I)Lcom/android/hideapi/TransitionInfoExpose$RootExpose;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 348
    :cond_3
    invoke-virtual {v7, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rootLeash = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v8}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v3, :cond_5

    .line 352
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 368
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get reuse leash = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", key = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    move v6, v10

    goto :goto_4

    :cond_5
    :goto_2
    const/4 v3, 0x1

    .line 354
    invoke-virtual {v2, v5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->removeLeashFromCache(Ljava/lang/String;)Landroid/view/SurfaceControl;

    .line 355
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TL_"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v9}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_transition-leash"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 355
    invoke-static {v4}, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;->box(Landroid/view/SurfaceControl$Builder;)Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;

    move-result-object v4

    .line 357
    invoke-virtual {v4}, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;->setContainerLayer()Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;->unbox()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 359
    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 360
    invoke-static {v0, v10}, Lcom/android/wm/shell/util/TransitionUtil;->setHidden(Landroid/view/SurfaceControl$Builder;Z)Landroid/view/SurfaceControl$Builder;

    .line 361
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz p4, :cond_6

    .line 363
    invoke-virtual {v2, v5, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->saveLeash(Ljava/lang/String;Landroid/view/SurfaceControl;)V

    goto :goto_3

    .line 365
    :cond_6
    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->tempSaveLeash(Landroid/view/SurfaceControl;)V

    :goto_3
    move v6, v3

    .line 371
    :goto_4
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v3, v1, p2

    move-object v1, v0

    move-object v2, p1

    move-object v4, p0

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/util/TransitionUtil;->setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 372
    invoke-virtual {v7, v9, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 373
    invoke-virtual {v7, v9, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 374
    invoke-virtual {v7, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 375
    invoke-static {v8}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    .line 378
    invoke-virtual {v7, v9, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 380
    :cond_7
    invoke-virtual {v7, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method private static getDividerBarFlag()I
    .locals 3

    const-string v0, "android.window.TransitionInfo"

    .line 102
    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "FLAG_FIRST_CUSTOM"

    .line 101
    invoke-static {v0, v2, v1}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "TransitionUtil"

    const-string v1, "getDividerBarFlag: return null from reflection, use default value 0"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static getDividerTarget(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;Landroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;
    .locals 18

    move-object/from16 v2, p1

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->newModeToLegacyMode(I)I

    move-result v1

    new-instance v0, Landroid/graphics/Point;

    move-object v7, v0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    new-instance v0, Landroid/app/WindowConfiguration;

    move-object v10, v0

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7f2

    const-string v17, ""

    .line 495
    invoke-static/range {v0 .. v17}, Lcom/android/wm/shell/util/TransitionUtil;->newTargetObject(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZILjava/lang/String;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0
.end method

.method private static getTransitInSoscFlag()I
    .locals 3

    const-string v0, "android.window.TransitionInfo"

    .line 115
    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "FLAG_TRANSIT_IN_SOSC"

    .line 114
    invoke-static {v0, v2, v1}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "TransitionUtil"

    const-string v1, "getTransitInSoscFlag: return null from reflection, use default value 0"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isAppOpening(Landroid/window/TransitionInfo;)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v0

    move v4, v1

    move-object v5, v2

    move v1, v3

    move v2, v1

    .line 613
    :goto_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ge v1, v6, :cond_6

    .line 614
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 615
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    .line 616
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    const/4 v11, 0x2

    if-eqz v10, :cond_0

    .line 618
    invoke-static {v10}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v10

    if-ne v10, v11, :cond_0

    move-object v5, v6

    move v4, v9

    goto :goto_4

    :cond_0
    const/4 v10, 0x4

    if-nez v2, :cond_3

    if-eq v9, v8, :cond_1

    if-ne v9, v7, :cond_2

    .line 624
    :cond_1
    invoke-virtual {v6, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v8

    :goto_2
    if-nez v3, :cond_5

    if-ne v9, v11, :cond_4

    .line 626
    invoke-virtual {v6, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move v8, v0

    :cond_5
    :goto_3
    move v3, v8

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-ne v4, v7, :cond_7

    return v8

    :cond_7
    if-eqz v5, :cond_8

    .line 637
    invoke-static {v4, v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(ILandroid/window/TransitionInfo$Change;)Z

    move-result p0

    xor-int/2addr p0, v8

    return p0

    .line 640
    :cond_8
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 641
    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.home"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 642
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p0

    xor-int/2addr p0, v8

    return p0

    .line 644
    :cond_9
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p0

    return p0
.end method

.method public static isClosingType(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDividerBar(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_IS_DIVIDER_BAR:I

    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHome(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isNonApp(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    .line 158
    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x200

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isOpeningType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const v1, 0x7ffffffc

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x14

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isOpeningType(ILandroid/window/TransitionInfo$Change;)Z
    .locals 1

    .line 90
    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_1

    const/high16 p0, 0x100000

    .line 94
    invoke-virtual {p1, p0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isOrderOnly(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWallpaper(Landroid/window/TransitionInfo$Change;)Z
    .locals 1

    .line 150
    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static newModeToLegacyMode(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-static {p0, p1, p2, v0}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;Z)Landroid/view/RemoteAnimationTarget;
    .locals 22

    .line 416
    invoke-static/range {p0 .. p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v0

    .line 417
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v1, p2

    .line 418
    invoke-static {v0, v1}, Lcom/android/wm/shell/util/TransitionUtil;->getDividerTarget(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;Landroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v1, p2

    .line 426
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    const/16 v20, 0x1

    if-eqz v13, :cond_1

    .line 428
    iget v2, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 429
    iget-boolean v3, v13, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    xor-int/lit8 v3, v3, 0x1

    .line 430
    iget-object v4, v13, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v4}, Lmiui/content/res/ConfigurationExpose;->box(Ljava/lang/Object;)Lmiui/content/res/ConfigurationExpose;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/content/res/ConfigurationExpose;->getWindowConfiguration()Lmiui/content/res/WindowConfigurationExpose;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/content/res/WindowConfigurationExpose;->unbox()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WindowConfiguration;

    .line 431
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getPackageNameFromTaskInfo(Landroid/app/TaskInfo;)Ljava/lang/String;

    move-result-object v5

    move/from16 v16, v3

    move-object v12, v4

    move-object/from16 v19, v5

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 435
    new-instance v3, Landroid/app/WindowConfiguration;

    invoke-direct {v3}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v4, 0x0

    move-object v12, v3

    move-object/from16 v19, v4

    move/from16 v16, v20

    .line 439
    :goto_0
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 440
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 444
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->newModeToLegacyMode(I)I

    move-result v3

    const/4 v8, 0x0

    if-nez p3, :cond_3

    .line 448
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v8

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v5, v20

    :goto_2
    const/4 v6, 0x0

    new-instance v4, Landroid/graphics/Rect;

    move-object v7, v4

    invoke-direct {v4, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    new-instance v4, Landroid/graphics/Rect;

    move-object v11, v4

    .line 455
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {v4, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v14, 0x0

    new-instance v4, Landroid/graphics/Rect;

    move-object v15, v4

    .line 459
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 461
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getAllowEnterPip()Z

    move-result v17

    const/16 v18, -0x1

    move-object/from16 v4, p2

    const/4 v1, 0x0

    move/from16 v8, p1

    move-object/from16 v21, v13

    move/from16 v13, v16

    move-object/from16 v16, v21

    .line 442
    invoke-static/range {v2 .. v19}, Lcom/android/wm/shell/util/TransitionUtil;->newTargetObject(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZILjava/lang/String;)Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    .line 465
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_4

    move/from16 v1, v20

    :cond_4
    invoke-static {v2, v1}, Lcom/android/wm/shell/util/TransitionUtil;->setWillShowImeOnTarget(Landroid/view/RemoteAnimationTarget;Z)V

    .line 466
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartRotation()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/android/wm/shell/util/TransitionUtil;->setRotationChange(Landroid/view/RemoteAnimationTarget;I)V

    .line 467
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getBackgroundColor()I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/wm/shell/util/TransitionUtil;->setBackgroundColor(Landroid/view/RemoteAnimationTarget;I)V

    return-object v2
.end method

.method public static newTarget(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Z)Landroid/view/RemoteAnimationTarget;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo$Change;",
            "I",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;Z)",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    .line 393
    invoke-static {p2, p0, p1, p3, p5}, Lcom/android/wm/shell/util/TransitionUtil;->createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;Z)Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p4, :cond_0

    .line 395
    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p3

    invoke-virtual {p4, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/util/TransitionUtil;->newTarget(Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl;)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method private static newTargetObject(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZILjava/lang/String;)Landroid/view/RemoteAnimationTarget;
    .locals 19

    .line 536
    const-class v0, Landroid/view/RemoteAnimationTarget;

    const/16 v1, 0x12

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/view/SurfaceControl;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, Landroid/graphics/Rect;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-class v3, Landroid/graphics/Rect;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const-class v3, Landroid/graphics/Point;

    const/4 v11, 0x7

    aput-object v3, v2, v11

    const-class v3, Landroid/graphics/Rect;

    const/16 v12, 0x8

    aput-object v3, v2, v12

    const-class v3, Landroid/graphics/Rect;

    const/16 v13, 0x9

    aput-object v3, v2, v13

    const-class v3, Landroid/app/WindowConfiguration;

    const/16 v14, 0xa

    aput-object v3, v2, v14

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v15, 0xb

    aput-object v3, v2, v15

    const-class v3, Landroid/view/SurfaceControl;

    const/16 v16, 0xc

    aput-object v3, v2, v16

    const-class v3, Landroid/graphics/Rect;

    const/16 v17, 0xd

    aput-object v3, v2, v17

    const-class v3, Landroid/app/ActivityManager$RunningTaskInfo;

    const/16 v18, 0xe

    aput-object v3, v2, v18

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v18, 0xf

    aput-object v3, v2, v18

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x10

    aput-object v3, v2, v18

    const-class v3, Ljava/lang/String;

    const/16 v18, 0x11

    aput-object v3, v2, v18

    new-array v1, v1, [Ljava/lang/Object;

    .line 557
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    .line 558
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    aput-object p2, v1, v6

    .line 560
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v7

    aput-object p4, v1, v8

    aput-object p5, v1, v9

    .line 563
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v10

    aput-object p7, v1, v11

    aput-object p8, v1, v12

    aput-object p9, v1, v13

    aput-object p10, v1, v14

    .line 568
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v15

    aput-object p12, v1, v16

    aput-object p13, v1, v17

    const/16 v3, 0xe

    aput-object p14, v1, v3

    .line 572
    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 573
    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v1, v4

    const/16 v3, 0x11

    aput-object p17, v1, v3

    .line 536
    invoke-static {v0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public static reorderWindow(Landroid/window/TransitionInfo$Change;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    const-string v0, "TransitionUtil"

    if-nez p1, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 592
    :try_start_0
    const-class v1, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 593
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerToken;

    .line 594
    invoke-virtual {p1, v1}, Landroid/window/WindowContainerTransaction;->restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 595
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get WindowContainerToken success wct = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wct as binder = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", container = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", container as binder = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 595
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "get WindowContainerToken fail"

    .line 600
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static rootIndexFor(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;Lcom/android/hideapi/TransitionInfoExpose;)I
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/hideapi/TransitionInfoExpose;->findRootIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/hideapi/TransitionInfoExpose;->findRootIndex(I)I

    move-result p0

    if-ltz p0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static setBackgroundColor(Landroid/view/RemoteAnimationTarget;I)V
    .locals 2

    .line 490
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "backgroundColor"

    invoke-static {p0, v1, v0, p1}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private static setHidden(Landroid/view/SurfaceControl$Builder;Z)Landroid/view/SurfaceControl$Builder;
    .locals 7

    .line 578
    const-class v0, Landroid/view/SurfaceControl$Builder;

    const-class v3, Landroid/view/SurfaceControl$Builder;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 583
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v5

    const-string v2, "setHidden"

    move-object v1, p0

    move-object v5, v6

    .line 578
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Builder;

    return-object p0
.end method

.method private static setRotationChange(Landroid/view/RemoteAnimationTarget;I)V
    .locals 7

    .line 481
    const-class v0, Landroid/view/RemoteAnimationTarget;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 486
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    const-string v2, "setRotationChange"

    move-object v1, p0

    move-object v5, v6

    .line 481
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static setWillShowImeOnTarget(Landroid/view/RemoteAnimationTarget;Z)V
    .locals 7

    .line 472
    const-class v0, Landroid/view/RemoteAnimationTarget;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 477
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v5

    const-string v2, "setWillShowImeOnTarget"

    move-object v1, p0

    move-object v5, v6

    .line 472
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/shared/recents/utilities/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 9

    .line 241
    invoke-static {p3}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v0

    .line 242
    invoke-static {p1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v1

    .line 243
    invoke-static {p3}, Lcom/android/wm/shell/util/TransitionUtil;->isAppOpening(Landroid/window/TransitionInfo;)Z

    move-result p3

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupLeash isAppOpening = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransitionUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 248
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v4

    .line 250
    invoke-static {v1, v0}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;Lcom/android/hideapi/TransitionInfoExpose;)I

    move-result v5

    const/4 v6, 0x1

    if-eqz p5, :cond_1

    if-ne v4, v6, :cond_0

    .line 253
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p5

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object p5

    .line 254
    :goto_0
    iget v7, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v5}, Lcom/android/hideapi/TransitionInfoExpose;->getRoot(I)Lcom/android/hideapi/TransitionInfoExpose$RootExpose;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;->getOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget p5, p5, Landroid/graphics/Rect;->top:I

    .line 255
    invoke-virtual {v0, v5}, Lcom/android/hideapi/TransitionInfoExpose;->getRoot(I)Lcom/android/hideapi/TransitionInfoExpose$RootExpose;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;->getOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr p5, v5

    int-to-float p5, p5

    .line 254
    invoke-virtual {p4, p0, v7, p5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 259
    :cond_1
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isDividerBar(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result p5

    const/4 v5, 0x0

    const-string v7, ", layer = "

    if-eqz p5, :cond_3

    .line 260
    invoke-static {v4, p1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(ILandroid/window/TransitionInfo$Change;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p4, p0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 265
    :cond_2
    invoke-virtual {p4, p0, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setLayer leash1 = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p4, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 272
    :cond_3
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result p5

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_6

    if-eq v4, v6, :cond_5

    const/4 p1, 0x3

    if-ne v4, p1, :cond_4

    goto :goto_1

    .line 278
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setLayer leash3 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p3, v2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p4, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_2

    .line 275
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setLayer leash2 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p3, v2

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    add-int/2addr p5, p3

    sub-int/2addr p5, p2

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p3, p1

    sub-int/2addr p3, p2

    invoke-virtual {p4, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_2

    .line 281
    :cond_6
    invoke-static {v4, p1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(ILandroid/window/TransitionInfo$Change;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p3, :cond_7

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setLayer leash4 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p3, v2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 285
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_b

    .line 287
    invoke-virtual {p4, p0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_2

    .line 291
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setLayer leash5 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, p2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_2

    .line 294
    :cond_8
    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz p3, :cond_9

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setLayer leash6 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, p2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 301
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setLayer leash7 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p3, v2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 305
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setLayer leash8 = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p3, v2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v0}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_b
    :goto_2
    return-void
.end method
