.class public abstract Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;
.super Lcom/miui/home/recents/LauncherAppTransitionManager;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;
    }
.end annotation


# static fields
.field public static mClosingTime:I = 0x1

.field public static mOpeningTime:I = 0x1

.field public static sRecentsLaunchTime:I = 0x1


# instance fields
.field private mActivityOptions:Landroid/app/ActivityOptions;

.field private mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

.field private mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field mContext:Landroid/content/Context;

.field private final mDragLayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/DragLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

.field mIconLaunchFinishRunnable:Ljava/lang/Runnable;

.field private mIsReleaseOpenFloatingIconLayer:Z

.field private final mIsRtl:Z

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchingViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedResetContentView:Z

.field private mNoIconRadius:F

.field private mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

.field private mOpeningShortcutIconRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

.field private mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

.field private mStartMinusOneScreenScrollX:F

.field private mStartWorkspaceScrollX:F

.field mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

.field mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

.field private mTaskViewRadius:F

.field private mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 135
    iput v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    .line 159
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRtl:Z

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 163
    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskViewRadius:F

    .line 164
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    .line 166
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->registerRemoteAnimations()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->launcherIsATargetWithMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;Z)V
    .locals 0

    .line 99
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startIconLaunchAnimator(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Landroid/os/Handler;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F
    .locals 0

    .line 99
    iput p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mStartWorkspaceScrollX:F

    return p1
.end method

.method static synthetic access$1202(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F
    .locals 0

    .line 99
    iput p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mStartMinusOneScreenScrollX:F

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningShortcutIconRef:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsReleaseOpenFloatingIconLayer:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/util/RemoteAnimationProvider;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)Lcom/miui/home/recents/util/RemoteAnimationProvider;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowToRecentsAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowFromFeedAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method private cancelAppToHomeAnim()V
    .locals 2

    .line 1203
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1205
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->cancelAppToHomeAnim()V

    :cond_0
    return-void
.end method

.method private finishPendingGestureController()V
    .locals 2

    .line 174
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->finishPendingController()V

    .line 177
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->finishEnterRecentsNow()V

    :cond_0
    return-void
.end method

.method private getClosingShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 3

    .line 959
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 962
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 963
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 965
    :cond_1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$G22Pw-uMzQz1-H5P-LsaPzgv4OM;

    invoke-direct {v2, p2, p1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$G22Pw-uMzQz1-H5P-LsaPzgv4OM;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 980
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x32

    .line 982
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 984
    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method private getHomeStackBound()Landroid/graphics/Rect;
    .locals 4

    .line 391
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0
.end method

.method private getIconRect(Lcom/miui/home/launcher/ShortcutIcon;)Landroid/graphics/Rect;
    .locals 2

    if-eqz p1, :cond_0

    .line 947
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageViewOriginalLocation()Landroid/graphics/Rect;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "QuickstepTransition"

    const-string v1, "can\'t get icon location"

    .line 949
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    invoke-static {}, Lcom/miui/home/launcher/ItemIcon;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    .line 953
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/ItemIcon;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getWallpaperOpenRunner(Z)Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    if-nez v0, :cond_0

    .line 670
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    .line 673
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    return-object p1
.end method

.method private getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;
    .locals 5

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 337
    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, p1, v3

    .line 338
    iget v4, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_0

    iget-object v4, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 339
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 340
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_0

    .line 341
    iget-object p1, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 342
    iget-object p1, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private hasControlRemoteAppTransitionPermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isInAppModeGesture()Z
    .locals 2

    .line 1327
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1329
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->isInAppModeGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$dIqAYnFB-oSVl3P-lry2-HPaUCI(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetRecentsContentView()V

    return-void
.end method

.method static synthetic lambda$getClosingShortcutIcon$5(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 967
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRecentTasks()Ljava/util/List;

    move-result-object v0

    .line 968
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 969
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget v4, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v3, v4, :cond_0

    .line 970
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getComponentName(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/ComponentName;

    move-result-object p0

    .line 971
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getUserId(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v0

    .line 972
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v2}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 973
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static synthetic lambda$nQMgAD5UW7Hbj8oUkwxIm5eqHn8(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetContentView()V

    return-void
.end method

.method static synthetic lambda$null$3(Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    if-eqz p0, :cond_1

    const v0, 0x3f7eb852    # 0.995f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 869
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    .line 871
    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_1
    if-eqz p2, :cond_2

    move-object v0, p3

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move v4, p1

    move v5, p1

    .line 874
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/RecentsView;->alignTaskViewWhenAppToRecent(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$null$6(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 1115
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetShortcutIconAlpha(Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method

.method public static synthetic lambda$resetContentView$9(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 3

    .line 1313
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha(F)V

    .line 1316
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setScaleX(F)V

    .line 1317
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setScaleY(F)V

    .line 1319
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isInAppModeGesture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1320
    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenFinishOpenOrCloseApp(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$resetRecentsContentView$2(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 6

    .line 771
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 773
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    .line 774
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 776
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v4

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/4 v4, 0x0

    .line 777
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 778
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 779
    invoke-static {v3, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setRemoteAnimationProvider$0(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 354
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startClosingWindowAnimators$7(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ILcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Landroid/graphics/RectF;FFF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    const/4 v11, 0x0

    .line 1064
    invoke-static {v11, v1, v8}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v12

    .line 1066
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v13

    const v14, 0x3f4ccccd    # 0.8f

    const/4 v15, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v13, :cond_1

    if-eqz v2, :cond_0

    sub-float/2addr v14, v9

    const v13, 0x3e99999a    # 0.3f

    div-float/2addr v14, v13

    goto :goto_0

    :cond_0
    sub-float v14, v11, v9

    .line 1067
    :goto_0
    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    sub-float/2addr v14, v9

    const v13, 0x3e4ccccc    # 0.19999999f

    div-float/2addr v14, v13

    goto :goto_1

    :cond_2
    sub-float v14, v11, v9

    .line 1069
    :goto_1
    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    :goto_2
    cmpl-float v14, v13, v11

    if-nez v14, :cond_3

    move v14, v15

    goto :goto_3

    :cond_3
    move v14, v11

    .line 1071
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v16

    if-nez v16, :cond_4

    .line 1072
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F

    move-result v11

    goto :goto_4

    :cond_4
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_4
    mul-float/2addr v11, v14

    if-eqz v2, :cond_5

    .line 1075
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V

    .line 1077
    :cond_5
    invoke-virtual {v3, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    .line 1078
    invoke-virtual {v13, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    .line 1079
    invoke-virtual {v13, v15}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    .line 1080
    invoke-static/range {p1 .. p1}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v14

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    .line 1081
    invoke-virtual {v13, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1083
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x0

    cmpl-float v7, v11, v13

    if-eqz v7, :cond_7

    .line 1084
    iget-object v7, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/miui/home/recents/views/FloatingIconView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v4, :cond_6

    .line 1085
    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPreviousRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1086
    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPreviousRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/miui/home/recents/util/Utilities;->getMiddleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    const/4 v7, 0x0

    .line 1087
    invoke-static {v7, v1, v4}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1088
    invoke-virtual {v5, v6, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 1089
    invoke-virtual {v3, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    .line 1091
    :goto_5
    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1092
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {v1, v7}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    .line 1094
    :cond_7
    invoke-virtual {v5, v6, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 1096
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 1097
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    neg-float v1, v1

    .line 1098
    invoke-virtual {v8, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1100
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Rect;->width()I

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/RectF;->width()F

    .line 1101
    invoke-virtual {v5, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 1102
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    div-float v2, v10, p10

    invoke-virtual {v1, v8, v11, v9, v2}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFF)V

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 1106
    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1107
    sget-object v14, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v14}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v14

    sget-object v16, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 1108
    invoke-virtual/range {v16 .. v16}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v16

    sub-float v16, v13, v16

    const v17, 0x3f8ccccd    # 1.1f

    mul-float v16, v16, v17

    mul-float v16, v16, v12

    add-float v14, v14, v16

    .line 1107
    invoke-static {v1, v14}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1109
    invoke-virtual {v7, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1110
    invoke-virtual {v5, v6, v3, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    if-eqz v2, :cond_9

    .line 1113
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    const/high16 v1, 0x40000000    # 2.0f

    .line 1114
    invoke-virtual {v4, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isClosedToTarget(F)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1115
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$_FVHlvZqSziNX1YNll1Vj4ARR8Q;

    invoke-direct {v3, v0, v2}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$_FVHlvZqSziNX1YNll1Vj4ARR8Q;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1118
    :cond_9
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v1, :cond_a

    .line 1119
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    div-float v3, v10, p10

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, p12

    move/from16 p4, p13

    move/from16 p5, v3

    move/from16 p6, v11

    invoke-virtual/range {p1 .. p6}, Lcom/miui/home/recents/FloatingIconLayer;->showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V

    .line 1124
    :cond_a
    :goto_6
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v11, v2, v9

    invoke-virtual/range {p7 .. p7}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    invoke-virtual {v1, v11, v2, v15}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    return-void
.end method

.method static synthetic lambda$startClosingWindowFromFeedAnimators$8(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 1263
    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 1264
    iget p6, p3, Landroid/graphics/RectF;->top:F

    .line 1265
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 1266
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr v1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1268
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    .line 1269
    invoke-virtual {p3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1270
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic lambda$startClosingWindowToRecentsAnimators$4(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;FFF)V
    .locals 10

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v5, p8

    .line 853
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v6

    .line 854
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 855
    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 856
    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 857
    invoke-virtual {v5, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    move/from16 v0, p11

    goto :goto_0

    :cond_0
    move/from16 v0, p11

    .line 860
    :goto_0
    invoke-virtual {p2, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    .line 861
    invoke-virtual {v0, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    const/4 v2, 0x0

    .line 862
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    move/from16 v2, p10

    .line 863
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object v0, p3

    move-object v7, p4

    .line 864
    invoke-virtual {p3, p4, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 866
    sget-object v8, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v9, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$00hSSB8nhmtZDte8zV8V0Urt-hw;

    move-object v0, v9

    move-object v1, p5

    move/from16 v2, p9

    move/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$00hSSB8nhmtZDte8zV8V0Urt-hw;-><init>(Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 879
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, p9

    invoke-virtual {p4}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    return-void
.end method

.method public static synthetic lambda$startOpeningWindowAnimators$1(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;IFLandroid/graphics/RectF;FFF)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p9

    move/from16 v6, p11

    .line 471
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestEnd()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    const v7, 0x3dcccccd    # 0.1f

    sub-float v7, p10, v7

    const v8, 0x3e4cccce    # 0.20000002f

    div-float/2addr v7, v8

    const/4 v8, 0x0

    .line 475
    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 476
    invoke-virtual {p2, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 478
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v10

    if-eqz v10, :cond_1

    sub-float v10, v9, p10

    const v11, 0x3f333333    # 0.7f

    div-float v11, v10, v11

    .line 479
    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    .line 480
    sget-object v11, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v11}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v11

    sub-float/2addr v11, v9

    const v12, 0x3e99999a    # 0.3f

    sub-float v12, p10, v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v11, v8

    add-float/2addr v11, v9

    .line 481
    invoke-virtual {v2, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 482
    invoke-virtual {v3, v4, p2, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    goto :goto_0

    .line 484
    :cond_1
    invoke-virtual {v3, v4, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    :goto_0
    const/4 v1, 0x1

    if-eqz v4, :cond_2

    .line 487
    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 488
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v8

    move-object v10, p1

    invoke-virtual {p1, v8}, Lcom/miui/home/recents/util/RectFSpringAnim;->getDimAlphaByCurrentWidth(F)F

    move-result v8

    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v10

    invoke-virtual {v2, v8, v10, v1}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    .line 491
    :cond_2
    iget-object v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v2, :cond_4

    iget-boolean v8, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsReleaseOpenFloatingIconLayer:Z

    if-nez v8, :cond_4

    cmpg-float v7, v7, v9

    if-gez v7, :cond_3

    .line 493
    invoke-virtual {v3, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 494
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v4, p7

    .line 495
    invoke-static {v4, v3, v5}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    div-float v4, v6, p8

    const/high16 v5, 0x3f800000    # 1.0f

    move-object p1, v1

    move-object p2, v2

    move-object/from16 p3, v3

    move/from16 p4, p10

    move/from16 p5, v4

    move/from16 p6, v5

    .line 494
    invoke-virtual/range {p1 .. p6}, Lcom/miui/home/recents/FloatingIconLayer;->showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V

    goto :goto_1

    .line 498
    :cond_3
    invoke-virtual {v2}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 499
    iput-boolean v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsReleaseOpenFloatingIconLayer:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private launcherIsATargetWithMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 7

    .line 614
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 615
    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 616
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 617
    array-length v2, p1

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 618
    iget v6, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v6, p2, :cond_0

    iget-object v5, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getTaskId()I

    move-result v0

    .line 624
    array-length v2, p1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 625
    iget v6, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v6, p2, :cond_2

    iget v5, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v5, v0, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private registerRemoteAnimations()V
    .locals 9

    .line 572
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    new-instance v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;-><init>()V

    .line 578
    new-instance v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWallpaperOpenRunner(Z)Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    move-result-object v3

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    iput-object v8, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const/16 v2, 0xd

    const/4 v3, 0x1

    .line 580
    iget-object v4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;->addRemoteAnimation(IILcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V

    .line 583
    new-instance v2, Lcom/android/systemui/shared/recents/system/ActivityCompat;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/recents/system/ActivityCompat;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/recents/system/ActivityCompat;->registerRemoteAnimations(Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;)V

    :cond_1
    return-void
.end method

.method private resetContentView()V
    .locals 2

    .line 1312
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$-ulb_JsJ_hiLRWHKe8WkiWLGorA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$-ulb_JsJ_hiLRWHKe8WkiWLGorA;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetRecentsContentView()V
    .locals 2

    .line 770
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$prdPFSKa8yUBGSxyg1F8-mw5ZLw;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$prdPFSKa8yUBGSxyg1F8-mw5ZLw;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 24

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    const-string v1, "QuickstepTransition"

    const-string v2, "startClosingWindowAnimators"

    .line 994
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v14, :cond_0

    return-object v15

    .line 1000
    :cond_0
    new-instance v8, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v1, 0x1

    invoke-direct {v8, v0, v1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 1001
    invoke-virtual {v8}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v15

    .line 1006
    :cond_1
    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v3

    .line 1007
    invoke-direct {v13, v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 1008
    invoke-static {v3, v1, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    .line 1010
    invoke-direct {v13, v14, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getClosingShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v12

    .line 1011
    invoke-direct {v13, v12}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getIconRect(Lcom/miui/home/launcher/ShortcutIcon;)Landroid/graphics/Rect;

    move-result-object v9

    .line 1013
    new-instance v7, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 1014
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v7, v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 1015
    invoke-virtual {v7, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1016
    invoke-virtual {v7, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 1018
    new-instance v5, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1019
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v14, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 1020
    new-instance v16, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct/range {v16 .. v16}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1022
    invoke-static {v14}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    if-eqz v12, :cond_2

    .line 1024
    invoke-virtual {v12}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v2

    .line 1025
    invoke-virtual {v9, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1027
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v4, v2

    if-eqz v12, :cond_3

    .line 1028
    invoke-static {v12}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/ShortcutIcon;)F

    move-result v2

    goto :goto_0

    :cond_3
    iget v2, v13, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    :goto_0
    mul-float/2addr v2, v11

    .line 1030
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1031
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1032
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v17

    const v15, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    if-eqz v17, :cond_4

    .line 1033
    invoke-virtual {v4, v1, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 1035
    invoke-virtual {v6, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1036
    invoke-static {v6, v15}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    move/from16 v20, v1

    move/from16 v21, v20

    goto :goto_1

    :cond_4
    move/from16 v20, v0

    move/from16 v21, v2

    :goto_1
    const-string v0, "QuickstepTransition"

    .line 1039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startClosingWindowAnimators:startRect="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetRect="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentRotation="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    new-instance v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    invoke-direct/range {v17 .. v23}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 1044
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v1, 0x3ed70a3d    # 0.42f

    const v4, 0x3f733333    # 0.95f

    invoke-virtual {v2, v0, v4, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1045
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v2, v0, v4, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1046
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v6, 0x3f666666    # 0.9f

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v2, v0, v6, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1047
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v1, 0x3f7d70a4    # 0.99f

    invoke-virtual {v2, v0, v1, v15}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1048
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v6, 0x3ebd70a4    # 0.37f

    invoke-virtual {v2, v0, v4, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1049
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v4, 0x3ed70a3d    # 0.42f

    invoke-virtual {v2, v0, v1, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    const/high16 v0, -0x3b060000    # -2000.0f

    const/high16 v1, -0x3a860000    # -4000.0f

    const/4 v4, 0x0

    .line 1051
    invoke-virtual {v2, v4, v0, v1, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    .line 1053
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v12, :cond_5

    const/4 v0, 0x0

    .line 1054
    invoke-static {v14, v12, v0}, Lcom/miui/home/recents/views/FloatingIconView;->getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;Z)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v15

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    iput-object v15, v13, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 1055
    iget-object v0, v13, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_6

    .line 1056
    invoke-virtual {v2, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    :cond_6
    if-eqz v12, :cond_7

    .line 1060
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->savePositionRelativeToAncestor(Landroid/view/View;Landroid/view/View;)V

    .line 1062
    :cond_7
    new-instance v15, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v6, v2

    move v2, v3

    move-object v3, v12

    move-object v4, v14

    move-object/from16 p1, v6

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ILcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1127
    new-instance v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;

    move-object v3, v13

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v14, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1186
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1187
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1188
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    goto :goto_3

    .line 1190
    :cond_8
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    :goto_3
    return-object v0
.end method

.method private startClosingWindowFromFeedAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 13

    const-string v0, "QuickstepTransition"

    const-string v1, "startClosingWindowFromFeedAnimators"

    .line 1210
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1215
    :cond_0
    new-instance v2, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 1216
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v1

    .line 1221
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1223
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1224
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 1225
    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 1227
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 1228
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    const/4 v4, 0x0

    .line 1229
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1230
    invoke-virtual {v3, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 1232
    new-instance v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1233
    iget-object v5, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/DragLayer;

    if-eqz v5, :cond_2

    .line 1235
    new-instance v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v6, v5}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1237
    :cond_2
    sget-object v5, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 1239
    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1241
    iget v5, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    mul-float/2addr v5, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v5, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float v10, v5, v0

    .line 1243
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1244
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1245
    invoke-virtual {v3, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 1246
    invoke-virtual {v3, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    const-string v0, "QuickstepTransition"

    .line 1248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startClosingWindowFromFeedAnimators:startRect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "   targetRect="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    new-instance p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 1252
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v1, 0x3ed70a3d    # 0.42f

    const v5, 0x3f733333    # 0.95f

    invoke-virtual {p1, v0, v5, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1253
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p1, v0, v5, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1254
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v6, 0x3f666666    # 0.9f

    const v7, 0x3ee66666    # 0.45f

    invoke-virtual {p1, v0, v6, v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1255
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3f7d70a4    # 0.99f

    invoke-virtual {p1, v0, v7, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1256
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v6, 0x3ebd70a4    # 0.37f

    invoke-virtual {p1, v0, v5, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1257
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p1, v0, v7, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    const/high16 v0, -0x3b060000    # -2000.0f

    const/high16 v1, -0x3a860000    # -4000.0f

    const/4 v5, 0x0

    .line 1259
    invoke-virtual {p1, v5, v0, v1, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    .line 1261
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$yrLkwcMuGGrXEOsBA-bX8shoxUs;

    invoke-direct {v0, v4, v3, v2}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$yrLkwcMuGGrXEOsBA-bX8shoxUs;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1274
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1290
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    return-object p1
.end method

.method private startClosingWindowToRecentsAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "QuickstepTransition"

    const-string v3, "startClosingWindowToRecentsAnimators"

    .line 790
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    const/4 v2, 0x0

    if-nez v5, :cond_0

    return-object v2

    .line 796
    :cond_0
    new-instance v9, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v3, 0x1

    invoke-direct {v9, v1, v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 797
    new-instance v7, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 798
    sget-object v4, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    iput-boolean v4, v7, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 799
    invoke-virtual {v9}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v2

    .line 804
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 805
    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/RecentsView;

    .line 806
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->findTargetTaskView(Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v13

    .line 808
    invoke-direct {v0, v1, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 810
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v8

    .line 811
    invoke-virtual {v8}, Lcom/miui/home/recents/views/TaskStackView;->scrollToDefaultCenterTaskViewIndex()V

    .line 813
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 814
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-nez v8, :cond_3

    .line 815
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v8, v10

    float-to-int v8, v8

    .line 816
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v10, v11

    .line 817
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 818
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v12

    float-to-int v12, v15

    .line 815
    invoke-virtual {v6, v8, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 820
    :cond_3
    new-instance v8, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 821
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 822
    invoke-virtual {v8, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 823
    invoke-virtual {v8, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 825
    invoke-static {v5}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v4

    .line 826
    iget v10, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskViewRadius:F

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v10, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v10, v12

    const-string v12, "QuickstepTransition"

    .line 828
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startClosingWindowToRecentsAnimators:startRect="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   targetRect="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 832
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 834
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v12

    const/4 v15, 0x0

    if-eqz v12, :cond_4

    .line 835
    invoke-virtual {v3, v15, v15}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 836
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v4, 0x3e4ccccd    # 0.2f

    .line 837
    invoke-static {v1, v4}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    move/from16 v20, v15

    move/from16 v21, v20

    move/from16 v23, v21

    goto :goto_0

    :cond_4
    move/from16 v20, v4

    move/from16 v21, v10

    move/from16 v23, v11

    .line 841
    :goto_0
    new-instance v15, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v17, v15

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    invoke-direct/range {v17 .. v23}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 842
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3f733333    # 0.95f

    invoke-virtual {v15, v1, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 843
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v15, v1, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 844
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v15, v1, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 845
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v3, 0x3f7d70a4    # 0.99f

    const v10, 0x3e99999a    # 0.3f

    invoke-virtual {v15, v1, v3, v10}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 846
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v15, v1, v4, v10}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 847
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v15, v1, v3, v10}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 850
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_5

    const/16 v16, 0x1

    goto :goto_1

    :cond_5
    move/from16 v16, v14

    :goto_1
    invoke-static/range {v16 .. v16}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result v11

    .line 852
    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;

    move-object v4, v1

    move-object v10, v13

    move-object v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$BL8TwC5gKFu2sOhcIK96bFInJAQ;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {v15, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 882
    new-instance v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;

    invoke-direct {v1, v0, v13}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v15, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 902
    invoke-virtual {v15}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    move-object/from16 v1, p2

    .line 904
    invoke-virtual {v0, v14, v2, v13, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-object v15
.end method

.method private startIconLaunchAnimator(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;Z)V
    .locals 9

    const-string v0, "QuickstepTransition"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIconLaunchAnimator:launcherClosing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   iconLoc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 285
    invoke-direct {p0, p2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 287
    new-instance v1, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 288
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 290
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {v7, p5}, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;Z)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 292
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {p1, p5}, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    .line 294
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 297
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->startDetect()V

    return-void
.end method

.method private startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 3

    const-string v0, "QuickstepTransition"

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLauncherContentAnimator:isAppOpening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    .line 372
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq v1, v2, :cond_3

    .line 373
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 375
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShortcutMenuLayerFadeOutAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    goto :goto_0

    .line 377
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShortcutMenuLayerFadeInAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 381
    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenStartOpenOrCloseApp(ZLcom/miui/home/launcher/Launcher;)Landroid/animation/ValueAnimator;

    .line 382
    iget-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNeedResetContentView:Z

    if-eqz p1, :cond_3

    .line 383
    new-instance p1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nQMgAD5UW7Hbj8oUkwxIm5eqHn8;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nQMgAD5UW7Hbj8oUkwxIm5eqHn8;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;Z)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 24

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "QuickstepTransition"

    .line 405
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startOpeningWindowAnimators:rotation0IconLoc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_d

    if-eqz v0, :cond_d

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 410
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->cancelAppToHomeAnim()V

    .line 412
    iget-object v4, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v8

    const/4 v4, 0x0

    .line 413
    invoke-static {v4, v8, v3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 415
    new-instance v13, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-direct {v13, v1, v4}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 418
    invoke-virtual {v13}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v12

    .line 422
    :cond_1
    new-instance v5, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    const/4 v1, 0x1

    .line 424
    invoke-virtual {v5, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 425
    invoke-virtual {v5, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    const/high16 v1, 0x3e800000    # 0.25f

    if-eqz v3, :cond_2

    .line 427
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-nez v6, :cond_3

    .line 428
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v14, 0x3f400000    # 0.75f

    mul-float/2addr v9, v14

    float-to-int v9, v9

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v14, v15

    invoke-direct {v3, v6, v7, v9, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 434
    :cond_3
    instance-of v6, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v6, :cond_4

    move-object v6, v0

    check-cast v6, Lcom/miui/home/launcher/ShortcutIcon;

    move-object v14, v6

    goto :goto_0

    :cond_4
    move-object v14, v12

    :goto_0
    if-eqz v14, :cond_5

    .line 437
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningShortcutIconRef:Ljava/lang/ref/WeakReference;

    .line 438
    invoke-virtual {v14}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v6

    .line 439
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 442
    :cond_5
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 443
    invoke-virtual {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 444
    iget v9, v6, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    iget v15, v6, Landroid/graphics/Rect;->top:I

    neg-int v15, v15

    invoke-virtual {v3, v9, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 445
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 446
    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 448
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v15

    const/high16 v6, 0x3f800000    # 1.0f

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float v23, v2, v6

    if-eqz v14, :cond_6

    .line 450
    invoke-static {v14}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/ShortcutIcon;)F

    move-result v2

    goto :goto_1

    :cond_6
    iget v2, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    :goto_1
    mul-float v19, v2, v23

    if-eqz v15, :cond_7

    move/from16 v20, v9

    goto :goto_2

    .line 451
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    move/from16 v20, v0

    .line 453
    :goto_2
    new-instance v6, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 454
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v11, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 455
    new-instance v9, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 456
    iget-object v0, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 457
    iget-object v0, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    .line 458
    iput-object v12, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 461
    :cond_8
    new-instance v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    invoke-direct/range {v16 .. v22}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 462
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v3

    const v16, 0x3e4ccccd    # 0.2f

    const v17, 0x3e851eb8    # 0.26f

    if-eqz v3, :cond_9

    move/from16 v3, v16

    goto :goto_3

    :cond_9
    move/from16 v3, v17

    :goto_3
    const v12, 0x3f7d70a4    # 0.99f

    invoke-virtual {v2, v0, v12, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 463
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v3, v16

    goto :goto_4

    :cond_a
    move/from16 v3, v17

    :goto_4
    invoke-virtual {v2, v0, v12, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 464
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x3e99999a    # 0.3f

    goto :goto_5

    :cond_b
    const v3, 0x3ec7ae14    # 0.39f

    :goto_5
    invoke-virtual {v2, v0, v12, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 465
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v3, 0x3f75c28f    # 0.96f

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v16

    if-eqz v16, :cond_c

    move v4, v1

    goto :goto_6

    :cond_c
    const v16, 0x3ea8f5c3    # 0.33f

    move/from16 v4, v16

    :goto_6
    invoke-virtual {v2, v0, v3, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 466
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v2, v0, v12, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 467
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v1, 0x3e19999a    # 0.15f

    invoke-virtual {v2, v0, v12, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    const/4 v0, 0x0

    .line 469
    iput-boolean v0, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsReleaseOpenFloatingIconLayer:Z

    .line 470
    new-instance v12, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$axmWD9XKgFR-JTN5KCHKceRWZFo;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v4, v2

    move-object v3, v6

    move-object v6, v4

    move-object v4, v9

    move-object v9, v6

    move-object v6, v13

    move-object v10, v9

    move/from16 v9, v23

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$axmWD9XKgFR-JTN5KCHKceRWZFo;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;IF)V

    invoke-virtual {v10, v12}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 504
    new-instance v6, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

    move-object v0, v6

    move v2, v15

    move-object v3, v14

    move-object v4, v13

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v10, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 562
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    move/from16 v1, p6

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 563
    invoke-virtual {v10}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    return-object v10

    :cond_d
    :goto_7
    move-object v2, v12

    return-object v2
.end method


# virtual methods
.method public breakOpenAnim()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->removeEndRunnable(Ljava/lang/Runnable;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->removeEndRunnable(Ljava/lang/Runnable;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMoveToTargetRectWhenAnimEnd(Z)V

    :cond_2
    return-void
.end method

.method public clearRemoteAnimationProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-void
.end method

.method protected abstract composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
.end method

.method public doAnimationFinish()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 322
    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 325
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 326
    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public findTargetTaskView(Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;
    .locals 6

    .line 911
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    .line 912
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 913
    iget p2, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_1
    if-ne p2, v2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 922
    :cond_2
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    return-object p1
.end method

.method public getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    const-string v1, "QuickstepTransition"

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityLaunchOptions   iconLoc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, v9, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 189
    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->setRotationBerforStart(I)V

    .line 190
    iget-object v1, v9, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLaunchingViewRef:Ljava/lang/ref/WeakReference;

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    move v7, v10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v7, v1

    .line 191
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->isAnimChainOn()Z

    move-result v8

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v9, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLaunchingViewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v9, v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v11

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->finishPendingGestureController()V

    .line 197
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 198
    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object/from16 v1, p1

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 199
    new-instance v13, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;

    iget-object v2, v9, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZLjava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/graphics/Rect;ZZ)V

    if-eqz v11, :cond_1

    const-wide/16 v0, 0x15e

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x258

    :goto_1
    move-wide v14, v0

    const-wide/16 v0, 0x78

    sub-long v0, v14, v0

    const-wide/16 v2, 0x60

    sub-long v16, v0, v2

    .line 233
    new-instance v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, v9, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 235
    iput-boolean v10, v9, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNeedResetContentView:Z

    .line 236
    iget-object v0, v9, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object v0

    :cond_2
    move-object/from16 v1, p1

    .line 238
    invoke-super/range {p0 .. p3}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method protected abstract isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
.end method

.method protected isModeFromNewHome([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 635
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 638
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 639
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_1

    iget-object v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    const-string v4, "com.miui.newhome"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method protected isNewHomeOverlayAttachedAndEnable()Z
    .locals 3

    .line 656
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 660
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isOverlayAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/settings/LauncherGestureController;->isSlideUpContentCenter()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected isNewHomeViewAdded()Z
    .locals 2

    .line 648
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 652
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFsGestureStart()V
    .locals 1

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNeedResetContentView:Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 594
    invoke-super {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->release()V

    const/4 v0, 0x0

    .line 595
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    .line 596
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    .line 597
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLaunchingViewRef:Ljava/lang/ref/WeakReference;

    .line 598
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 599
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 600
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {v1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 602
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 604
    :cond_0
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 605
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 606
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 607
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public resetShortcutIconAlpha(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1196
    iget-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningShortcutIconRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1198
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setRemoteAnimationProvider(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V
    .locals 1

    .line 351
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 352
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$0hd7dLizcINlHoqEqInuns_g_as;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$0hd7dLizcINlHoqEqInuns_g_as;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method public startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 9

    .line 736
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    .line 742
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result v3

    xor-int/2addr v3, v2

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 744
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xb4

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    if-eqz v3, :cond_5

    .line 746
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    :cond_2
    invoke-virtual {v0, p2, v4, p4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startLaunchTaskSucceededAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_5

    .line 750
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    :cond_4
    invoke-virtual {v0, p2, v4, p4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startClosingWindowToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 756
    new-instance p2, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$dIqAYnFB-oSVl3P-lry2-HPaUCI;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$dIqAYnFB-oSVl3P-lry2-HPaUCI;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p4, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_6
    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    .line 758
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.miui.newhome"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    .line 760
    new-instance p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$3;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$3;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p4, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method
