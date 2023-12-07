.class public Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteAnimationAdapterCompat"


# instance fields
.field private mAnimationWrapped:Landroid/view/RemoteAnimationAdapter;

.field private mRemoteTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/view/RemoteAnimationAdapter;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->wrapRemoteAnimationRunner(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;

    move-result-object v1

    move-object v0, v6

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    iput-object v6, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->mAnimationWrapped:Landroid/view/RemoteAnimationAdapter;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->buildRemoteTransition(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->mRemoteTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    return-void
.end method

.method static synthetic access$000(Landroid/window/TransitionInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->printLeash(Landroid/window/TransitionInfo;)V

    return-void
.end method

.method static synthetic access$100(Landroid/window/TransitionInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->isClosingType(Landroid/window/TransitionInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->noNeedAnimFinishIt(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    return-void
.end method

.method static synthetic access$300(ILjava/util/List;Z)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->isOtherCase(ILjava/util/List;Z)Z

    move-result p0

    return p0
.end method

.method public static buildRemoteTransition(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Lcom/android/systemui/shared/system/RemoteTransitionCompat;
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->wrapRemoteTransition(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Landroid/window/IRemoteTransition$Stub;

    move-result-object p0

    invoke-static {p0}, Lcom/android/hideapi/RemoteTransitionExpose;->newInstance(Landroid/window/IRemoteTransition;)Landroid/window/RemoteTransition;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Landroid/window/RemoteTransition;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isClosingType(Landroid/window/TransitionInfo;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", check isClosingType type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RemoteAnimationAdapterCompat"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    return v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static isOtherCase(ILjava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "RemoteAnimationAdapterCompat"

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p0, v1, :cond_2

    move p0, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_4

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v3, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "home mode TO_FRONT, isOtherCase true "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    move p0, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge p0, v4, :cond_4

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_3

    if-eqz p2, :cond_3

    const-string p0, "home mode TO_BACK, isOtherCase true "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return v2
.end method

.method private static noNeedAnimFinishIt(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V
    .locals 8

    const-string v0, "RemoteAnimationAdapterCompat"

    const-string v1, ", same task id, noNeedAnimFinish it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p4, v1, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    const/4 v2, -0x1

    invoke-virtual {p4, v2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setOpenTaskId(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5, p0, v4}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->addToFinishTransaction(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v4, "addToFinishTransaction fail"

    invoke-static {v0, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getRecentsAnimationListenerImpl()Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    move-result-object p0

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    new-instance v5, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    invoke-direct {v5, p1}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;-><init>(Landroid/window/TransitionInfo;)V

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {p2, p1}, Lcom/android/wm/shell/util/TransitionUtil;->reorderWindow(Landroid/window/TransitionInfo$Change;Landroid/window/WindowContainerTransaction;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeFinishCallback, wct = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object v5

    new-instance v6, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v6}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    invoke-static {v5, p3, v4, v6, v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;Z)[Landroid/view/RemoteAnimationTarget;

    move-result-object v5

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p3, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p3, p2, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3, v3}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    const/4 p2, 0x0

    invoke-virtual {p4, p2, p1, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    :try_start_5
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->initIRecentsAnimationRunnerAtLeastS(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;

    move-result-object p0

    invoke-interface {p0, v5}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string p1, "onTasksAppeared fail"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private static printLeash(Landroid/window/TransitionInfo;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printLeash::TransitionInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteAnimationAdapterCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    const-string v2, "printLeash::index = "

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", change = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "printLeash::taskInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result p0

    :goto_1
    if-ge v3, p0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", root = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static wrapRemoteAnimationRunner(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Landroid/view/IRemoteAnimationRunner$Stub;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$1;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V

    return-object v0
.end method

.method public static wrapRemoteTransition(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Landroid/window/IRemoteTransition$Stub;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V

    return-object v0
.end method


# virtual methods
.method public getRemoteTransition()Lcom/android/systemui/shared/system/RemoteTransitionCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->mRemoteTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    return-object p0
.end method

.method public getWrapped()Landroid/view/RemoteAnimationAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->mAnimationWrapped:Landroid/view/RemoteAnimationAdapter;

    return-object p0
.end method
