.class Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;
.super Landroid/window/IRemoteTransition$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/RemoteTransitionCompat;->newRemoteTransitionForRunner(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Ljava/util/concurrent/Executor;Landroid/content/ContextWrapper;)Landroid/window/RemoteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$runner:Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->val$runner:Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$mergeAnimation$2(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;->box(Landroid/window/IRemoteTransitionFinishedCallback;)Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static synthetic lambda$mergeAnimation$3(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface/range {p0 .. p5}, Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$startAnimation$0(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;->box(Landroid/window/IRemoteTransitionFinishedCallback;)Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method static synthetic lambda$startAnimation$1(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Landroid/os/IBinder;Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;->startAnimation(Landroid/os/IBinder;Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 7

    new-instance v6, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$UB9cWCzuzK2Ux2vfXFRjeeG7WFw;

    invoke-direct {v6, p5}, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$UB9cWCzuzK2Ux2vfXFRjeeG7WFw;-><init>(Landroid/window/IRemoteTransitionFinishedCallback;)V

    iget-object p5, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->val$runner:Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;

    new-instance p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$KydzrUUP1qLAoxO5HEatHZmRdGg;-><init>(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    invoke-interface {p5, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 6

    new-instance v5, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$By4NqTyfG1XbxyF69Vkke7S3Jdw;

    invoke-direct {v5, p4}, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$By4NqTyfG1XbxyF69Vkke7S3Jdw;-><init>(Landroid/window/IRemoteTransitionFinishedCallback;)V

    new-instance v3, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    invoke-direct {v3, p2}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;-><init>(Landroid/window/TransitionInfo;)V

    iget-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->val$runner:Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;

    new-instance p0, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/system/-$$Lambda$RemoteTransitionCompat$1$HXka5LFRO8VgxLjJ69AvmO9Ga-g;-><init>(Lcom/android/systemui/shared/recents/system/RemoteTransitionRunner;Landroid/os/IBinder;Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
