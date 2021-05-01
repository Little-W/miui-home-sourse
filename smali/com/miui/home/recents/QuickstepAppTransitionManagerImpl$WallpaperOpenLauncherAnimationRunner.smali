.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;
.super Lcom/miui/home/recents/LauncherAnimationRunner;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperOpenLauncherAnimationRunner"
.end annotation


# instance fields
.field private final mFromUnlock:Z

.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZZ)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 704
    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Z)V

    .line 705
    iput-boolean p4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->mFromUnlock:Z

    return-void
.end method

.method public static synthetic lambda$null$527(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    .line 720
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public static synthetic lambda$onCreateAnimation$528(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$X9OG8zCmEuOZey3Hx-SYS_wdpvo;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$X9OG8zCmEuOZey3Hx-SYS_wdpvo;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 713
    invoke-virtual {p2}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void

    .line 716
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 718
    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$O2-cdAq77DHuTlvBgyz7_GAq3dE;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$O2-cdAq77DHuTlvBgyz7_GAq3dE;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->addOnResumeCallback(Lcom/miui/home/launcher/Launcher$OnResumeCallback;)V

    return-void

    .line 725
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$600(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/util/RemoteAnimationProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 727
    new-instance v1, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    .line 728
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 730
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0, p1, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    .line 731
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {p1, p2}, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    .line 732
    invoke-virtual {v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->startDetect()V

    .line 733
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$602(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)Lcom/miui/home/recents/util/RemoteAnimationProvider;

    goto :goto_2

    .line 735
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 736
    new-instance v1, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    .line 737
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 738
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {v0, p2}, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    .line 740
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p2, p1, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 741
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isModeFromNewHome([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isNewHomeViewAdded()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isNewHomeOverlayAttachedAndEnable()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 742
    :cond_3
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p2, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    goto :goto_0

    .line 744
    :cond_4
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p2, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$900(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    .line 746
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1, v2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    goto :goto_1

    .line 748
    :cond_5
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p2, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$900(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    .line 750
    :goto_1
    invoke-virtual {v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->startDetect()V

    :goto_2
    return-void
.end method
