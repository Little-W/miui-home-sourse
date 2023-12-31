.class Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;
.super Landroid/window/IRemoteTransition$Stub;
.source "RemoteAnimationAdapterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->wrapRemoteTransition(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Landroid/window/IRemoteTransition$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

.field final synthetic val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    .line 165
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    return-void
.end method

.method private cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v1, "no home or other case, finish main anim, merge anim to main anim"

    .line 569
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 571
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    .line 573
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->stopRunningAnim()V

    return-void
.end method

.method public static synthetic lambda$WsNc0mGffvLlXnkhWylvyWkm63Q(Landroid/window/TransitionInfo$Change;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$mergeAnimation$1()V
    .locals 2

    const-string v0, "ActivityOptionsCompat"

    const-string v1, "merge open anim call end runnable"

    .line 549
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public synthetic lambda$startAnimation$0$RemoteAnimationAdapterCompat$2(Landroid/os/IBinder;)V
    .locals 3

    .line 305
    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->USE_CONNECT_ANIM:Z

    const-string v1, "ActivityOptionsCompat"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    .line 306
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->isConnectAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "before onAnimationFinished, but connect anim is running, wait for connect anim finish to call, return"

    .line 307
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMergeFinishCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "before onAnimationFinished, but has merge finish callback, return"

    .line 312
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before execute token = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getMainToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 318
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    :cond_2
    return-void
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "RemoteAnimationAdapterCompat"

    const-string v6, "HomeShellTransition IRemoteTransition mergeAnimation"

    .line 329
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->access$000(Landroid/window/TransitionInfo;)V

    .line 333
    iget-object v5, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 334
    :try_start_0
    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->onFrameWorkAnimCall()V

    .line 335
    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->isWaitFinishMainAnim()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v9, 0x1

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 338
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_2

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/TransitionInfo$Change;

    .line 340
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    const-string v12, "RemoteAnimationAdapterCompat"

    .line 341
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mergeAnimation isWaitFinishMainAnim, mode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " ,taskInfo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 341
    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v11, v9, :cond_0

    if-eq v11, v7, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-nez v10, :cond_1

    move v6, v9

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const-string v7, "RemoteAnimationAdapterCompat"

    .line 354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mergeAnimation needHandler = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    .line 356
    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-static/range {p2 .. p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 357
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v2, v0, v4}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    if-eqz v3, :cond_3

    .line 359
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mergeStartT(Landroid/view/SurfaceControl$Transaction;)V

    .line 361
    :cond_3
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->finishMergeCallback()V

    .line 362
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->checkHandlerRunnable()V

    goto :goto_2

    .line 364
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 366
    :goto_2
    monitor-exit v5

    return-void

    .line 368
    :cond_5
    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMainFinishCallback()Z

    move-result v6

    if-nez v6, :cond_6

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v1, "mergeAnimation but main anim is finish, abort"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 372
    monitor-exit v5

    return-void

    .line 375
    :cond_6
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v6

    .line 376
    invoke-virtual {v6, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getIRecentsAnimationController(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;

    move-result-object v11

    const-string v6, "RemoteAnimationAdapterCompat"

    .line 377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getIRecentsAnimationController = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    if-nez v11, :cond_c

    .line 380
    iget-object v10, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v10}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->lastAnimIsOpenAppAnim()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->isAppOpening(Landroid/window/TransitionInfo;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v10}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getOpenLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    if-eqz v10, :cond_c

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v8, "lastAnimIsOpenAppAnim"

    .line 381
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 383
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    const-string v11, "RemoteAnimationAdapterCompat"

    .line 384
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "change = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_8

    .line 386
    invoke-static {v10}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v11

    if-ne v11, v9, :cond_7

    .line 387
    :cond_8
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-eq v11, v9, :cond_9

    if-eq v11, v7, :cond_9

    goto :goto_3

    .line 390
    :cond_9
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    if-eqz v10, :cond_a

    .line 392
    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v11, "RemoteAnimationAdapterCompat"

    const-string v12, "is open"

    .line 393
    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v11, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v11, v10}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->containsTaskId(I)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "RemoteAnimationAdapterCompat"

    const-string v12, "!containsTaskId"

    .line 395
    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v11, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v11}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getOpenLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v3, v8, v11}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 397
    iget-object v11, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v11, v10}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addTaskId(I)V

    :cond_a
    const/high16 v10, 0x3f800000    # 1.0f

    .line 400
    invoke-virtual {v3, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 401
    invoke-virtual {v3, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    .line 407
    :cond_b
    invoke-virtual {v3, v9}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :try_start_1
    invoke-interface {v4, v6, v6}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v3, "special case, onTransitionFinished  end"

    .line 410
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "RemoteAnimationAdapterCompat"

    const-string v4, "special case, onTransitionFinished fail"

    .line 412
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    :goto_4
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-static/range {p2 .. p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 415
    monitor-exit v5

    return-void

    .line 417
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v15

    .line 423
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 425
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v7

    if-ge v12, v7, :cond_16

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 427
    sget v9, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    invoke-virtual {v7, v9}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v7, "RemoteAnimationAdapterCompat"

    const-string v9, "has flag FLAG_TRANSIT_IN_SOSC"

    .line 428
    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v6

    move/from16 v18, v8

    move-object/from16 v22, v11

    move/from16 v20, v13

    const/4 v6, 0x1

    goto/16 :goto_b

    .line 432
    :cond_d
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    move/from16 v18, v8

    .line 433
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    if-nez v8, :cond_e

    const-string v8, "RemoteAnimationAdapterCompat"

    move/from16 v19, v6

    .line 435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v13

    const-string v13, "i = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", changes leash = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", change = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", taskInfo == null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v11

    move/from16 v8, v18

    move/from16 v6, v19

    move/from16 v13, v20

    goto/16 :goto_a

    :cond_e
    move/from16 v19, v6

    move/from16 v20, v13

    .line 440
    invoke-static {v8}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v6

    const/4 v13, 0x4

    .line 441
    invoke-virtual {v7, v13}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v13

    if-nez v14, :cond_10

    if-eqz v13, :cond_f

    goto :goto_6

    :cond_f
    const/4 v13, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v13, 0x1

    :goto_7
    const-string v14, "RemoteAnimationAdapterCompat"

    move/from16 v21, v13

    .line 443
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v22, v11

    const-string v11, ", check isClosingType type = "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mode = "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", taskId = "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", changes leash = "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", change = "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 443
    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x2

    const/4 v13, 0x1

    if-eq v6, v13, :cond_12

    if-eq v6, v11, :cond_11

    .line 475
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    move/from16 v8, v18

    move/from16 v6, v19

    move/from16 v13, v20

    move/from16 v14, v21

    goto :goto_a

    :cond_11
    const-string v6, "RemoteAnimationAdapterCompat"

    const-string v8, "has home"

    .line 469
    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v7

    move v6, v9

    move/from16 v8, v18

    move/from16 v14, v21

    const/4 v13, 0x1

    goto :goto_a

    :cond_12
    if-eq v9, v11, :cond_14

    const/4 v6, 0x3

    if-eq v9, v6, :cond_13

    goto :goto_9

    .line 456
    :cond_13
    iget v6, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v8, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getTaskId()I

    move-result v8

    if-ne v6, v8, :cond_15

    .line 457
    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v6, v15}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 458
    iget-object v6, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v6, v0, v4}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 459
    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-static {v0, v2, v7, v3, v1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->access$200(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    .line 460
    monitor-exit v5

    return-void

    :cond_14
    const/16 v18, 0x1

    .line 466
    :cond_15
    :goto_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :goto_a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v22

    const/4 v7, 0x3

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_16
    move/from16 v19, v6

    move/from16 v18, v8

    move-object/from16 v22, v11

    move/from16 v20, v13

    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_17

    .line 480
    invoke-direct {v1, v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;)V

    .line 481
    monitor-exit v5

    return-void

    :cond_17
    if-nez v22, :cond_19

    if-eqz v20, :cond_18

    move/from16 v6, v19

    .line 487
    invoke-static {v6, v10, v14}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->access$300(ILjava/util/List;Z)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 488
    :cond_18
    invoke-direct {v1, v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;)V

    .line 489
    monitor-exit v5

    return-void

    :cond_19
    move/from16 v6, v19

    if-nez v20, :cond_1b

    .line 493
    iget-object v7, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->findHomeSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    const-string v8, "RemoteAnimationAdapterCompat"

    .line 494
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SP_case, has controller, find home surfaceControl = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1a

    .line 496
    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v9, 0x1

    .line 497
    invoke-virtual {v8, v7, v9}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 498
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v7

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->addToFinishTransaction(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_c

    .line 500
    :cond_1a
    invoke-direct {v1, v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->cancelAnimAndFinishMain(Landroid/view/SurfaceControl$Transaction;)V

    .line 501
    monitor-exit v5

    return-void

    :cond_1b
    :goto_c
    const-string v7, "RemoteAnimationAdapterCompat"

    .line 505
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IRemoteTransition mergeAnimation isClosingType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v18

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", hasHome = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v20

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v7, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v7, v9}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setActivityIsCloseType(Z)V

    .line 508
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 509
    new-instance v8, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    invoke-direct {v8, v2}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;-><init>(Landroid/window/TransitionInfo;)V

    const-string v9, "RemoteAnimationAdapterCompat"

    const-string v10, "before wrap app"

    .line 510
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object v9

    new-instance v10, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v10}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    const/4 v11, 0x1

    .line 511
    invoke-static {v9, v3, v7, v10, v11}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;Z)[Landroid/view/RemoteAnimationTarget;

    move-result-object v12

    const-string v9, "RemoteAnimationAdapterCompat"

    const-string v10, "before wrap wallpaper"

    .line 513
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$WsNc0mGffvLlXnkhWylvyWkm63Q;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$WsNc0mGffvLlXnkhWylvyWkm63Q;

    .line 514
    invoke-static {v9, v3, v7, v10}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v13

    const/4 v9, 0x0

    .line 517
    invoke-static {v8, v9, v3, v7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v27

    const/4 v8, 0x1

    .line 518
    invoke-virtual {v3, v8}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 519
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 521
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 522
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    if-nez v22, :cond_21

    const/4 v0, 0x3

    if-eq v6, v0, :cond_1d

    const/4 v0, 0x1

    if-eq v6, v0, :cond_1d

    const/4 v0, 0x6

    if-ne v6, v0, :cond_1c

    const/high16 v0, 0x100000

    move-object/from16 v2, v16

    .line 526
    invoke-virtual {v2, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_1c
    const/4 v9, 0x1

    :cond_1d
    const-string v0, "RemoteAnimationAdapterCompat"

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpenApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", homeMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {v12}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v25

    if-eqz v9, :cond_1f

    .line 531
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getOpenAnimationRunnerCompat()Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v2, "getOpenAnimationRunnerCompat fail, finish main anim to make merge anim to main"

    .line 533
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 536
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    .line 537
    monitor-exit v5

    return-void

    :cond_1e
    const-string v2, "RemoteAnimationAdapterCompat"

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get open runner = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 541
    :cond_1f
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getCloseAnimationRunnerCompat()Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    move-result-object v0

    const-string v2, "RemoteAnimationAdapterCompat"

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get close runner = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    move-object/from16 v23, v0

    if-nez v23, :cond_20

    .line 545
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    goto :goto_e

    :cond_20
    const/16 v24, 0x0

    .line 548
    invoke-static {v13}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v26

    sget-object v28, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$Rk5vWtqdl9_Bs8w9sTmBsmYvK8I;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$Rk5vWtqdl9_Bs8w9sTmBsmYvK8I;

    .line 547
    invoke-interface/range {v23 .. v28}, Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    :goto_e
    move-object v0, v15

    goto :goto_f

    .line 554
    :cond_21
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getRecentsAnimationListenerImpl()Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    .line 556
    invoke-interface {v0, v2}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->setIsMergedAnimation(Z)V

    .line 558
    :cond_22
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 559
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v3

    .line 560
    invoke-virtual {v3, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->initIRecentsAnimationRunnerAtLeastS(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;

    move-result-object v10

    move-object/from16 v11, v22

    move-object v14, v2

    move-object v0, v15

    move-object v15, v2

    .line 561
    invoke-interface/range {v10 .. v15}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 563
    :goto_f
    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v1, "IRemoteTransition mergeAnimation end"

    .line 564
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    const-string v3, "RemoteAnimationAdapterCompat"

    const-string v4, "HomeShellTransition IRemoteTransition startAnimation"

    .line 171
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->access$000(Landroid/window/TransitionInfo;)V

    .line 173
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 174
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->clearTempSaveOpenLeash()V

    .line 175
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->onFrameWorkAnimCall()V

    .line 176
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setConnectAnimRunning(Z)V

    .line 177
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->access$100(Landroid/window/TransitionInfo;)Z

    move-result v3

    const-string v5, "RemoteAnimationAdapterCompat"

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAnimation token = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", isClosingType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", runner = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v5, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->clearLeashMap()V

    .line 182
    iget-object v5, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v5, v3}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setActivityIsCloseType(Z)V

    .line 183
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-object/from16 v5, p4

    invoke-virtual {v3, v1, v5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setMainFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 184
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    .line 185
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setRoot(Landroid/view/SurfaceControl;)V

    .line 186
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 187
    new-instance v3, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    invoke-direct {v3, v2}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;-><init>(Landroid/window/TransitionInfo;)V

    const/4 v11, 0x1

    .line 189
    invoke-static {v3, v8, v10, v11}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Z)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v14

    .line 191
    invoke-static {v3, v11, v8, v10}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v15

    .line 193
    invoke-static {v3, v4, v8, v10}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v16

    .line 203
    invoke-static/range {p2 .. p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v12

    .line 204
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v2, v12}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 205
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    .line 206
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v17, v4

    move/from16 v20, v17

    move/from16 v18, v5

    move/from16 v19, v18

    move-object v7, v6

    move-object v13, v7

    move/from16 v6, v20

    :goto_0
    if-ltz v3, :cond_6

    .line 207
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    .line 209
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_4

    .line 210
    :cond_0
    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isHome(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v5

    if-eq v5, v11, :cond_2

    .line 212
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    .line 213
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    const/high16 v5, 0x100000

    .line 214
    invoke-virtual {v4, v5}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v20, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v20, v11

    .line 216
    :goto_2
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int v6, v5, v3

    move-object v13, v4

    goto :goto_3

    .line 217
    :cond_3
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    move-object v7, v4

    .line 220
    :cond_4
    :goto_3
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v5

    if-ltz v5, :cond_5

    .line 221
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartRotation()I

    move-result v11

    if-eq v5, v11, :cond_5

    .line 222
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartRotation()I

    move-result v11

    sub-int v17, v5, v11

    .line 223
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 224
    invoke-virtual {v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move/from16 v19, v4

    move/from16 v18, v5

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x3

    .line 229
    new-instance v11, Lcom/android/wm/shell/util/CounterRotator;

    invoke-direct {v11}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    .line 230
    new-instance v4, Lcom/android/wm/shell/util/CounterRotator;

    invoke-direct {v4}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    if-eqz v13, :cond_8

    if-eqz v17, :cond_8

    .line 231
    invoke-virtual {v13}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 232
    invoke-virtual {v13}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/hideapi/TransitionInfoExpose;->getChange(Landroid/window/WindowContainerToken;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 234
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v21

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 p2, v4

    move-object/from16 v4, v21

    move/from16 v21, v5

    move/from16 v5, v17

    move v1, v6

    move/from16 v6, v18

    move-object/from16 v22, v14

    move-object v14, v7

    move/from16 v7, v19

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_5

    :cond_7
    move-object/from16 p2, v4

    move/from16 v21, v5

    move v1, v6

    move-object/from16 v22, v14

    move-object v14, v7

    const-string v2, "RemoteAnimationAdapterCompat"

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v13}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but it\'s not in info."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_5
    invoke-virtual {v11}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 241
    invoke-virtual {v11}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v8, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6

    :cond_8
    move-object/from16 p2, v4

    move/from16 v21, v5

    move-object/from16 v22, v14

    move-object v14, v7

    :cond_9
    :goto_6
    if-eqz v20, :cond_e

    .line 246
    invoke-virtual {v11}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 247
    invoke-virtual {v11}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v8, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 250
    :cond_a
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_7
    if-ltz v1, :cond_d

    .line 251
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    .line 252
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    if-nez v2, :cond_b

    goto :goto_8

    .line 255
    :cond_b
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    invoke-virtual {v3}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v3

    .line 261
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 262
    invoke-virtual {v12}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v1

    invoke-virtual {v8, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 263
    invoke-virtual {v11, v8, v2}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_c
    :goto_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 267
    :cond_d
    array-length v1, v15

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_9
    if-ltz v1, :cond_11

    .line 270
    aget-object v2, v15, v1

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 271
    aget-object v2, v15, v1

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v8, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_e
    if-eqz v13, :cond_f

    .line 275
    invoke-virtual {v13}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {v11, v8, v1}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_f
    if-eqz v14, :cond_11

    if-eqz v17, :cond_11

    .line 277
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 278
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/hideapi/TransitionInfoExpose;->getChange(Landroid/window/WindowContainerToken;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 280
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_a

    :cond_10
    const-string v1, "RemoteAnimationAdapterCompat"

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but it\'s not in info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 287
    invoke-virtual/range {p2 .. p2}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v8, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 288
    invoke-virtual {v14}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    move-object/from16 v2, p2

    invoke-virtual {v2, v8, v1}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_b

    :cond_11
    move-object/from16 v2, p2

    :goto_b
    const/4 v1, 0x1

    .line 292
    invoke-virtual {v8, v1}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 293
    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    .line 294
    iget-object v1, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v1, v11}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addCounterRotator(Lcom/android/wm/shell/util/CounterRotator;)V

    .line 295
    iget-object v1, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->mManager:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->addCounterRotator(Lcom/android/wm/shell/util/CounterRotator;)V

    const-string v1, "RemoteAnimationAdapterCompat"

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationStart appsCompat size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v12, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->val$remoteAnimationAdapter:Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    const/4 v13, 0x0

    new-instance v1, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$hXVIpChbxGyaN7V9Ysu1nRdFtG4;

    move-object/from16 v2, p1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$hXVIpChbxGyaN7V9Ysu1nRdFtG4;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;Landroid/os/IBinder;)V

    move-object v14, v3

    move-object/from16 v17, v1

    invoke-interface/range {v12 .. v17}, Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v1, "startAnimation   end"

    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
