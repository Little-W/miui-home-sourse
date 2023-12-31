.class public abstract Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;
.super Lcom/miui/home/recents/LauncherAppTransitionManager;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;
    }
.end annotation


# static fields
.field private static TRANSLUCENT_PACKAGE:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field mIsDoAnimationFinish:Z

.field private mIsRegisterRemoteTransition:Z

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

.field private mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

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

.field private mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

.field private mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

.field private mStartMinusOneScreenScrollX:F

.field private mStartWorkspaceScrollX:F

.field mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

.field mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

.field private final mTimeoutResetRunnable:Ljava/lang/Runnable;

.field private mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->TRANSLUCENT_PACKAGE:Ljava/util/ArrayList;

    .line 558
    sget-object v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->TRANSLUCENT_PACKAGE:Ljava/util/ArrayList;

    const-string v1, "com.android.quicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 158
    iput v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    .line 207
    sget-object v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$o2KgZS_OdoFS7NI4fodVCVdxC10;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$o2KgZS_OdoFS7NI4fodVCVdxC10;

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTimeoutResetRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsDoAnimationFinish:Z

    .line 177
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    .line 184
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRtl:Z

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    .line 190
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->registerRemoteAnimations()V

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->registerRemoteTransitions()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isLaunchAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->launcherIsATargetWithMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/util/RemoteAnimationProvider;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)Lcom/miui/home/recents/util/RemoteAnimationProvider;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowToRecentsAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowFromFeedAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startEndDetector(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F
    .locals 0

    .line 119
    iput p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mStartWorkspaceScrollX:F

    return p1
.end method

.method static synthetic access$1602(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F
    .locals 0

    .line 119
    iput p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mStartMinusOneScreenScrollX:F

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/Runnable;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTimeoutResetRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->boostGesture(Lcom/miui/home/launcher/Launcher;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;I)V
    .locals 0

    .line 119
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startIconLaunchAnimator(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/views/FloatingIconView;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingAnimTargetRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingAnimTargetRef:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->invalidateAdaptiveIconDrawable(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method

.method private boostGesture(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1332
    invoke-static {}, Lcom/miui/home/launcher/util/BoostRtHelper;->getInstance()Lcom/miui/home/launcher/util/BoostRtHelper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/util/BoostRtHelper;->boostGesture(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private cancelHomeFadeInAnim()V
    .locals 1

    .line 2044
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2045
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2046
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->cancelHomeFadeInAnim()V

    :cond_0
    return-void
.end method

.method private findClosingAnimTarget(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1700
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1704
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 1708
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {v1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1710
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isIconLayoutFromSoscChange(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 1714
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->findClosingWidgetView(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1716
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getClosingShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method private findClosingWidgetView(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1663
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    iget v1, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {p0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getRecentTasks(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    .line 1664
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, ""

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 1665
    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v4, p2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v3, v4, :cond_1

    .line 1666
    iget-object v1, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1667
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1670
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    .line 1673
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    .line 1676
    :cond_4
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object p0

    .line 1677
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->getWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v0

    .line 1681
    :cond_5
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenId()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getScreenId()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-nez p1, :cond_6

    .line 1682
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->isMatchClosingAppPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1683
    invoke-virtual {p0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;->getStartActivityWidgetView()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method private finishPendingGestureController()V
    .locals 1

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->finishPendingController()V

    .line 202
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->finishEnterRecentsNow()V

    .line 203
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishSoscEnterRecentsNow()V

    :cond_0
    return-void
.end method

.method private getClosingShortcutIcon(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 3

    .line 1636
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1637
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 1641
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getTask(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->clearRecentsTaskLoadPlan()V

    .line 1644
    invoke-direct {p0, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getTask(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    :cond_1
    const-string p0, "QuickstepAppTransitionManagerImpl"

    if-eqz v0, :cond_2

    .line 1647
    iget-object p2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    .line 1648
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 1649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClosingShortcutIcon:CloseShortcutIconUtils.getCloseShortcutIcon  cn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-static {p2, v0, p1}, Lcom/miui/home/recents/CloseShortcutIconUtils;->getCloseShortcutIcon(Landroid/content/ComponentName;ILcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "getClosingShortcutIcon:null"

    .line 1654
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v1
.end method

.method private getHomeStackBound()Landroid/graphics/Rect;
    .locals 3

    .line 547
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    .line 551
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p0
.end method

.method private getIconRect(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    const/4 p0, 0x2

    if-eqz p2, :cond_2

    .line 1594
    iget p2, p3, Landroid/graphics/Rect;->left:I

    if-gtz p2, :cond_1

    iget p2, p3, Landroid/graphics/Rect;->top:I

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p0

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 1602
    :try_start_0
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageViewOriginalLocation()Landroid/graphics/Rect;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p3, "QuickstepAppTransitionManagerImpl"

    const-string v0, "can\'t get icon location"

    .line 1604
    invoke-static {p3, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1605
    invoke-static {p0, p2}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect(II)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_2

    .line 1608
    :cond_3
    invoke-static {p0, p2}, Lcom/miui/home/launcher/DeviceConfig;->getClosingAppDefaultDisappearRect(II)Landroid/graphics/Rect;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getLauncherTaskId(Lcom/miui/home/launcher/Launcher;)I
    .locals 2

    .line 1126
    new-instance p0, Ljava/util/concurrent/FutureTask;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$JlRmIwFJon_2LVXwNCTGHSdpCyM;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$JlRmIwFJon_2LVXwNCTGHSdpCyM;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1127
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1f4

    .line 1130
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLauncherTaskId: exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickstepAppTransitionManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 1133
    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static getRecentTasks(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    .line 1614
    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    .line 1615
    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/RecentsModel;->getSmartRecentsTaskLoadPlan(Landroid/content/Context;I)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1617
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1619
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getTask(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1626
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-static {p0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getRecentTasks(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    .line 1627
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    .line 1628
    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v3, p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;
    .locals 9

    .line 442
    new-instance p0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p1, :cond_0

    return-object p0

    .line 447
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 448
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v1

    const-string v3, "QuickstepAppTransitionManagerImpl"

    if-eqz v1, :cond_6

    .line 449
    iget-object p1, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, p1, v2

    if-eqz p2, :cond_2

    .line 453
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 454
    invoke-virtual {v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 455
    invoke-virtual {v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v4

    .line 456
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    .line 458
    :cond_1
    iget-object v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 461
    :cond_2
    iget-object v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    :goto_1
    if-eqz v5, :cond_3

    .line 464
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_3

    .line 465
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_3

    .line 466
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 470
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWindowTargetBounds    hasMultiTask    bounds="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 473
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getWindowTargetBounds    hasMultiTask    defaultBounds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 477
    :cond_6
    iget-object p1, p1, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v1, p1

    :goto_2
    if-ge v2, v1, :cond_a

    aget-object v4, p1, v2

    if-eqz p2, :cond_8

    .line 481
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 482
    invoke-virtual {v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 483
    invoke-virtual {v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v4

    .line 484
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    .line 486
    :cond_7
    iget-object v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    goto :goto_3

    .line 489
    :cond_8
    iget-object v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    :goto_3
    if-eqz v5, :cond_9

    .line 492
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_9

    .line 493
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_9

    .line 494
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 495
    iget p0, v5, Landroid/graphics/Rect;->left:I

    iget p1, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 496
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWindowTargetBounds    bounds="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 500
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getWindowTargetBounds    defaultBounds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private hasControlRemoteAppTransitionPermission()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private invalidateAdaptiveIconDrawable(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 2016
    instance-of p0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p0, :cond_0

    .line 2017
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->invalidateAdaptiveIconDrawable()V

    :cond_0
    return-void
.end method

.method private isIconLayoutFromSoscChange(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    const-string p0, "QuickstepAppTransitionManagerImpl"

    if-nez p1, :cond_0

    const-string p1, "isIconLayoutFromSoscChange: launcher is null, return false"

    .line 1690
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1693
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInSoscing()Z

    move-result p1

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isIconLayoutFromSoscChange: isIconLayout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private isInAppModeGesture()Z
    .locals 1

    .line 2168
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2169
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2170
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isInAppModeGesture()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLaunchAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->isOpenAppFromWidget([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void
.end method

.method public static synthetic lambda$JlRmIwFJon_2LVXwNCTGHSdpCyM(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$dIqAYnFB-oSVl3P-lry2-HPaUCI(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetRecentsContentView()V

    return-void
.end method

.method static synthetic lambda$getWallpaperOpenRunner$7()V
    .locals 4

    .line 1177
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isAnimRunning()Z

    move-result v0

    const-string v1, "QuickstepAppTransitionManagerImpl"

    if-eqz v0, :cond_0

    const-string v0, "run setConnectAnimRunnable isAnimRunning return"

    .line 1178
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1181
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_3

    .line 1183
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "run setConnectAnimRunnable"

    .line 1187
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1189
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1190
    invoke-virtual {v2}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1191
    invoke-virtual {v2}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    .line 1193
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v2

    .line 1194
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 1193
    invoke-virtual {v2, v0, v3, v1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->connectOpeningAnim(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;Lcom/miui/home/recents/GestureStateMachine;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "run setConnectAnimRunnable anim is null or not running"

    .line 1184
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$nQMgAD5UW7Hbj8oUkwxIm5eqHn8(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetContentView()V

    return-void
.end method

.method static synthetic lambda$new$0()V
    .locals 2

    const-string v0, "QuickstepAppTransitionManagerImpl"

    const-string v1, "error, wait for callback timeout"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 209
    invoke-static {v0}, Lcom/miui/home/launcher/Application;->updateClickAppWaitForCallbackValue(Z)V

    return-void
.end method

.method static synthetic lambda$openAnimUpdate$5(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V
    .locals 0

    .line 957
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onLaunchAppWindowAlphaChange(F)V

    return-void
.end method

.method static synthetic lambda$registerRemoteTransitions$6()V
    .locals 3

    .line 1003
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    const-string v1, "QuickstepAppTransitionManagerImpl"

    const-string v2, "run stop running anim runnable"

    .line 1005
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 1009
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1010
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRecentAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 1012
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isExitAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getExitAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_2
    return-void
.end method

.method static synthetic lambda$startClosingWindowFromFeedAnimators$13(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 2100
    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 2101
    iget p6, p3, Landroid/graphics/RectF;->top:F

    .line 2102
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 2103
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr v1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    .line 2105
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    .line 2106
    invoke-virtual {p3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 2107
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic lambda$startClosingWindowToRecentsAnimators$10(Lcom/miui/home/launcher/Launcher;IZLandroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;FFF)V
    .locals 13

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v7, p11

    .line 1490
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    move v3, p1

    invoke-virtual {v2, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v8

    if-nez p2, :cond_0

    .line 1492
    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1493
    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 1494
    invoke-virtual {v7, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    move/from16 v0, p14

    .line 1497
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    .line 1498
    invoke-virtual {v0, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    const/4 v9, 0x0

    .line 1499
    invoke-virtual {v0, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v0

    move/from16 v2, p13

    .line 1500
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object/from16 v0, p5

    move-object/from16 v10, p6

    .line 1501
    invoke-virtual {v0, v10, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 1503
    sget-object v11, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v12, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$JEgl4nBDUN7n2q4fAM36RI5vbOA;

    move-object v0, v12

    move-object/from16 v1, p7

    move/from16 v2, p12

    move/from16 v3, p8

    move/from16 v4, p9

    move v5, p2

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$JEgl4nBDUN7n2q4fAM36RI5vbOA;-><init>(Lcom/miui/home/recents/views/TaskView;FFZZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {v11, v12}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1516
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p12

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1517
    invoke-virtual/range {p6 .. p6}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    const/4 v3, 0x1

    .line 1516
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    return-void
.end method

.method static synthetic lambda$startClosingWindowToRecentsAnimators$9(Lcom/miui/home/recents/views/TaskView;FFZZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    if-eqz p0, :cond_1

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1506
    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    :cond_0
    const/4 p2, 0x0

    .line 1508
    invoke-virtual {p0, p2, p2, p1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_1
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    move-object v0, p5

    move-object v1, p0

    move-object v2, p6

    move-object v3, p7

    move v4, p1

    move v5, p1

    .line 1511
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/RecentsView;->alignTaskViewWhenAppToRecent(Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V

    :cond_2
    return-void
.end method

.method private launcherIsATargetWithMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 6

    .line 1093
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1094
    array-length p0, p1

    move v0, v1

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v3, p1, v0

    .line 1095
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isHomeActivityType()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 1102
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 1103
    array-length v3, p1

    if-lt v3, v2, :cond_6

    .line 1104
    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1105
    array-length p0, p1

    move v3, v1

    :goto_1
    if-ge v3, p0, :cond_6

    aget-object v4, p1, v3

    .line 1106
    iget v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v5, p2, :cond_3

    iget-object v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1111
    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncherTaskId(Lcom/miui/home/launcher/Launcher;)I

    move-result p0

    .line 1112
    array-length v0, p1

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_6

    aget-object v4, p1, v3

    .line 1113
    iget v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v5, p2, :cond_5

    iget v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    if-ne v4, p0, :cond_5

    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return v1
.end method

.method private static modifyRectFToHome(Lcom/miui/home/recents/util/ClipAnimationHelper;Landroid/graphics/RectF;)V
    .locals 1

    .line 874
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 877
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static openAnimUpdate(Landroid/graphics/RectF;Landroid/view/View;FFFZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/FloatingIconView;Lcom/miui/home/recents/FloatingIconLayer;Landroid/graphics/Rect;IIFZZFIZ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move/from16 v9, p21

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    move/from16 v12, p4

    goto :goto_0

    :cond_0
    const v12, 0x3dcccccd    # 0.1f

    sub-float v12, v1, v12

    const v13, 0x3e4cccce    # 0.20000002f

    div-float/2addr v12, v13

    .line 908
    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    if-eqz v3, :cond_1

    .line 911
    invoke-interface/range {p6 .. p6}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->needChangeIconAlpha()Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz p22, :cond_1

    move v12, v11

    .line 915
    :cond_1
    :goto_0
    invoke-virtual {v5, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    invoke-virtual {v13, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 917
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v13

    if-eqz v13, :cond_3

    sub-float v8, v11, v1

    const v13, 0x3f333333    # 0.7f

    div-float v13, v8, v13

    .line 918
    invoke-static {v10, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    .line 919
    sget-object v13, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v13}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v13

    sub-float/2addr v13, v11

    const v14, 0x3e99999a    # 0.3f

    sub-float v14, v1, v14

    invoke-static {v10, v14}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float/2addr v13, v10

    add-float/2addr v13, v11

    .line 920
    invoke-virtual {v6, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 921
    invoke-virtual {v4, v7, v5, v6, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;I)Landroid/graphics/RectF;

    if-eqz p13, :cond_6

    .line 922
    invoke-virtual/range {p13 .. p13}, Lcom/miui/home/recents/FloatingIconLayer;->isReleaseOpenFloatingIconLayer()Z

    move-result v5

    if-nez v5, :cond_6

    cmpg-float v5, v12, v11

    if-gez v5, :cond_2

    .line 924
    invoke-static {v4, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->modifyRectFToHome(Lcom/miui/home/recents/util/ClipAnimationHelper;Landroid/graphics/RectF;)V

    .line 925
    invoke-virtual/range {p11 .. p11}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v4

    move/from16 v5, p15

    move/from16 v6, p16

    .line 926
    invoke-static {v5, v6, p0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    div-float v2, v2, p17

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 p7, p13

    move-object/from16 p8, v4

    move-object/from16 p9, v0

    move/from16 p10, p2

    move/from16 p11, v2

    move/from16 p12, v5

    .line 925
    invoke-virtual/range {p7 .. p12}, Lcom/miui/home/recents/FloatingIconLayer;->showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V

    goto :goto_1

    .line 929
    :cond_2
    invoke-virtual/range {p13 .. p13}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    .line 933
    invoke-virtual/range {p12 .. p12}, Lcom/miui/home/recents/views/FloatingIconView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    .line 934
    new-instance v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v6, v8}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    const/4 v6, 0x0

    .line 935
    invoke-virtual {v8, v6}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    :cond_4
    const/4 v6, 0x0

    .line 937
    invoke-virtual {v4, v7, v5, v6, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;I)Landroid/graphics/RectF;

    if-eqz v8, :cond_6

    if-eqz v3, :cond_6

    .line 939
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v5

    if-nez v5, :cond_5

    .line 940
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v11

    invoke-virtual/range {p14 .. p14}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface/range {p6 .. p6}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    neg-float v5, v5

    .line 941
    invoke-virtual {p0, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 944
    :cond_5
    invoke-static {v4, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->modifyRectFToHome(Lcom/miui/home/recents/util/ClipAnimationHelper;Landroid/graphics/RectF;)V

    div-float v2, v2, p17

    .line 945
    invoke-virtual {v8, p0, v11, v1, v2}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFF)V

    :cond_6
    :goto_1
    if-nez p18, :cond_7

    if-eqz v3, :cond_7

    .line 955
    invoke-interface/range {p6 .. p6}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->needChangeIconAlpha()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p5, :cond_7

    .line 957
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$M0mWr1Lki0A6eeJ3YK8oPgsQQf0;

    invoke-direct {v1, v3, v12}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$M0mWr1Lki0A6eeJ3YK8oPgsQQf0;-><init>(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method private registerRemoteAnimations()V
    .locals 9

    .line 975
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 979
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    new-instance v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;-><init>()V

    .line 981
    new-instance v8, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWallpaperOpenRunner(Z)Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    move-result-object v3

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    iput-object v8, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    const/16 v2, 0xd

    const/4 v3, 0x1

    .line 983
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;->addRemoteAnimation(IILcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V

    .line 986
    new-instance p0, Lcom/android/systemui/shared/recents/system/ActivityCompat;

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/system/ActivityCompat;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/recents/system/ActivityCompat;->registerRemoteAnimations(Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;)V

    :cond_1
    return-void
.end method

.method private resetContentView()V
    .locals 2

    .line 2149
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2153
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$GUYhL4JuDhJzDEiUX18c6gelkQY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$GUYhL4JuDhJzDEiUX18c6gelkQY;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetRecentsContentView()V
    .locals 2

    .line 1386
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SB8LB6PS0vckoIxf7myELVsYL_A;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SB8LB6PS0vckoIxf7myELVsYL_A;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shouldAppToRecentsAnimToCenter(Lcom/miui/home/launcher/Launcher;)Z
    .locals 2

    .line 1402
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 1405
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result p0

    const-string v1, "window"

    .line 1406
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 1407
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 36

    move-object/from16 v15, p0

    const-string v0, "QuickstepAppTransitionManagerImpl"

    const-string v1, "startClosingWindowAnimators"

    .line 1725
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v14

    const/4 v13, 0x0

    if-nez v14, :cond_0

    return-object v13

    .line 1731
    :cond_0
    new-instance v12, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v1, 0x1

    move-object/from16 v2, p1

    invoke-direct {v12, v2, v1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 1732
    invoke-virtual {v12}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1733
    invoke-virtual {v12}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v13

    .line 1736
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v3

    .line 1737
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSplitMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v12, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    array-length v4, v4

    if-ne v4, v1, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v10, v1

    :goto_2
    xor-int/lit8 v9, v3, 0x1

    .line 1740
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v3

    invoke-virtual {v12}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setIsAppPairAnim(Z)V

    if-eqz v10, :cond_5

    .line 1743
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 1744
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureSoscController;->startForbidLaunchSplit()V

    .line 1747
    :cond_5
    iget-object v3, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    const-string v4, "closeWindow"

    const-string v5, "navigation_bar"

    invoke-static {v3, v4, v5}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->IS_SUPPORT_MAGIC_WINDOW:Z

    if-eqz v3, :cond_6

    .line 1751
    iget-object v3, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_home_animator"

    invoke-static {v3, v4, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1755
    :cond_6
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1756
    invoke-static/range {p2 .. p2}, Lcom/miui/home/recents/TaskViewUtils;->hideDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 1759
    :cond_7
    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v6

    const-string v3, "window"

    .line 1760
    invoke-virtual {v14, v3}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 1761
    invoke-direct {v15, v12, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;

    move-result-object v3

    .line 1762
    invoke-static {v6, v5, v3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v2, :cond_8

    .line 1764
    iget-object v4, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object v4, v13

    :goto_3
    const-string v7, "com.celltick.lockscreen"

    .line 1765
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 1767
    invoke-virtual {v12}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v7

    if-nez v7, :cond_b

    if-eqz v10, :cond_9

    if-nez v6, :cond_b

    .line 1769
    :cond_9
    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->isShowingUserPresentAnimation()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    move v7, v1

    :goto_5
    if-eqz v7, :cond_c

    move-object v7, v13

    goto :goto_6

    .line 1771
    :cond_c
    invoke-direct {v15, v14, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->findClosingAnimTarget(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v7

    .line 1772
    :goto_6
    instance-of v13, v7, Landroid/view/View;

    if-eqz v13, :cond_d

    move-object v13, v7

    check-cast v13, Landroid/view/View;

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    .line 1774
    :goto_7
    invoke-direct {v15, v7, v10, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getIconRect(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 1776
    new-instance v1, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    if-eqz v2, :cond_e

    goto :goto_8

    .line 1777
    :cond_e
    invoke-virtual {v12}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    :goto_8
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    const/4 v2, 0x1

    .line 1778
    invoke-virtual {v1, v12, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)V

    .line 1779
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    .line 1780
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1781
    invoke-virtual {v1, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    move-object/from16 v19, v12

    .line 1783
    new-instance v12, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1784
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v14, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    iput-boolean v2, v12, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 1785
    new-instance v20, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct/range {v20 .. v20}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1787
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v2

    int-to-float v2, v2

    move/from16 p2, v2

    if-eqz v7, :cond_f

    .line 1789
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 1790
    invoke-interface {v7}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v2

    .line 1791
    invoke-virtual {v11, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    :cond_f
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v21, v9

    .line 1793
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v9, v2

    if-eqz v7, :cond_10

    .line 1795
    invoke-static {v7}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F

    move-result v2

    goto :goto_9

    :cond_10
    iget v2, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    :goto_9
    mul-float/2addr v2, v9

    move/from16 v22, v2

    .line 1796
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v29, v8

    .line 1797
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1798
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v23

    const/4 v15, 0x0

    if-eqz v23, :cond_11

    .line 1799
    invoke-virtual {v2, v15, v15}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 1801
    invoke-virtual {v8, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v15, 0x3e4ccccd    # 0.2f

    .line 1802
    invoke-static {v8, v15}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    move-object/from16 v30, v3

    move-object/from16 p2, v4

    const/4 v4, 0x0

    const/4 v15, 0x0

    goto :goto_a

    :cond_11
    move/from16 v15, p2

    move-object/from16 v30, v3

    move-object/from16 p2, v4

    move/from16 v4, v22

    .line 1804
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v12

    const-string v12, "radiusScale = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " , startRadius = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " , endRadius = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startClosingWindowAnimators:startRect="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", targetRect="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", currentRotation="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", homeRotation="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", isUseSimpleAnim="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isSingleSideBack= "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1806
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    new-instance v12, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    move-object/from16 v22, v12

    move-object/from16 v23, v2

    move-object/from16 v24, v8

    move/from16 v25, v15

    move/from16 v26, v4

    invoke-direct/range {v22 .. v28}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 1814
    instance-of v0, v7, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v0, :cond_12

    const/16 v0, 0x3ea

    goto :goto_b

    :cond_12
    const/16 v0, 0x3e9

    :goto_b
    invoke-virtual {v12, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setProgressCalculateType(I)V

    .line 1816
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v12, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    const/high16 v0, -0x3a860000    # -4000.0f

    const/4 v3, 0x0

    .line 1818
    invoke-virtual {v12, v3, v3, v0, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    if-eqz v13, :cond_13

    .line 1821
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v14}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->savePositionRelativeToAncestor(Landroid/view/View;Landroid/view/View;)V

    :cond_13
    if-eqz v10, :cond_15

    .line 1826
    invoke-virtual {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v0, v3, :cond_14

    const/4 v0, 0x1

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    goto :goto_d

    :cond_15
    if-ne v6, v5, :cond_16

    const/4 v0, 0x1

    goto :goto_c

    :cond_16
    const/4 v0, 0x0

    .line 1828
    :goto_c
    invoke-virtual {v1, v0, v8, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->shouldVerticalClip(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    .line 1830
    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v15, v31

    invoke-virtual {v15, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1832
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v10, :cond_17

    if-nez v6, :cond_17

    if-eqz v30, :cond_17

    .line 1834
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x4019999a    # 2.4f

    div-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_17

    const-string v0, "com.android.settings"

    move-object/from16 v4, p2

    .line 1835
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v18, 0x1

    goto :goto_e

    :cond_17
    const/16 v18, 0x0

    .line 1837
    :goto_e
    new-instance v4, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;

    move-object v0, v4

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    const/16 v23, 0x0

    move-object v3, v8

    move-object v8, v4

    move-object v4, v12

    move-object/from16 p1, v7

    move-object/from16 v32, v8

    move-object/from16 v24, v29

    move/from16 v8, v16

    move/from16 p2, v21

    move/from16 v21, v9

    move-object v9, v14

    move/from16 v16, v10

    move-object v10, v13

    move-object/from16 v23, v11

    move-object v11, v15

    move-object/from16 v33, v12

    move-object/from16 v15, v19

    move-object/from16 v12, v22

    move-object/from16 v34, v13

    move-object v13, v15

    move-object v15, v14

    move/from16 v14, v16

    move-object/from16 v35, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v24

    move/from16 v17, v21

    move-object/from16 v19, v20

    move/from16 v20, p2

    invoke-direct/range {v0 .. v20}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$SKbNLnsgteIkLoEKYkBUxdKyNBc;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/miui/home/recents/util/RectFSpringAnim;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLandroid/graphics/Rect;Landroid/graphics/Rect;FZLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Z)V

    move-object/from16 v1, v32

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1916
    new-instance v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v13, v34

    move-object/from16 v3, v35

    invoke-direct {v1, v2, v4, v3, v13}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1999
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2000
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v1

    if-nez v1, :cond_19

    move-object/from16 v13, p1

    if-eqz v13, :cond_18

    const/4 v1, 0x0

    .line 2002
    invoke-static {v3, v13, v1}, Lcom/miui/home/recents/views/FloatingIconView;->getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v13

    goto :goto_f

    :cond_18
    move-object v13, v4

    :goto_f
    iput-object v13, v2, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 2003
    iget-object v1, v2, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v1, :cond_19

    .line 2004
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 2007
    :cond_19
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2008
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    goto :goto_10

    .line 2010
    :cond_1a
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    :goto_10
    return-object v0
.end method

.method private startClosingWindowFromFeedAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 13

    const-string v0, "QuickstepAppTransitionManagerImpl"

    const-string v1, "startClosingWindowFromFeedAnimators"

    .line 2051
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2056
    :cond_0
    new-instance v3, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 2057
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    .line 2062
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 2064
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2065
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2066
    iget v5, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2068
    new-instance v5, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 2069
    invoke-virtual {v5, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 2070
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 2071
    invoke-virtual {v5, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 2072
    invoke-virtual {v5, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 2074
    new-instance p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {p1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 2075
    iget-object v6, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/DragLayer;

    if-eqz v6, :cond_2

    .line 2077
    new-instance v7, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v7, v6}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 2079
    :cond_2
    sget-object v6, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v1, v6}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 2081
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v1

    int-to-float v9, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2083
    iget v6, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    mul-float/2addr v6, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v6, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v6, v1

    .line 2085
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2086
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2087
    invoke-virtual {v5, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 2088
    invoke-virtual {v5, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 2090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startClosingWindowFromFeedAnimators:startRect="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   targetRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 2094
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    const/high16 v1, -0x3a860000    # -4000.0f

    const/4 v2, 0x0

    .line 2096
    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    .line 2098
    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nLwl32H4xAmkLQz1q4ds6E4nU6I;

    invoke-direct {v1, p1, v5, v3}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nLwl32H4xAmkLQz1q4ds6E4nU6I;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2111
    new-instance p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2127
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    return-object v0
.end method

.method private startClosingWindowToRecentsAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string v1, "QuickstepAppTransitionManagerImpl"

    const-string v2, "startClosingWindowToRecentsAnimators"

    .line 1416
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    const/16 v23, 0x0

    if-nez v5, :cond_0

    return-object v23

    .line 1422
    :cond_0
    new-instance v2, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 1423
    new-instance v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1424
    sget-object v6, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 1425
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v23

    .line 1430
    :cond_1
    sget-boolean v7, Lcom/miui/home/launcher/DeviceConfig;->IS_SUPPORT_MAGIC_WINDOW:Z

    if-eqz v7, :cond_2

    .line 1431
    iget-object v7, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "gesture_home_animator"

    invoke-static {v7, v8, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSecure(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1435
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1436
    invoke-static/range {p2 .. p2}, Lcom/miui/home/recents/TaskViewUtils;->hideDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 1439
    :cond_3
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1440
    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/miui/home/recents/views/RecentsView;

    .line 1441
    invoke-virtual {v10, v9, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->findTargetTaskView(Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v24

    .line 1443
    invoke-direct {v10, v2, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 1445
    invoke-virtual {v9}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v7

    .line 1446
    invoke-virtual {v7}, Lcom/miui/home/recents/views/TaskStackView;->scrollToDefaultCenterTaskViewIndex()V

    .line 1448
    invoke-virtual {v9}, Lcom/miui/home/recents/views/RecentsView;->getRunningTaskIndex()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1449
    invoke-virtual {v9}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 1450
    invoke-virtual {v9}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 1452
    :cond_4
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-nez v11, :cond_6

    .line 1453
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 1454
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v12, v13

    .line 1455
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f400000    # 0.75f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 1456
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v14

    float-to-int v8, v8

    .line 1453
    invoke-virtual {v15, v11, v12, v13, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1458
    :cond_6
    new-instance v8, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 1459
    invoke-virtual {v8, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 1460
    invoke-virtual {v8, v2, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)V

    .line 1461
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 v6, 0x0

    .line 1462
    invoke-virtual {v8, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1463
    invoke-virtual {v8, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 1465
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v11

    int-to-float v11, v11

    .line 1466
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getTaskViewCornerRadius()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v12, v14

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    .line 1468
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startClosingWindowToRecentsAnimators:startRect="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "   targetRect="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1472
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v15}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1474
    invoke-direct {v10, v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->shouldAppToRecentsAnimToCenter(Lcom/miui/home/launcher/Launcher;)Z

    move-result v25

    const/4 v3, 0x0

    if-eqz v25, :cond_7

    .line 1476
    invoke-virtual {v1, v3, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 1477
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v11, 0x3e4ccccd    # 0.2f

    .line 1478
    invoke-static {v0, v11}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    move/from16 v19, v3

    move/from16 v20, v19

    move/from16 v22, v20

    goto :goto_0

    :cond_7
    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v22, v13

    .line 1482
    :goto_0
    new-instance v3, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v22}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 1483
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v3, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 1486
    invoke-virtual {v9}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v0

    invoke-virtual {v9}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v6

    :goto_1
    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isUseTaskStackLayoutStyleHorizontalAnim(Z)Z

    move-result v26

    const v20, 0x3f7ae148    # 0.98f

    .line 1489
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;

    move-object v11, v0

    move-object v12, v5

    move v13, v7

    move/from16 v14, v25

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    move-object/from16 v18, v2

    move-object/from16 v19, v24

    move/from16 v21, v26

    move-object/from16 v22, v9

    invoke-direct/range {v11 .. v22}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cc3FGzhX7P78oB_6sxaABkEKxps;-><init>(Lcom/miui/home/launcher/Launcher;IZLandroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {v3, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1520
    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v8

    .line 1521
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->hasMultiTask()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    move v4, v6

    .line 1522
    :goto_2
    new-instance v11, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v12, v3

    move/from16 v3, v25

    move v13, v6

    move/from16 v6, v26

    move v14, v7

    move v7, v8

    move v8, v14

    move-object v14, v9

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/views/TaskView;ZZLcom/miui/home/launcher/Launcher;ZIILcom/miui/home/recents/views/RecentsView;)V

    invoke-virtual {v12, v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1549
    invoke-virtual {v12}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    move-object/from16 v0, p3

    if-eqz v25, :cond_a

    move-object/from16 v1, v23

    goto :goto_3

    :cond_a
    move-object/from16 v1, v24

    .line 1551
    :goto_3
    invoke-virtual {v10, v13, v14, v1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-object v12
.end method

.method private varargs startEndDetector(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1337
    array-length p0, p3

    if-lez p0, :cond_0

    .line 1338
    array-length p0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-object v1, p3, v0

    .line 1339
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1343
    invoke-virtual {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->hasAnimation()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1344
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    .line 1345
    invoke-virtual {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->startDetect()V

    goto :goto_1

    .line 1347
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private startIconLaunchAnimator(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;I)V
    .locals 9

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startIconLaunchAnimator:launcherClosing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   iconLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickstepAppTransitionManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 352
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v1, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 360
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 361
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getExitAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setSkipCallExecuteFinish(Z)V

    .line 364
    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 367
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 370
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {v7, p5}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move v8, p6

    .line 369
    invoke-direct/range {v3 .. v8}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Ljava/lang/Runnable;I)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 371
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {p1, p5}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_2

    .line 373
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_2

    .line 374
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 376
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    new-array p3, v2, [Ljava/lang/Object;

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    aput-object p5, p3, p4

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startEndDetector(Lcom/miui/home/recents/util/MultiAnimationEndDetector;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p5, :cond_4

    .line 354
    invoke-virtual {p5}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    :cond_4
    return-void
.end method

.method private startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Ljava/lang/Runnable;I)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 41

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v13, p5

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startOpeningWindowAnimators:iconLoc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "QuickstepAppTransitionManagerImpl"

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v10

    const/4 v9, 0x0

    if-eqz v10, :cond_1f

    if-eqz v14, :cond_1f

    if-nez v0, :cond_0

    goto/16 :goto_14

    .line 578
    :cond_0
    iget-object v2, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 579
    invoke-virtual {v10, v3}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 581
    new-instance v6, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v5, 0x0

    invoke-direct {v6, v0, v5}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 584
    invoke-virtual {v6}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-nez v0, :cond_2

    .line 586
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMergeFinishCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    :cond_1
    return-object v9

    .line 592
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 593
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->tempSaveOpenLeash(ILandroid/view/SurfaceControl;)V

    .line 595
    invoke-direct {v15, v6, v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 597
    new-instance v4, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 598
    invoke-virtual {v4, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStack(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 599
    invoke-virtual {v4, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSourceStackBounds(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    .line 600
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateHomeStack(Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    .line 601
    invoke-virtual {v4, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 602
    invoke-virtual {v4, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 604
    iput-object v9, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 606
    instance-of v11, v14, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v11

    if-nez v11, :cond_3

    .line 607
    move-object v11, v14

    check-cast v11, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 608
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    move-object v5, v11

    goto :goto_0

    :cond_3
    move-object v5, v9

    .line 611
    :goto_0
    invoke-virtual {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 612
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v9, 0x4

    if-eq v13, v9, :cond_4

    const/4 v9, 0x5

    if-eq v13, v9, :cond_4

    .line 614
    iget v9, v11, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    move-object/from16 v24, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v9}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    :cond_4
    move-object/from16 v24, v6

    .line 617
    :goto_1
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 618
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 619
    invoke-virtual {v6, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v1, 0x3f6b851f    # 0.92f

    .line 620
    invoke-static {v6, v1}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    move-object/from16 v25, v4

    move-object/from16 v26, v12

    const/16 v30, 0x0

    goto :goto_4

    .line 622
    :cond_5
    invoke-static {v7, v8, v1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 623
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v25, v4

    move-object/from16 v26, v12

    goto :goto_3

    .line 625
    :cond_7
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v16, 0x3e800000    # 0.25f

    mul-float v9, v9, v16

    float-to-int v9, v9

    move-object/from16 v25, v4

    .line 626
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v16

    float-to-int v4, v4

    .line 627
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    const/high16 v16, 0x3f400000    # 0.75f

    mul-float v14, v14, v16

    float-to-int v14, v14

    move-object/from16 v26, v12

    .line 628
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v16

    float-to-int v12, v12

    .line 624
    invoke-virtual {v1, v9, v4, v14, v12}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    if-eqz v5, :cond_8

    .line 632
    invoke-interface {v5}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v4

    .line 633
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 635
    :cond_8
    invoke-virtual {v6, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 636
    iget v4, v11, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget v9, v11, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    invoke-virtual {v1, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v30, v1

    .line 639
    :goto_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v1

    .line 640
    iget-boolean v4, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    .line 641
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->TRANSLUCENT_PACKAGE:Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    const/16 v35, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v35, 0x1

    :goto_6
    if-nez v1, :cond_c

    if-eqz v35, :cond_b

    goto :goto_7

    :cond_b
    const/16 v34, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/16 v34, 0x1

    :goto_8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 643
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v33, v2, v1

    if-eqz v5, :cond_d

    .line 645
    invoke-static {v5}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)F

    move-result v1

    goto :goto_9

    :cond_d
    iget v1, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    :goto_9
    mul-float v1, v1, v33

    .line 646
    invoke-virtual {v15, v13}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getEndRadius(I)F

    move-result v2

    .line 647
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v4

    if-eqz v4, :cond_e

    move v1, v2

    .line 651
    :cond_e
    new-instance v14, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v14}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 652
    sget-object v4, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v10, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    iput-boolean v4, v14, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 653
    new-instance v27, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct/range {v27 .. v27}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 654
    iget-object v4, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/miui/home/recents/views/FloatingIconView;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 655
    iget-object v4, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {v4}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    const/4 v9, 0x0

    .line 656
    iput-object v9, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    :goto_a
    if-eqz v35, :cond_10

    .line 659
    instance-of v4, v5, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_12

    .line 662
    sget-object v11, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->FIT_PARENT_AND_TRANSLUCENT_PACKAGE:[Ljava/lang/String;

    array-length v12, v11

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v12, :cond_12

    move/from16 p3, v4

    aget-object v4, v11, v9

    move-object/from16 v16, v11

    .line 663
    iget-object v11, v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->packageName:Ljava/lang/String;

    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v12, 0x0

    goto :goto_d

    :cond_11
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, p3

    move-object/from16 v11, v16

    goto :goto_c

    :cond_12
    move/from16 p3, v4

    move/from16 v12, p3

    .line 670
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startOpeningWindowAnimators, currentDisplayRotation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", homeRotation="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", startRectF="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", endRectF="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", startRadius = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", endRadius = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", launchPosition = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isUseTranslucentAnim = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v26

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_13

    .line 683
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move/from16 v19, v2

    goto :goto_e

    :cond_13
    move/from16 v19, v1

    move-object v0, v6

    .line 687
    :goto_e
    new-instance v6, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v16, v6

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move/from16 v20, v2

    invoke-direct/range {v16 .. v22}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 688
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMiniWidth(F)V

    const/4 v1, 0x1

    .line 690
    invoke-virtual {v6, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIsOpenAnim(Z)V

    if-eq v13, v1, :cond_14

    const/4 v1, 0x1

    goto :goto_f

    :cond_14
    const/4 v1, 0x0

    .line 691
    :goto_f
    invoke-virtual {v6, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIsSplitLaunchAnimation(Z)V

    .line 692
    instance-of v1, v5, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v1, :cond_15

    const/16 v1, 0x3ea

    goto :goto_10

    :cond_15
    const/16 v1, 0x3e9

    :goto_10
    invoke-virtual {v6, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setProgressCalculateType(I)V

    move-object/from16 v4, p1

    .line 694
    instance-of v1, v4, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_16

    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 696
    iget v2, v1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v6, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIconSpan(II)V

    .line 698
    :cond_16
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v6, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 700
    iget-object v1, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 701
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/FloatingIconLayer;->setIsReleaseOpenFloatingIconLayer(Z)V

    .line 703
    :cond_17
    invoke-virtual {v10}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v26

    move-object/from16 v1, v25

    const/4 v11, 0x1

    .line 705
    invoke-virtual {v1, v11, v0, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->shouldVerticalClip(ZLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setVerticalClip(Ljava/lang/Boolean;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 707
    iget-object v0, v15, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-object/from16 v16, v0

    goto :goto_11

    :cond_18
    const/16 v16, 0x0

    .line 708
    :goto_11
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    move/from16 v29, v0

    move v3, v11

    move v11, v0

    .line 711
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;

    move-object/from16 p2, v0

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move/from16 v18, v2

    move-object v2, v6

    move-object/from16 v3, p1

    move-object/from16 v25, v17

    move v4, v12

    move-object/from16 v36, v5

    move/from16 v37, v18

    move-object/from16 v5, v16

    move-object/from16 v38, v6

    move-object/from16 v28, v24

    move/from16 v6, v26

    move/from16 v32, v7

    move-object/from16 v7, v25

    move/from16 v31, v8

    move-object v8, v14

    move-object/from16 v16, v9

    move-object/from16 v9, v27

    move-object/from16 p3, v10

    move-object/from16 v10, v28

    move/from16 v20, v12

    move-object/from16 v39, v16

    move-object/from16 v12, v30

    move/from16 v13, v31

    move-object/from16 v40, v14

    move/from16 v14, v32

    move/from16 v15, v33

    move/from16 v16, v34

    move/from16 v17, p5

    invoke-direct/range {v0 .. v17}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$PBPShwsnQ1Aj-rtjIZKatWJr2i0;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/view/View;ZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLandroid/graphics/Rect;IIFZI)V

    move-object/from16 v1, p2

    move-object/from16 v0, v38

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    const/4 v2, 0x1

    move-object/from16 v1, p0

    .line 723
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->setIsOpenAnimRunning(Z)V

    .line 725
    new-instance v3, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

    move-object/from16 v18, v3

    move-object/from16 v19, p0

    move-object/from16 v21, p3

    move-object/from16 v22, v0

    move-object/from16 v23, p1

    move/from16 v24, v26

    move-object/from16 v26, v40

    invoke-direct/range {v18 .. v34}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/view/View;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLandroid/graphics/Rect;IIFZ)V

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 841
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v3, :cond_19

    .line 843
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getFirstTargetRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 844
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v3}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isSameIcon(Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result v5

    .line 845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is app to home anim running, click same icon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v39

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_19
    move-object/from16 v5, p1

    move-object/from16 v4, v39

    .line 847
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getExitAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 848
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 849
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getFirstTargetRect()Landroid/graphics/RectF;

    move-result-object v6

    .line 850
    iget v7, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1a

    iget v7, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1a

    iget v7, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1a

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_1a

    move v5, v2

    goto :goto_12

    :cond_1a
    move/from16 v5, v37

    :goto_12
    if-eqz v5, :cond_1b

    .line 852
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRect(Landroid/graphics/RectF;)V

    .line 853
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRadius()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->setStartRadius(F)V

    .line 855
    :cond_1b
    invoke-virtual {v3, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setSkipCallExecuteFinish(Z)V

    .line 856
    invoke-virtual {v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exit app anim running, needConnect = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move/from16 v5, v37

    .line 860
    :goto_13
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 861
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v11, v36

    if-eqz v11, :cond_1d

    if-nez v35, :cond_1d

    move-object/from16 v3, p3

    .line 863
    invoke-static {v3, v11, v2}, Lcom/miui/home/recents/views/FloatingIconView;->getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v9

    move-object v4, v9

    :cond_1d
    iput-object v4, v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 864
    iget-object v2, v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v2, :cond_1e

    .line 865
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 866
    iget-object v1, v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    .line 869
    :cond_1e
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    return-object v0

    :cond_1f
    :goto_14
    move-object v4, v9

    .line 572
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMergeFinishCallback()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 573
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    :cond_20
    return-object v4
.end method

.method private unregisterRemoteTransitions()V
    .locals 2

    .line 1045
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-nez v0, :cond_0

    return-void

    .line 1048
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    if-nez v0, :cond_1

    return-void

    .line 1050
    :cond_1
    sget-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->unregisterRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;)V

    const/4 v0, 0x0

    .line 1052
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRegisterRemoteTransition:Z

    const/4 v0, 0x0

    .line 1053
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    :cond_2
    return-void
.end method


# virtual methods
.method public breakOpenAnim()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppPairController;->breakAppPairAnimation()V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->removeEndRunnable(Ljava/lang/Runnable;)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->removeEndRunnable(Ljava/lang/Runnable;)V

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_3

    .line 408
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMoveToTargetRectWhenAnimEnd(Z)V

    :cond_3
    return-void
.end method

.method public clearRemoteAnimationProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 515
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-void
.end method

.method public abstract composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;IIZ)V
.end method

.method public doAnimationFinish()V
    .locals 2

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsDoAnimationFinish:Z

    .line 420
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppPairController;->finishAppPairAnimation()V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 426
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 427
    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 430
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 431
    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    :cond_2
    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsDoAnimationFinish:Z

    return-void
.end method

.method public findTargetTaskView(Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;
    .locals 5

    .line 1558
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    aget-object v2, p2, v0

    .line 1559
    iget v3, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1560
    iget p0, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_1
    if-ne p0, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 1569
    :cond_2
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method public getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityLaunchOptions iconLoc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickstepAppTransitionManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 220
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v8, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLaunchingViewRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v8, v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result v10

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->finishPendingGestureController()V

    .line 224
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 225
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v11, 0x1

    .line 226
    invoke-static {v11}, Lcom/miui/home/launcher/Application;->updateClickAppWaitForCallbackValue(Z)V

    .line 227
    invoke-static/range {p2 .. p2}, Lcom/miui/home/recents/TaskViewUtils;->getSoscLaunchPosition(Landroid/view/View;)I

    move-result v6

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v8, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTimeoutResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    new-instance v13, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;

    iget-object v2, v8, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZLjava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ILandroid/graphics/Rect;)V

    .line 272
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setOpenAnimationRunnerCompat(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V

    if-eqz v10, :cond_0

    const-wide/16 v0, 0x15e

    :goto_0
    move-wide v14, v0

    goto :goto_1

    .line 278
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xe6

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x258

    goto :goto_0

    :goto_1
    const-wide/16 v0, 0x78

    sub-long v0, v14, v0

    const-wide/16 v2, 0x60

    sub-long v16, v0, v2

    .line 282
    new-instance v0, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    .line 283
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz v1, :cond_2

    .line 286
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getRemoteTransition()Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;Lcom/android/systemui/shared/system/RemoteTransitionCompat;)Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    goto :goto_2

    .line 288
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, v8, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 290
    :goto_2
    iput-boolean v11, v8, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNeedResetContentView:Z

    if-eqz v9, :cond_3

    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessStart()V

    .line 294
    :cond_3
    iget-object v0, v8, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object v0

    .line 296
    :cond_4
    invoke-super/range {p0 .. p3}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public getEndRadius(I)F
    .locals 0

    .line 881
    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result p0

    int-to-float p0, p0

    .line 882
    invoke-static {p1}, Lcom/miui/home/recents/TaskViewUtils;->isSoscLaunchPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p0, 0x41b00000    # 22.0f

    :cond_0
    return p0
.end method

.method protected getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public getWallpaperOpenRunner(Z)Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;
    .locals 3

    .line 1171
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    .line 1174
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setCloseAnimationRunnerCompat(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)V

    .line 1175
    sget-boolean p1, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz p1, :cond_0

    .line 1176
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$yz-Mv9QKA6W1oZwzyr_YJs-B-ZQ;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$yz-Mv9QKA6W1oZwzyr_YJs-B-ZQ;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setConnectAnimRunnable(Ljava/lang/Runnable;)V

    .line 1198
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    return-object p0
.end method

.method public isDoAnimationFinish()Z
    .locals 0

    .line 415
    iget-boolean p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsDoAnimationFinish:Z

    return p0
.end method

.method protected abstract isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z
.end method

.method protected isModeFromNewHome([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionFeedModeHelper;->isModeFromNewHome(Landroid/content/Context;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p0

    return p0
.end method

.method protected isNewHomeOverlayAttachedAndEnable()Z
    .locals 2

    .line 1158
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1162
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFeedOverlayController()Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayTransitionController;->isOverlayAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1163
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherGestureController()Lcom/miui/home/settings/LauncherGestureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherGestureController;->isSlideUpContentCenter()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected isNewHomeViewAdded()Z
    .locals 1

    .line 1150
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1154
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 0

    .line 1059
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onFocusNotifyStartActivity$1$QuickstepAppTransitionManagerImpl()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 381
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method public synthetic lambda$onFocusNotifyStartActivityFinish$2$QuickstepAppTransitionManagerImpl()V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetContentView()V

    return-void
.end method

.method public synthetic lambda$resetContentView$14$QuickstepAppTransitionManagerImpl()V
    .locals 3

    .line 2154
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2156
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha(F)V

    .line 2157
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setScaleX(F)V

    .line 2158
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setScaleY(F)V

    .line 2160
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isInAppModeGesture()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2161
    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenFinishOpenOrCloseApp(Lcom/miui/home/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$resetRecentsContentView$8$QuickstepAppTransitionManagerImpl()V
    .locals 5

    .line 1387
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 1390
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1391
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 1392
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/4 v3, 0x0

    .line 1393
    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1394
    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 1395
    invoke-static {v2, v0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$setRemoteAnimationProvider$3$QuickstepAppTransitionManagerImpl(Lcom/miui/home/recents/util/RemoteAnimationProvider;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 509
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    :cond_0
    return-void
.end method

.method public synthetic lambda$startClosingWindowAnimators$11$QuickstepAppTransitionManagerImpl(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 1901
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method

.method public synthetic lambda$startClosingWindowAnimators$12$QuickstepAppTransitionManagerImpl(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/miui/home/recents/util/RectFSpringAnim;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ZLcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLandroid/graphics/Rect;Landroid/graphics/Rect;FZLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;ZLandroid/graphics/RectF;FFF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v11, p10

    move-object/from16 v12, p20

    move/from16 v13, p22

    .line 1838
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getProgressCalculateType()I

    move-result v5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static {v12, v6, v7, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v14

    .line 1839
    invoke-static {v2, v3, v12}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v15

    .line 1841
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v5

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    const v5, 0x3f4ccccd    # 0.8f

    sub-float/2addr v5, v14

    const v6, 0x3e99999a    # 0.3f

    div-float/2addr v5, v6

    goto :goto_0

    :cond_0
    sub-float v5, v9, v14

    .line 1842
    :goto_0
    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_1

    :cond_1
    sub-float v5, v9, v14

    .line 1843
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    .line 1844
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    goto :goto_1

    :cond_2
    move v5, v10

    .line 1846
    :goto_1
    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    if-eqz p7, :cond_3

    move v8, v10

    goto :goto_2

    :cond_3
    move v8, v5

    .line 1851
    :goto_2
    instance-of v5, v4, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v5, :cond_4

    move-object/from16 v7, p9

    move/from16 v16, v9

    goto :goto_5

    :cond_4
    cmpl-float v5, v8, v9

    if-nez v5, :cond_5

    move v5, v10

    goto :goto_3

    :cond_5
    move v5, v9

    .line 1854
    :goto_3
    invoke-virtual/range {p8 .. p8}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1855
    invoke-virtual/range {p8 .. p8}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v6

    move-object/from16 v7, p9

    invoke-static {v7, v6}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F

    move-result v6

    goto :goto_4

    :cond_6
    move-object/from16 v7, p9

    move v6, v9

    :goto_4
    mul-float/2addr v5, v6

    move/from16 v16, v5

    :goto_5
    if-eqz v4, :cond_7

    .line 1859
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V

    .line 1861
    :cond_7
    invoke-virtual {v11, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v5

    .line 1862
    invoke-virtual {v5, v15}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v5

    .line 1863
    invoke-virtual {v5, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v5

    .line 1864
    invoke-virtual {v5, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1866
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1867
    iget-object v5, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/miui/home/recents/views/FloatingIconView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v1, :cond_8

    .line 1868
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPreviousRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1869
    invoke-virtual/range {p3 .. p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPreviousRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/miui/home/recents/util/Utilities;->getMiddleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 1870
    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    const/4 v8, 0x0

    const/4 v1, 0x1

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p10

    move v2, v9

    move v9, v1

    move v3, v10

    move/from16 v10, p13

    .line 1871
    invoke-virtual/range {v5 .. v10}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;IZ)Landroid/graphics/RectF;

    .line 1872
    invoke-virtual {v11, v15}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    goto :goto_6

    :cond_8
    move v2, v9

    move v3, v10

    .line 1874
    :goto_6
    new-instance v1, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    iget-object v5, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-direct {v1, v5}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v11, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1875
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    goto :goto_7

    :cond_9
    move v2, v9

    move v3, v10

    :goto_7
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p10

    move/from16 v10, p13

    .line 1877
    invoke-virtual/range {v5 .. v10}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;IZ)Landroid/graphics/RectF;

    .line 1879
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v1, :cond_e

    if-eqz v4, :cond_e

    .line 1880
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1881
    invoke-virtual/range {p20 .. p20}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v2

    invoke-virtual/range {p14 .. p14}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-interface/range {p6 .. p6}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    neg-float v1, v1

    .line 1882
    invoke-virtual {v12, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1884
    :cond_a
    invoke-virtual/range {p15 .. p15}, Landroid/graphics/Rect;->width()I

    invoke-virtual/range {p20 .. p20}, Landroid/graphics/RectF;->width()F

    if-nez p13, :cond_b

    move-object/from16 v5, p11

    .line 1886
    invoke-virtual {v5, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 1888
    :cond_b
    iget-object v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v4, v13, p16

    move-object/from16 p0, v0

    move-object/from16 p1, p20

    move/from16 p2, v1

    move/from16 p3, v14

    move/from16 p4, v4

    move/from16 p5, p17

    invoke-virtual/range {p0 .. p5}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFFZ)V

    goto/16 :goto_8

    :cond_c
    move-object/from16 v5, p11

    move v2, v9

    move v3, v10

    .line 1892
    invoke-static {v3, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1893
    sget-object v9, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v9}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v9

    sget-object v10, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 1894
    invoke-virtual {v10}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v10

    sub-float v10, v2, v10

    const v15, 0x3f8ccccd    # 1.1f

    mul-float/2addr v10, v15

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    .line 1893
    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    move-object/from16 v9, p18

    .line 1895
    invoke-virtual {v9, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    const/4 v10, 0x1

    move-object/from16 v6, p12

    move-object/from16 v7, p10

    move v11, v8

    move-object/from16 v8, p18

    move v9, v10

    move/from16 v10, p13

    .line 1896
    invoke-virtual/range {v5 .. v10}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;IZ)Landroid/graphics/RectF;

    if-eqz v4, :cond_d

    .line 1899
    invoke-interface/range {p6 .. p6}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_d

    if-eqz v1, :cond_d

    const/high16 v5, 0x40000000    # 2.0f

    .line 1900
    invoke-virtual {v1, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->isClosedToTarget(F)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1901
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v5, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$kLZHvCTPZTEZoHm3-DVIWJvKAXI;

    invoke-direct {v5, v0, v4}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$kLZHvCTPZTEZoHm3-DVIWJvKAXI;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1904
    :cond_d
    iget-object v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v0, :cond_e

    cmpg-float v1, v11, v2

    if-gez v1, :cond_e

    .line 1905
    invoke-static/range {p9 .. p9}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v1

    div-float v4, v13, p16

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-object/from16 p2, p20

    move/from16 p3, v14

    move/from16 p4, v4

    move/from16 p5, v16

    invoke-virtual/range {p0 .. p5}, Lcom/miui/home/recents/FloatingIconLayer;->showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V

    :cond_e
    :goto_8
    if-eqz p19, :cond_f

    .line 1911
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    sub-float v9, v2, v14

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1912
    invoke-virtual/range {p12 .. p12}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    const/4 v3, 0x1

    .line 1911
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    :cond_f
    return-void
.end method

.method public synthetic lambda$startOpeningWindowAnimators$4$QuickstepAppTransitionManagerImpl(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/view/View;ZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLandroid/graphics/Rect;IIFZILandroid/graphics/RectF;FFF)V
    .locals 26

    move-object/from16 v0, p0

    .line 712
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p10, :cond_1

    move-object v15, v1

    goto :goto_0

    .line 718
    :cond_1
    iget-object v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    move-object v15, v2

    :goto_0
    if-eqz p10, :cond_2

    .line 719
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    :cond_2
    move-object/from16 v16, v1

    const/16 v22, 0x1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v2, p18

    .line 721
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    const/16 v25, 0x0

    move-object/from16 v3, p17

    move-object/from16 v4, p2

    move/from16 v5, p18

    move/from16 v6, p19

    move/from16 v7, p20

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v17, p11

    move/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    move/from16 v21, p15

    move/from16 v24, p16

    .line 715
    invoke-static/range {v3 .. v25}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->openAnimUpdate(Landroid/graphics/RectF;Landroid/view/View;FFFZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/FloatingIconView;Lcom/miui/home/recents/FloatingIconLayer;Landroid/graphics/Rect;IIFZZFIZ)V

    return-void
.end method

.method public onCreateWallpaperOpenAnimation(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)Z
    .locals 6

    .line 1206
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1207
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;->onCreateAnimation(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onFocusNotifyStartActivity()V
    .locals 2

    .line 380
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, v1, :cond_0

    .line 381
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$CHYMxYpy74YWpy-q5EFdI72nlKg;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$CHYMxYpy74YWpy-q5EFdI72nlKg;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFocusNotifyStartActivityFinish()V
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne v0, v1, :cond_0

    .line 387
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$amBdcvzJ-CasoAV0207BfUo3UB0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$amBdcvzJ-CasoAV0207BfUo3UB0;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFsGestureStart()V
    .locals 1

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNeedResetContentView:Z

    return-void
.end method

.method public registerRemoteTransitions()V
    .locals 5

    .line 994
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const-string v1, "QuickstepAppTransitionManagerImpl"

    if-nez v0, :cond_1

    const-string p0, "registerRemoteTransitions: launcher is null, return"

    .line 999
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1002
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v2

    sget-object v3, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$RwvmsG8CxosuX02sMRxMp2UL2Zs;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$RwvmsG8CxosuX02sMRxMp2UL2Zs;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->setStopRunningAnimRunnable(Ljava/lang/Runnable;)V

    .line 1016
    sget-object v2, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-nez v2, :cond_2

    const-string p0, "registerRemoteTransitions: systemUiProxyWrapper is null, return"

    .line 1018
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1021
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRegisterRemoteTransition:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 1023
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWallpaperOpenRunner(Z)Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;

    move-result-object v1

    .line 1024
    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->buildRemoteTransition(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;)Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    .line 1025
    new-instance v1, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;-><init>()V

    const/16 v3, 0x100

    .line 1027
    invoke-virtual {v1, v3}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->setNotFlags(I)V

    .line 1028
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->initRequirements(Landroidx/activity/ComponentActivity;)V

    .line 1029
    iget-object v4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v2, v4, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V

    .line 1031
    new-instance v1, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;-><init>()V

    .line 1032
    invoke-virtual {v1, v3}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->setNotFlags(I)V

    .line 1033
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->initSplitBackRequirements(Landroidx/activity/ComponentActivity;)V

    .line 1034
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V

    .line 1036
    new-instance v0, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;-><init>()V

    .line 1037
    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->setNotFlags(I)V

    .line 1038
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;->initHalfSplitBackRequirements()V

    .line 1039
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncherOpenTransition:Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    invoke-virtual {v2, v1, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRemoteTransition(Lcom/android/systemui/shared/system/RemoteTransitionCompat;Lcom/android/systemui/shared/recents/system/TransitionFilterCompat;)V

    const/4 v0, 0x1

    .line 1040
    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRegisterRemoteTransition:Z

    :cond_3
    return-void
.end method

.method public release()V
    .locals 2

    .line 1064
    invoke-super {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->release()V

    const/4 v0, 0x0

    .line 1065
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    .line 1066
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    .line 1067
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLaunchingViewRef:Ljava/lang/ref/WeakReference;

    .line 1068
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 1069
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 1070
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v1, :cond_0

    .line 1071
    invoke-virtual {v1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 1072
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 1074
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v1, :cond_1

    .line 1075
    invoke-virtual {v1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    .line 1076
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mCloseFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 1078
    :cond_1
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 1079
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 1080
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 1081
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->releaseAnim()V

    .line 1082
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 1083
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskLaunchFinishRunnable:Ljava/lang/Runnable;

    .line 1084
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->unregisterRemoteTransitions()V

    return-void
.end method

.method public resetShortcutIconAlpha(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 4

    .line 2022
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

    .line 2023
    iget-boolean v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2025
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetShortcutIconAlpha, icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isNeedResetIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsOpenAnimRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsOpenAnimRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isOpeningTheSameIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickstepAppTransitionManagerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 2031
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2032
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->invalidateAdaptiveIconDrawable(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    :cond_3
    return-void
.end method

.method public setRemoteAnimationProvider(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V
    .locals 1

    .line 506
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 507
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$qP2kYCP_rvRqvwIH-sCfucgHhbk;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$qP2kYCP_rvRqvwIH-sCfucgHhbk;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method public startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 3

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLauncherContentAnimator:isAppOpening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickstepAppTransitionManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 524
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    .line 527
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq v1, v2, :cond_3

    .line 528
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    .line 530
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->cancelHomeFadeInAnim()V

    .line 531
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShortcutMenuLayerFadeOutAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    goto :goto_0

    .line 533
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShortcutMenuLayerFadeInAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 537
    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenStartOpenOrCloseApp(ZLcom/miui/home/launcher/Launcher;)Landroid/animation/ValueAnimator;

    .line 538
    iget-boolean p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNeedResetContentView:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 539
    new-instance p1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nQMgAD5UW7Hbj8oUkwxIm5eqHn8;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nQMgAD5UW7Hbj8oUkwxIm5eqHn8;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 9

    .line 1352
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    .line 1358
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

    .line 1360
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xb4

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    if-eqz v3, :cond_5

    .line 1362
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

    .line 1366
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

    .line 1372
    new-instance p2, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$dIqAYnFB-oSVl3P-lry2-HPaUCI;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$dIqAYnFB-oSVl3P-lry2-HPaUCI;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p4, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_6
    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    .line 1374
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTopPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.miui.newhome"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    .line 1376
    new-instance p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$3;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$3;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p4, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method
