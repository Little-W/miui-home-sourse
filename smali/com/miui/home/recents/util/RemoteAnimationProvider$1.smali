.class Lcom/miui/home/recents/util/RemoteAnimationProvider$1;
.super Lcom/miui/home/recents/LauncherAnimationRunner;
.source "RemoteAnimationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/util/RemoteAnimationProvider;->toActivityOptions(Landroid/os/Handler;J)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/util/RemoteAnimationProvider;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/Handler;Z)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/miui/home/recents/util/RemoteAnimationProvider$1;->this$0:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Z)V

    return-void
.end method


# virtual methods
.method public onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 2

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/OverviewComponentObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->onCreateWallpaperOpenAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/miui/home/recents/util/RemoteAnimationProvider$1;->this$0:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    invoke-interface {v0, p1}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;)V

    :cond_1
    return-void
.end method
