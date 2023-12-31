.class public Lcom/miui/home/recents/LauncherInitListener;
.super Lcom/miui/home/recents/InternalStateHandler;
.source "LauncherInitListener.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;


# instance fields
.field private final mOnInitListener:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/miui/home/recents/InternalStateHandler;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/home/recents/LauncherInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    return-void
.end method

.method static synthetic lambda$registerAndStartActivity$1(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$registerAndStartActivity$2(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "LauncherInitListener"

    const-string v1, "registerAndStartActivity onTransactionReady"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$h-cM6JPDe_Dx4ze1oEhJ1PlvXiA;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$h-cM6JPDe_Dx4ze1oEhJ1PlvXiA;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected init(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 40
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 41
    new-instance v2, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$_j348U1NS51w3eNhwz90R4oVXhM;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$_j348U1NS51w3eNhwz90R4oVXhM;-><init>(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;)V

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->setRemoteAnimationProvider(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/LauncherInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$init$0$LauncherInitListener(Landroid/os/CancellationSignal;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 2

    .line 44
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 45
    iget-object p1, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p0, v1, :cond_0

    .line 51
    invoke-interface {p1, p2}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public register()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherInitListener;->initWhenReady()V

    return-void
.end method

.method public registerAndStartActivity(Landroid/content/Intent;Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 0

    .line 73
    iput-object p2, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 75
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherInitListener;->register()V

    .line 76
    invoke-interface {p2, p4, p5, p6}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->toActivityOptions(Landroid/os/Handler;J)Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 77
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, p4}, Lcom/miui/home/recents/LauncherInitListener;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    .line 78
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->mainAnimNoFinishClear()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    const/4 p4, 0x1

    new-instance p5, Landroid/window/WindowContainerTransaction;

    invoke-direct {p5}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance p6, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$exwhJwqOk9d7eQyodEBCUrrdAWY;

    invoke-direct {p6, p3, p0, p2}, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$exwhJwqOk9d7eQyodEBCUrrdAWY;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {p1, p4, p5, p6}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p3, p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherInitListener;->clearReference()Z

    return-void
.end method
