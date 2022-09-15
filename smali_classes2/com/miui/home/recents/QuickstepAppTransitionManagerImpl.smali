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

.field private mClosingAnimTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field

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

.field private mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
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

    .line 162
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 145
    iput v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 166
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    .line 170
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRtl:Z

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskViewRadius:F

    .line 175
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    .line 177
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->registerRemoteAnimations()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isLaunchAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->launcherIsATargetWithMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowFromFeedAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startEndDetector(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Landroid/os/Handler;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F
    .locals 0

    .line 106
    iput p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mStartWorkspaceScrollX:F

    return p1
.end method

.method static synthetic access$1602(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F
    .locals 0

    .line 106
    iput p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mStartMinusOneScreenScrollX:F

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    .line 106
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startIconLaunchAnimator(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsReleaseOpenFloatingIconLayer:Z

    return p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingAnimTargetRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingAnimTargetRef:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->invalidateAdaptiveIconDrawable(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/util/RemoteAnimationProvider;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)Lcom/miui/home/recents/util/RemoteAnimationProvider;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowToRecentsAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method private cancelAppToHomeAnim()V
    .locals 2

    .line 1491
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1492
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1493
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->cancelAppToHomeAnim()V

    :cond_0
    return-void
.end method

.method private cancelHomeFadeInAnim()V
    .locals 2

    .line 1498
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1499
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1500
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->cancelHomeFadeInAnim()V

    :cond_0
    return-void
.end method

.method private findClosingAnimTarget(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1206
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1210
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {v1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 1212
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->findClosingWidgetView(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1214
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getClosingShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private findClosingWidgetView(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1165
    :cond_0
    iget-object v1, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1166
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$iIOl3WJsfbADStWFB6nzpMrTWWU;

    invoke-direct {v2, p2}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$iIOl3WJsfbADStWFB6nzpMrTWWU;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1176
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x50

    .line 1178
    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x1

    .line 1180
    invoke-virtual {v1, p2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-object p2, v0

    goto :goto_0

    .line 1184
    :cond_1
    iget-object p2, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    .line 1186
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1189
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 1192
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object v1

    .line 1193
    invoke-virtual {v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->getWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    move-result-object v1

    if-nez v1, :cond_4

    return-object v0

    .line 1197
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getScreenId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    .line 1198
    invoke-virtual {v1, p2}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->isMatchClosingAppPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1199
    invoke-virtual {v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0
.end method

.method private finishPendingGestureController()V
    .locals 2

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->finishPendingController()V

    .line 188
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->finishEnterRecentsNow()V

    :cond_0
    return-void
.end method

.method private getClosingShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 5

    .line 1138
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1141
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p2, "QuickstepAppTransitionManagerImpl"

    const-string v0, "getClosingShortcutIcon:launcher.getClosingShortcutIcon"

    .line 1142
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 1147
    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v4, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v3, v4, :cond_2

    .line 1148
    iget-object p2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    .line 1149
    iget-object v0, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    const-string v1, "QuickstepAppTransitionManagerImpl"

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClosingShortcutIcon:CloseShortcutIconUtils.getCloseShortcutIcon  cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-static {p2, v0, p1}, Lcom/miui/home/recents/CloseShortcutIconUtils;->getCloseShortcutIcon(Landroid/content/ComponentName;ILcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "QuickstepAppTransitionManagerImpl"

    const-string p2, "getClosingShortcutIcon:null"

    .line 1155
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    :goto_0
    return-object v1
.end method

.method private getHomeStackBound()Landroid/graphics/Rect;
    .locals 4

    .line 419
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 423
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0
.end method

.method private getIconRect(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Landroid/graphics/Rect;
    .locals 2

    if-eqz p1, :cond_0

    .line 1117
    :try_start_0
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageViewOriginalLocation()Landroid/graphics/Rect;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "QuickstepAppTransitionManagerImpl"

    const-string v1, "can\'t get icon location"

    .line 1119
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1120
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    .line 1123
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getLauncherTaskId(Lcom/miui/home/launcher/Launcher;)I
    .locals 4

    .line 755
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$JlRmIwFJon_2LVXwNCTGHSdpCyM;

    invoke-direct {v1, p1}, Lcom/miui/home/recents/-$$Lambda$JlRmIwFJon_2LVXwNCTGHSdpCyM;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 756
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1f4

    .line 759
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "QuickstepAppTransitionManagerImpl"

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLauncherTaskId: exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 762
    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private static getRecentTasks(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    .line 1129
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    const/4 v1, -0x1

    .line 1130
    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1132
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getWallpaperOpenRunner(Z)Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    if-nez v0, :cond_0

    .line 801
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    .line 804
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    return-object p1
.end method

.method private getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;
    .locals 5

    .line 363
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 364
    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, p1, v3

    .line 365
    iget v4, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_0

    iget-object v4, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 366
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 367
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_0

    .line 368
    iget-object p1, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 369
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

.method private invalidateAdaptiveIconDrawable(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 1

    .line 1470
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 1471
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherIconImageView;->invalidateAdaptiveIconDrawable()V

    :cond_0
    return-void
.end method

.method private isInAppModeGesture()Z
    .locals 2

    .line 1618
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1619
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1620
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

.method private isLaunchAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->isOpenAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$dIqAYnFB-oSVl3P-lry2-HPaUCI(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetRecentsContentView()V

    return-void
.end method

.method static synthetic lambda$findClosingWidgetView$6(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1167
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRecentTasks()Ljava/util/List;

    move-result-object v0

    .line 1168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1169
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget v4, p0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v3, v4, :cond_0

    .line 1170
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getComponentName(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1171
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2

    :cond_2
    return-object v2
.end method

.method public static synthetic lambda$nQMgAD5UW7Hbj8oUkwxIm5eqHn8(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetContentView()V

    return-void
.end method

.method public static synthetic lambda$resetContentView$10(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 3

    .line 1604
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha(F)V

    .line 1607
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setScaleX(F)V

    .line 1608
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setScaleY(F)V

    .line 1610
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isInAppModeGesture()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1611
    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenFinishOpenOrCloseApp(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$resetRecentsContentView$3(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 6

    .line 935
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 937
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    .line 938
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 939
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 940
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v4

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/4 v4, 0x0

    .line 941
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 942
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 943
    invoke-static {v3, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setRemoteAnimationProvider$0(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 381
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startClosingWindowAnimators$7(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 1366
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method

.method public static synthetic lambda$startClosingWindowAnimators$8(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Landroid/graphics/RectF;FFF)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move/from16 v11, p16

    move/from16 v12, p17

    .line 1306
    invoke-static {v1, v2, v10}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v13

    .line 1308
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v14, :cond_1

    if-eqz v3, :cond_0

    const v14, 0x3f4ccccd    # 0.8f

    sub-float/2addr v14, v11

    const v16, 0x3e99999a    # 0.3f

    div-float v14, v14, v16

    goto :goto_0

    :cond_0
    sub-float v14, v15, v11

    :goto_0
    const/4 v9, 0x0

    .line 1309
    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move v1, v9

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    sub-float v9, v15, v11

    .line 1310
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v16, 0x3c23d70a    # 0.01f

    cmpl-float v14, v14, v16

    if-lez v14, :cond_2

    float-to-double v7, v9

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    .line 1311
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1313
    :goto_1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    if-eqz p4, :cond_3

    const/4 v1, 0x0

    .line 1318
    :cond_3
    instance-of v2, v3, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v2, :cond_4

    move v2, v15

    goto :goto_4

    :cond_4
    cmpl-float v2, v1, v15

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    move v2, v15

    .line 1321
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1322
    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F

    move-result v7

    goto :goto_3

    :cond_6
    move v7, v15

    :goto_3
    mul-float/2addr v2, v7

    :goto_4
    if-eqz v3, :cond_7

    .line 1326
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V

    .line 1328
    :cond_7
    invoke-virtual {v5, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    .line 1329
    invoke-virtual {v7, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    const/4 v8, 0x0

    .line 1330
    invoke-virtual {v7, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    .line 1331
    invoke-static/range {p2 .. p2}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v9

    const/4 v14, 0x1

    xor-int/2addr v9, v14

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    .line 1332
    invoke-virtual {v7, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1334
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v7

    if-nez v7, :cond_a

    cmpl-float v1, v2, v8

    if-eqz v1, :cond_9

    .line 1335
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/miui/home/recents/views/FloatingIconView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v6, :cond_8

    .line 1336
    invoke-virtual/range {p8 .. p8}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPreviousRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1337
    invoke-virtual/range {p8 .. p8}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPreviousRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/miui/home/recents/util/Utilities;->getMiddleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    move/from16 v6, p1

    move/from16 v7, p2

    .line 1338
    invoke-static {v6, v7, v1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 1339
    invoke-virtual {v7, v8, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 1340
    invoke-virtual {v5, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    goto :goto_5

    :cond_8
    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 1342
    :goto_5
    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v1, v4}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1343
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    goto :goto_6

    :cond_9
    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 1345
    :goto_6
    invoke-virtual {v7, v8, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 1347
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v1, :cond_c

    if-eqz v3, :cond_c

    .line 1348
    invoke-virtual/range {p15 .. p15}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v15

    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-interface/range {p3 .. p3}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    neg-float v1, v1

    .line 1349
    invoke-virtual {v10, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1351
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Rect;->width()I

    invoke-virtual/range {p15 .. p15}, Landroid/graphics/RectF;->width()F

    .line 1352
    invoke-virtual {v7, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 1353
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    div-float v3, v12, p13

    invoke-virtual {v1, v10, v2, v11, v3}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFF)V

    goto/16 :goto_7

    :cond_a
    move v9, v8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 1357
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v15, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 1358
    sget-object v16, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual/range {v16 .. v16}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v16

    sget-object v17, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 1359
    invoke-virtual/range {v17 .. v17}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v17

    sub-float v17, v15, v17

    const v18, 0x3f8ccccd    # 1.1f

    mul-float v17, v17, v18

    mul-float v17, v17, v13

    add-float v13, v16, v17

    .line 1358
    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v15, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move-object/from16 v13, p14

    .line 1360
    invoke-virtual {v13, v11}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1361
    invoke-virtual {v7, v8, v5, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    if-eqz v3, :cond_b

    .line 1364
    invoke-interface/range {p3 .. p3}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v15

    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    const/high16 v5, 0x40000000    # 2.0f

    .line 1365
    invoke-virtual {v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->isClosedToTarget(F)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1366
    sget-object v5, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v6, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$wM0R63yZZYY0oWIImp4ekv47WVc;

    invoke-direct {v6, v0, v3}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$wM0R63yZZYY0oWIImp4ekv47WVc;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1369
    :cond_b
    iget-object v3, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v3, :cond_c

    cmpg-float v1, v1, v15

    if-gez v1, :cond_c

    .line 1370
    invoke-static/range {p6 .. p6}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v1

    div-float v4, v12, p13

    move-object/from16 p1, v3

    move-object/from16 p2, v1

    move-object/from16 p3, p15

    move/from16 p4, p16

    move/from16 p5, v4

    move/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Lcom/miui/home/recents/FloatingIconLayer;->showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V

    .line 1375
    :cond_c
    :goto_7
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v1

    sub-float v2, v15, v11

    invoke-static {v15, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1376
    invoke-virtual/range {p10 .. p10}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v3

    const/4 v4, 0x1

    .line 1375
    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    return-void
.end method

.method static synthetic lambda$startClosingWindowFromFeedAnimators$9(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 1554
    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 1555
    iget p6, p3, Landroid/graphics/RectF;->top:F

    .line 1556
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 1557
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr v1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1559
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    .line 1560
    invoke-virtual {p3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1561
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic lambda$startClosingWindowToRecentsAnimators$4(Lcom/miui/home/recents/views/TaskView;FFZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    if-eqz p0, :cond_1

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1038
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    :cond_0
    const/4 p2, 0x0

    .line 1040
    invoke-virtual {p0, p2, p2, p1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_1
    if-eqz p3, :cond_2

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move v4, p1

    move v5, p1

    .line 1043
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/RecentsView;->alignTaskViewWhenAppToRecent(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    :cond_2
    return-void
.end method

.method static synthetic lambda$startClosingWindowToRecentsAnimators$5(Lcom/miui/home/launcher/Launcher;ILandroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;FFF)V
    .locals 12

    move-object v0, p2

    move-object v1, p3

    move-object/from16 v6, p10

    .line 1022
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    move v3, p1

    invoke-virtual {v2, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v7

    .line 1023
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1024
    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1025
    iget v3, v7, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 1026
    invoke-virtual {v6, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    move/from16 v0, p13

    goto :goto_0

    :cond_0
    move/from16 v0, p13

    .line 1029
    :goto_0
    invoke-virtual {p3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    .line 1030
    invoke-virtual {v0, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    const/4 v8, 0x0

    .line 1031
    invoke-virtual {v0, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    move/from16 v2, p12

    .line 1032
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object/from16 v0, p4

    move-object/from16 v9, p5

    .line 1033
    invoke-virtual {v0, v9, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 1035
    sget-object v10, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v11, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;

    move-object v0, v11

    move-object/from16 v1, p6

    move/from16 v2, p11

    move/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$OMDab5s94Qvv9vwNMG_qCdCuoO8;-><init>(Lcom/miui/home/recents/views/TaskView;FFZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v10, v11}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1048
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p11

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1049
    invoke-virtual/range {p5 .. p5}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    const/4 v3, 0x1

    .line 1048
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    return-void
.end method

.method static synthetic lambda$startOpeningWindowAnimators$1(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V
    .locals 0

    .line 573
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppWindowAlphaChange(F)V

    return-void
.end method

.method public static synthetic lambda$startOpeningWindowAnimators$2(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;ZLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;IIFZLandroid/graphics/RectF;FFF)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p11

    move/from16 v6, p12

    move/from16 v7, p13

    .line 530
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestEnd()Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object v8, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    move/from16 v11, p14

    goto :goto_1

    .line 538
    :cond_2
    instance-of v11, v8, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v11, :cond_3

    const v11, 0x3e4ccccd    # 0.2f

    div-float v11, v6, v11

    .line 539
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    goto :goto_1

    :cond_3
    const v11, 0x3dcccccd    # 0.1f

    sub-float v11, v6, v11

    const v12, 0x3e4cccce    # 0.20000002f

    div-float/2addr v11, v12

    .line 541
    invoke-static {v9, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 544
    :goto_1
    invoke-virtual {v1, v11}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 546
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v12

    if-eqz v12, :cond_4

    sub-float v12, v10, v6

    const v13, 0x3f333333    # 0.7f

    div-float v13, v12, v13

    .line 547
    invoke-static {v9, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(FF)F

    .line 548
    sget-object v13, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v13}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v13

    sub-float/2addr v13, v10

    const v14, 0x3e99999a    # 0.3f

    sub-float v14, v6, v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v13, v10

    .line 549
    invoke-virtual {v2, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 550
    invoke-virtual {v3, v4, v1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    goto :goto_2

    .line 552
    :cond_4
    invoke-virtual {v3, v4, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 555
    :goto_2
    invoke-virtual/range {p6 .. p6}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 556
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v1

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 557
    invoke-virtual/range {p6 .. p6}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v12

    .line 556
    invoke-virtual {v1, v9, v12, v2}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    .line 560
    :cond_5
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v1, :cond_7

    iget-boolean v9, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsReleaseOpenFloatingIconLayer:Z

    if-nez v9, :cond_7

    cmpg-float v9, v11, v10

    if-gez v9, :cond_6

    .line 562
    invoke-virtual {v3, v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 563
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    invoke-virtual/range {p6 .. p6}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    move/from16 v3, p7

    move/from16 v4, p8

    .line 564
    invoke-static {v3, v4, v5}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    div-float v4, v7, p9

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move/from16 p6, p12

    move/from16 p7, v4

    move/from16 p8, v5

    .line 563
    invoke-virtual/range {p3 .. p8}, Lcom/miui/home/recents/FloatingIconLayer;->showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V

    goto :goto_3

    .line 567
    :cond_6
    invoke-virtual {v1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 568
    iput-boolean v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsReleaseOpenFloatingIconLayer:Z

    :cond_7
    :goto_3
    if-nez p10, :cond_8

    if-eqz v8, :cond_8

    .line 572
    invoke-interface {v8}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->needChangeIconAlpha()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p2, :cond_8

    .line 573
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TJdwyJAuGkjoFVVlVgy56DMOH40;

    invoke-direct {v2, v8, v11}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TJdwyJAuGkjoFVVlVgy56DMOH40;-><init>(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method private launcherIsATargetWithMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 7

    .line 731
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 732
    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 733
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 734
    array-length v2, p1

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 735
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

    .line 740
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncherTaskId(Lcom/miui/home/launcher/Launcher;)I

    move-result v0

    .line 741
    array-length v2, p1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 742
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

    .line 686
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    new-instance v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;-><init>()V

    .line 692
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

    .line 694
    iget-object v4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;->addRemoteAnimation(IILcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V

    .line 697
    new-instance v2, Lcom/android/systemui/shared/recents/system/ActivityCompat;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/recents/system/ActivityCompat;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/recents/system/ActivityCompat;->registerRemoteAnimations(Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;)V

    :cond_1
    return-void
.end method

.method private resetContentView()V
    .locals 2

    .line 1603
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2hQnlAbxai6TefH7dn11Fo4lgcw;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2hQnlAbxai6TefH7dn11Fo4lgcw;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetRecentsContentView()V
    .locals 2

    .line 934
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$mpZpu8uSXUcdboBQ1Eoj5i-8IAo;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$mpZpu8uSXUcdboBQ1Eoj5i-8IAo;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 32

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    const-string v1, "QuickstepAppTransitionManagerImpl"

    const-string v2, "startClosingWindowAnimators"

    .line 1223
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v14

    const/4 v13, 0x0

    if-nez v14, :cond_0

    return-object v13

    .line 1229
    :cond_0
    new-instance v11, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v1, 0x1

    invoke-direct {v11, v0, v1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 1230
    invoke-virtual {v11}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1231
    invoke-virtual {v11}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v13

    .line 1234
    :cond_1
    iget-object v3, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    const-string v4, "closeWindow"

    const-string v5, "navigation_bar"

    invoke-static {v3, v4, v5}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->IS_SUPPORT_MAGIC_WINDOW:Z

    if-eqz v3, :cond_2

    .line 1238
    iget-object v3, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_home_animator"

    invoke-static {v3, v4, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1242
    :cond_2
    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v3

    const-string v4, "window"

    .line 1243
    invoke-virtual {v14, v4}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 1244
    invoke-direct {v15, v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1245
    invoke-static {v3, v4, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    .line 1247
    iget-object v0, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "com.celltick.lockscreen"

    iget-object v5, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    .line 1248
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v5, v1

    goto :goto_0

    :cond_3
    move v5, v10

    :goto_0
    if-eqz v5, :cond_4

    move-object v9, v13

    goto :goto_1

    .line 1249
    :cond_4
    invoke-direct {v15, v14, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->findClosingAnimTarget(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    move-object v9, v0

    .line 1250
    :goto_1
    nop

    instance-of v0, v9, Landroid/view/View;

    if-eqz v0, :cond_5

    move-object v0, v9

    check-cast v0, Landroid/view/View;

    move-object v8, v0

    goto :goto_2

    :cond_5
    move-object v8, v13

    .line 1252
    :goto_2
    invoke-direct {v15, v9}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getIconRect(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1254
    new-instance v6, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    if-eqz v2, :cond_6

    goto :goto_3

    .line 1255
    :cond_6
    invoke-virtual {v11}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    :goto_3
    invoke-virtual {v6, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 1256
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 1257
    invoke-virtual {v6, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1258
    invoke-virtual {v6, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 1260
    new-instance v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1261
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v14, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 1262
    new-instance v16, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct/range {v16 .. v16}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1264
    invoke-static {v14}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    if-eqz v9, :cond_7

    .line 1266
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 1267
    invoke-interface {v9}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v1

    .line 1268
    invoke-virtual {v7, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1270
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v10, v1

    if-eqz v9, :cond_8

    .line 1272
    invoke-static {v9}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F

    move-result v1

    goto :goto_4

    :cond_8
    iget v1, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    :goto_4
    mul-float/2addr v1, v10

    .line 1273
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move/from16 v17, v0

    .line 1274
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1275
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v18

    move/from16 v19, v1

    const/4 v1, 0x0

    if-eqz v18, :cond_9

    .line 1276
    invoke-virtual {v13, v1, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 1278
    invoke-virtual {v0, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v1, 0x3e4ccccd    # 0.2f

    .line 1279
    invoke-static {v0, v1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move/from16 v1, v17

    move/from16 v2, v19

    :goto_5
    const-string v6, "QuickstepAppTransitionManagerImpl"

    move-object/from16 v26, v12

    .line 1281
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "radiusScale = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " , startRadius = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " , endRadius = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "QuickstepAppTransitionManagerImpl"

    .line 1283
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "startClosingWindowAnimators:startRect="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", targetRect="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", currentRotation="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", homeRotation="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", isUseSimpleAnim="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1283
    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    new-instance v15, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object/from16 v17, v15

    move-object/from16 v18, v13

    move-object/from16 v19, v0

    move/from16 v20, v1

    move/from16 v21, v2

    invoke-direct/range {v17 .. v23}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 1290
    instance-of v0, v9, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v0, :cond_a

    const/16 v0, 0x3ea

    goto :goto_6

    :cond_a
    const/16 v0, 0x3e9

    :goto_6
    invoke-virtual {v15, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setProgressCalculateType(I)V

    .line 1292
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v15, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    const/high16 v0, -0x3b060000    # -2000.0f

    const/high16 v1, -0x3a860000    # -4000.0f

    const/4 v2, 0x0

    .line 1294
    invoke-virtual {v15, v2, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    if-eqz v8, :cond_b

    .line 1297
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->savePositionRelativeToAncestor(Landroid/view/View;Landroid/view/View;)V

    .line 1299
    :cond_b
    instance-of v0, v9, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_c

    .line 1300
    move-object v0, v9

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v15, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIconTitle(Lcom/miui/home/launcher/ShortcutIcon;)V

    :cond_c
    if-eqz v8, :cond_d

    .line 1303
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->savePositionRelativeToAncestor(Landroid/view/View;Landroid/view/View;)V

    .line 1305
    :cond_d
    new-instance v13, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$oPhl__MrIIYLQ55RGq8396r4Ouc;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v12, v24

    move v2, v4

    move-object v4, v9

    move-object/from16 v17, v25

    move-object v6, v14

    move-object/from16 v18, v7

    move-object v7, v8

    move-object/from16 v27, v8

    move-object v8, v12

    move-object v12, v9

    move-object v9, v15

    move/from16 v19, v10

    move-object/from16 v10, v17

    move-object/from16 v28, v12

    move-object/from16 v17, v26

    move-object/from16 v12, v18

    move-object/from16 v29, v13

    move-object/from16 v13, v17

    move-object/from16 v30, v14

    move/from16 v14, v19

    move-object/from16 v31, v15

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$oPhl__MrIIYLQ55RGq8396r4Ouc;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)V

    move-object/from16 v1, v29

    move-object/from16 v0, v31

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1379
    new-instance v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;

    move-object/from16 v13, v27

    move-object/from16 v3, v30

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v3, v13}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1453
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1454
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v1

    if-nez v1, :cond_f

    move-object/from16 v13, v28

    if-eqz v13, :cond_e

    const/4 v1, 0x0

    .line 1456
    invoke-static {v3, v13, v1}, Lcom/miui/home/recents/views/FloatingIconView;->getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v13

    move-object v4, v13

    :cond_e
    iput-object v4, v2, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 1457
    iget-object v1, v2, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v1, :cond_f

    .line 1458
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 1461
    :cond_f
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1462
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    goto :goto_7

    .line 1464
    :cond_10
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    :goto_7
    return-object v0
.end method

.method private startClosingWindowFromFeedAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 13

    const-string v0, "QuickstepAppTransitionManagerImpl"

    const-string v1, "startClosingWindowFromFeedAnimators"

    .line 1505
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1510
    :cond_0
    new-instance v2, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 1511
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v1

    .line 1516
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1518
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1519
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 1520
    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 1522
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 1523
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 1524
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    .line 1525
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1526
    invoke-virtual {v3, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 1528
    new-instance v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1529
    iget-object v5, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/DragLayer;

    if-eqz v5, :cond_2

    .line 1531
    new-instance v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v6, v5}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1533
    :cond_2
    sget-object v5, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 1535
    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1537
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

    .line 1539
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1540
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1541
    invoke-virtual {v3, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 1542
    invoke-virtual {v3, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    const-string v0, "QuickstepAppTransitionManagerImpl"

    .line 1544
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

    .line 1547
    new-instance p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 1548
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    const/high16 v0, -0x3b060000    # -2000.0f

    const/high16 v1, -0x3a860000    # -4000.0f

    const/4 v5, 0x0

    .line 1550
    invoke-virtual {p1, v5, v0, v1, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    .line 1552
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$tHAl9z-Z10hlh-yC80XGAYatXu8;

    invoke-direct {v0, v4, v3, v2}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$tHAl9z-Z10hlh-yC80XGAYatXu8;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1565
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1581
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    return-object p1
.end method

.method private startClosingWindowToRecentsAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "QuickstepAppTransitionManagerImpl"

    const-string v3, "startClosingWindowToRecentsAnimators"

    .line 954
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    const/4 v2, 0x0

    if-nez v5, :cond_0

    return-object v2

    .line 960
    :cond_0
    new-instance v10, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v3, 0x1

    invoke-direct {v10, v1, v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 961
    new-instance v8, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 962
    sget-object v4, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    iput-boolean v4, v8, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 963
    invoke-virtual {v10}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v2

    .line 968
    :cond_1
    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_SUPPORT_MAGIC_WINDOW:Z

    if-eqz v2, :cond_2

    .line 969
    iget-object v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "gesture_home_animator"

    invoke-static {v2, v6, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 973
    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 974
    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/RecentsView;

    .line 975
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->findTargetTaskView(Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v15

    .line 977
    invoke-direct {v0, v1, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 979
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v6

    .line 980
    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskStackView;->scrollToDefaultCenterTaskViewIndex()V

    .line 982
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskIndex()I

    move-result v6

    const/4 v14, 0x0

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 983
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 984
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 986
    :cond_3
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-nez v9, :cond_5

    .line 987
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float/2addr v9, v11

    float-to-int v9, v9

    .line 988
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v11

    float-to-int v11, v12

    .line 989
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f400000    # 0.75f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 990
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v13

    float-to-int v3, v3

    .line 987
    invoke-virtual {v7, v9, v11, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 992
    :cond_5
    new-instance v9, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 993
    invoke-virtual {v9, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 994
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    .line 995
    invoke-virtual {v9, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 996
    invoke-virtual {v9, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 998
    invoke-static {v5}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v3

    .line 999
    iget v4, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskViewRadius:F

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v4, v11

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v4, v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v4, v12

    const-string v12, "QuickstepAppTransitionManagerImpl"

    .line 1001
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startClosingWindowToRecentsAnimators:startRect="

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "   targetRect="

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1005
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1007
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_6

    .line 1008
    invoke-virtual {v11, v13, v13}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 1009
    invoke-virtual {v1, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v3, 0x3e4ccccd    # 0.2f

    .line 1010
    invoke-static {v1, v3}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    move/from16 v20, v13

    move/from16 v21, v20

    move/from16 v23, v21

    goto :goto_0

    :cond_6
    move/from16 v20, v3

    move/from16 v21, v4

    const/high16 v23, 0x3f800000    # 1.0f

    .line 1014
    :goto_0
    new-instance v3, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v17, v3

    move-object/from16 v18, v11

    move-object/from16 v19, v1

    invoke-direct/range {v17 .. v23}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 1015
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 1018
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v4

    if-ge v1, v4, :cond_7

    const/16 v16, 0x1

    goto :goto_1

    :cond_7
    move/from16 v16, v14

    :goto_1
    invoke-static/range {v16 .. v16}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result v13

    const v12, 0x3f7ae148    # 0.98f

    .line 1021
    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$-vkUSoo6rNAIMoBv27i92Lak_Kg;

    move-object v4, v1

    move-object v11, v15

    move-object v14, v2

    invoke-direct/range {v4 .. v14}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$-vkUSoo6rNAIMoBv27i92Lak_Kg;-><init>(Lcom/miui/home/launcher/Launcher;ILandroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1052
    new-instance v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;

    invoke-direct {v1, v0, v15}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1072
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    move-object/from16 v1, p2

    const/4 v4, 0x0

    .line 1074
    invoke-virtual {v0, v4, v2, v15, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-object v3
.end method

.method private varargs startEndDetector(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 885
    array-length v0, p3

    if-lez v0, :cond_0

    .line 886
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 887
    invoke-virtual {p1, v2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->hasAnimation()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 892
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    .line 893
    invoke-virtual {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->startDetect()V

    goto :goto_1

    .line 895
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private startIconLaunchAnimator(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 8

    const-string v0, "QuickstepAppTransitionManagerImpl"

    .line 296
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

    .line 298
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    .line 301
    invoke-virtual {p5}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, p2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 307
    new-instance v2, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {v2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 308
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 311
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {v7, p5}, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    .line 310
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 312
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {p1, p5}, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    if-eqz p3, :cond_2

    .line 315
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 317
    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object p3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    aput-object p4, p1, v1

    invoke-direct {p0, p2, p3, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startEndDetector(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    return-void
.end method

.method private startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 3

    const-string v0, "QuickstepAppTransitionManagerImpl"

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLauncherContentAnimator:isAppOpening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    .line 399
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq v1, v2, :cond_3

    .line 400
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->cancelHomeFadeInAnim()V

    .line 403
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShortcutMenuLayerFadeOutAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShortcutMenuLayerFadeInAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 409
    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenStartOpenOrCloseApp(ZLcom/miui/home/launcher/Launcher;)Landroid/animation/ValueAnimator;

    .line 410
    iget-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNeedResetContentView:Z

    if-eqz p1, :cond_3

    .line 411
    new-instance p1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nQMgAD5UW7Hbj8oUkwxIm5eqHn8;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nQMgAD5UW7Hbj8oUkwxIm5eqHn8;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 25

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "QuickstepAppTransitionManagerImpl"

    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startOpeningWindowAnimators:iconLoc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v14, :cond_12

    if-eqz v13, :cond_12

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 438
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->cancelAppToHomeAnim()V

    .line 440
    iget-object v3, v12, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v8

    const-string v3, "window"

    .line 441
    invoke-virtual {v14, v3}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 443
    new-instance v11, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v10, 0x0

    invoke-direct {v11, v0, v10}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 446
    invoke-virtual {v11}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v15

    .line 450
    :cond_1
    new-instance v6, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 451
    invoke-virtual {v6, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    .line 453
    invoke-virtual {v6, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 454
    invoke-virtual {v6, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 456
    iput-object v15, v12, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 458
    instance-of v4, v13, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v4

    if-nez v4, :cond_2

    .line 459
    move-object v4, v13

    check-cast v4, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 460
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v12, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    move-object v7, v4

    goto :goto_0

    :cond_2
    move-object v7, v15

    .line 463
    :goto_0
    invoke-virtual {v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 464
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 465
    iget v3, v4, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 467
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 468
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 469
    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v2, 0x3f6b851f    # 0.92f

    .line 470
    invoke-static {v3, v2}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    goto :goto_1

    .line 472
    :cond_3
    invoke-static {v9, v8, v2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 473
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v16

    if-nez v16, :cond_5

    .line 475
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const/high16 v17, 0x3e800000    # 0.25f

    mul-float v10, v10, v17

    float-to-int v10, v10

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v17

    float-to-int v15, v15

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v17, 0x3f400000    # 0.75f

    mul-float v1, v1, v17

    float-to-int v1, v1

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v17

    float-to-int v13, v13

    .line 474
    invoke-virtual {v2, v10, v15, v1, v13}, Landroid/graphics/Rect;->set(IIII)V

    :cond_5
    if-eqz v7, :cond_6

    .line 482
    invoke-interface {v7}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v1

    .line 483
    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 485
    :cond_6
    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 486
    iget v1, v4, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 489
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 490
    iget-boolean v2, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v13, 0x1

    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 491
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v10, v4, v2

    if-eqz v7, :cond_9

    .line 493
    invoke-static {v7}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F

    move-result v2

    goto :goto_4

    :cond_9
    iget v2, v12, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    :goto_4
    mul-float/2addr v2, v10

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    .line 494
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v1

    .line 495
    :goto_5
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v4

    if-eqz v4, :cond_b

    move v2, v1

    .line 499
    :cond_b
    new-instance v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 500
    sget-object v15, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v14, v15}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v15

    iput-boolean v15, v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 501
    new-instance v23, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct/range {v23 .. v23}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 502
    iget-object v15, v12, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/miui/home/recents/views/FloatingIconView;->isAttachedToWindow()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 503
    iget-object v15, v12, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {v15}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    const/4 v15, 0x0

    .line 504
    iput-object v15, v12, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 507
    :cond_c
    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-eqz v0, :cond_d

    instance-of v0, v7, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    const-string v15, "QuickstepAppTransitionManagerImpl"

    move-object/from16 v24, v14

    .line 508
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p2, v13

    const-string v13, "startOpeningWindowAnimators, currentDisplayRotation="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", homeRotation="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", startRectF="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", endRectF="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", startRadius = "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", endRadius = "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", isUseTranslucentAnim = "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_e

    .line 520
    new-instance v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v13

    move/from16 v18, v1

    move/from16 v19, v1

    invoke-direct/range {v15 .. v21}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    move-object v13, v2

    goto :goto_7

    .line 522
    :cond_e
    new-instance v13, Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    move-object/from16 v18, v5

    move/from16 v19, v2

    move/from16 v20, v1

    invoke-direct/range {v16 .. v22}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 524
    :goto_7
    instance-of v1, v7, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v1, :cond_f

    const/16 v1, 0x3ea

    goto :goto_8

    :cond_f
    const/16 v1, 0x3e9

    :goto_8
    invoke-virtual {v13, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setProgressCalculateType(I)V

    .line 526
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v13, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    const/4 v14, 0x0

    .line 528
    iput-boolean v14, v12, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsReleaseOpenFloatingIconLayer:Z

    .line 529
    new-instance v15, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nvw6n7cxH3Yj_6X7gFV5Xpb7SPc;

    move/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v3, v16

    move-object/from16 v5, v23

    move-object v14, v7

    move-object v7, v11

    const/16 v17, 0x0

    move-object/from16 v18, v11

    move/from16 v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nvw6n7cxH3Yj_6X7gFV5Xpb7SPc;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;ZLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;IIFZ)V

    invoke-virtual {v13, v15}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 577
    new-instance v7, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

    move-object v0, v7

    move/from16 v2, v16

    move-object/from16 v3, v24

    move/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/launcher/Launcher;ZLcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/view/View;)V

    invoke-virtual {v13, v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 670
    instance-of v0, v14, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_10

    .line 671
    move-object v15, v14

    check-cast v15, Lcom/miui/home/launcher/ShortcutIcon;

    goto :goto_9

    :cond_10
    const/4 v15, 0x0

    :goto_9
    if-eqz v15, :cond_11

    .line 673
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 674
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, v15}, Lcom/miui/home/recents/util/RectFSpringAnim;->isSameIconTitle(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result v10

    goto :goto_a

    :cond_11
    move/from16 v10, v17

    .line 676
    :goto_a
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1, v10}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 677
    invoke-virtual {v13}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    return-object v13

    :cond_12
    :goto_b
    move-object v1, v15

    return-object v1
.end method


# virtual methods
.method public breakOpenAnim()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppPairController;->breakAppPairAnimation()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->removeEndRunnable(Ljava/lang/Runnable;)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->removeEndRunnable(Ljava/lang/Runnable;)V

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMoveToTargetRectWhenAnimEnd(Z)V

    :cond_3
    return-void
.end method

.method public clearRemoteAnimationProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-void
.end method

.method protected abstract composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
.end method

.method public doAnimationFinish()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppPairController;->finishAppPairAnimation()V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 348
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 349
    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 352
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 353
    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method public findTargetTaskView(Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;
    .locals 6

    .line 1081
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    .line 1082
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1083
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

    .line 1092
    :cond_2
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    return-object p1
.end method

.method public getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p2

    const-string v1, "QuickstepAppTransitionManagerImpl"

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityLaunchOptions   iconLoc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, v7, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 200
    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->setRotationBerforStart(I)V

    .line 201
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v7, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLaunchingViewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v8

    .line 204
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->finishPendingGestureController()V

    .line 206
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 207
    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object/from16 v1, p1

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 208
    new-instance v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;

    iget-object v2, v7, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZLjava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/graphics/Rect;)V

    if-eqz v8, :cond_0

    const-wide/16 v0, 0x15e

    move-wide v11, v0

    goto :goto_1

    .line 246
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xe6

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x258

    :goto_0
    move-wide v11, v0

    :goto_1
    const-wide/16 v0, 0x78

    sub-long v0, v11, v0

    const-wide/16 v2, 0x60

    sub-long v13, v0, v2

    .line 250
    new-instance v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, v7, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNeedResetContentView:Z

    .line 253
    iget-object v0, v7, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object v0

    :cond_2
    move-object/from16 v1, p1

    .line 255
    invoke-super/range {p0 .. p3}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    return-object v0
.end method

.method protected abstract isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
.end method

.method protected isModeFromNewHome([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionFeedModeHelper;->isModeFromNewHome(Landroid/content/Context;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p1

    return p1
.end method

.method protected isNewHomeOverlayAttachedAndEnable()Z
    .locals 3

    .line 787
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 791
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isOverlayAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
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

    .line 779
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 783
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

    .line 703
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

.method public onCreateWallpaperOpenAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)Z
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFsGestureStart()V
    .locals 1

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNeedResetContentView:Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 708
    invoke-super {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->release()V

    const/4 v0, 0x0

    .line 709
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    .line 710
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    .line 711
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLaunchingViewRef:Ljava/lang/ref/WeakReference;

    .line 712
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 713
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 714
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v1, :cond_0

    .line 715
    invoke-virtual {v1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 716
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 718
    :cond_0
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 719
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 720
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->releaseAnim()V

    .line 721
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 722
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 5

    .line 1476
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 1477
    iget-boolean v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    const-string v2, "QuickstepAppTransitionManagerImpl"

    .line 1479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetShortcutIconAlpha, icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isNeedResetIcon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsOpenAnimRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isOpeningTheSameIcon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 1485
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1486
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->invalidateAdaptiveIconDrawable(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    :cond_3
    return-void
.end method

.method public setRemoteAnimationProvider(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V
    .locals 1

    .line 378
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 379
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$0hd7dLizcINlHoqEqInuns_g_as;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$0hd7dLizcINlHoqEqInuns_g_as;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method public startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 9

    .line 900
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    .line 906
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

    .line 908
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xb4

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    if-eqz v3, :cond_5

    .line 910
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

    .line 914
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

    .line 920
    new-instance p2, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$dIqAYnFB-oSVl3P-lry2-HPaUCI;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$dIqAYnFB-oSVl3P-lry2-HPaUCI;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p4, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_6
    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    .line 922
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTopPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.miui.newhome"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    .line 924
    new-instance p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$3;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$3;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p4, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method
