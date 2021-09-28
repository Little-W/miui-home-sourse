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

    .line 22
    invoke-direct {p0}, Lcom/miui/home/recents/InternalStateHandler;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/miui/home/recents/LauncherInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;Lcom/miui/home/launcher/Launcher;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 2

    .line 38
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 39
    iget-object p1, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object p2

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p2, v1, :cond_0

    .line 43
    invoke-interface {p1, p3}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected init(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 34
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 35
    new-instance v2, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$arlQtGkpdIwlM1-IQr3aNaoJDSo;

    invoke-direct {v2, p0, v1, p1}, Lcom/miui/home/recents/-$$Lambda$LauncherInitListener$arlQtGkpdIwlM1-IQr3aNaoJDSo;-><init>(Lcom/miui/home/recents/LauncherInitListener;Landroid/os/CancellationSignal;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->setRemoteAnimationProvider(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/LauncherInitListener;->mOnInitListener:Ljava/util/function/BiPredicate;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public register()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherInitListener;->initWhenReady()V

    return-void
.end method

.method public registerAndStartActivity(Landroid/content/Intent;Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 0

    .line 65
    iput-object p2, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 67
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherInitListener;->register()V

    .line 69
    invoke-interface {p2, p4, p5, p6}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->toActivityOptions(Landroid/os/Handler;J)Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 70
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, p4}, Lcom/miui/home/recents/LauncherInitListener;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/miui/home/recents/LauncherInitListener;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherInitListener;->clearReference()Z

    return-void
.end method
