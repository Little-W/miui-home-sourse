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

    .line 823
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 824
    invoke-direct {p0, p2, p3}, Lcom/miui/home/recents/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Z)V

    .line 825
    iput-boolean p4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->mFromUnlock:Z

    return-void
.end method

.method public static synthetic lambda$onCreateAnimation$0(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    .line 846
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public static synthetic lambda$onCreateAnimation$1(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$Jg5FTEYqjFUQF07BMngEJZlZAME;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$Jg5FTEYqjFUQF07BMngEJZlZAME;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 5

    .line 831
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 833
    invoke-virtual {p2}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void

    .line 836
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 837
    new-instance v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-direct {v1, p1, v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 838
    iget-object v4, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    if-eqz v4, :cond_2

    iget-object v1, v1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, v1

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 839
    invoke-static {v1, p1, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 844
    :cond_1
    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$DOxFvNKqIAIlQo5rvvWC16AtI-c;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner$DOxFvNKqIAIlQo5rvvWC16AtI-c;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->addOnResumeCallback(Lcom/miui/home/launcher/Launcher$OnResumeCallback;)V

    return-void

    .line 840
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void

    .line 851
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/util/RemoteAnimationProvider;

    move-result-object v1

    .line 852
    new-instance v4, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {v4}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    if-eqz v1, :cond_4

    .line 856
    invoke-static {v0}, Lcom/miui/home/recents/util/BoostHelperCompat;->boostMainThreadAndRenderThread(Lcom/miui/home/launcher/Launcher;)V

    .line 857
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 858
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0, p1, v4}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$900(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    .line 859
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$802(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)Lcom/miui/home/recents/util/RemoteAnimationProvider;

    goto :goto_2

    .line 861
    :cond_4
    invoke-static {v0}, Lcom/miui/home/recents/util/BoostHelperCompat;->boostGesture(Lcom/miui/home/launcher/Launcher;)V

    .line 862
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 863
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 865
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0, p1, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 866
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isModeFromNewHome([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isNewHomeViewAdded()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isNewHomeOverlayAttachedAndEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 867
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    goto :goto_1

    .line 869
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_8

    .line 873
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0, v3, v4}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    goto :goto_2

    .line 876
    :cond_7
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    .line 880
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {v1, p2}, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    invoke-static {v0, v4, v1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1300(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    return-void
.end method
