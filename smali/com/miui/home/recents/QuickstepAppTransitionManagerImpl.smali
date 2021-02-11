.class public abstract Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;
.super Lcom/miui/home/recents/LauncherAppTransitionManager;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;,
        Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;
    }
.end annotation


# static fields
.field public static mClosingTime:I = 0x1

.field public static mOpeningTime:I = 0x1

.field public static sRecentsLaunchTime:I = 0x1


# instance fields
.field private mActivityOptions:Landroid/app/ActivityOptions;

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

.field private mLaunchingView:Landroid/view/View;

.field private mNoIconRadius:F

.field private mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

.field private mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

.field private mResetOverviewBackgroundRunnable:Ljava/lang/Runnable;

.field private mStartMinusOneScreenScrollX:F

.field private mStartWorkspaceScrollX:F

.field private mTaskViewRadius:F

.field private mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 141
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 129
    iput v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    .line 1164
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$7;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$7;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mResetOverviewBackgroundRunnable:Ljava/lang/Runnable;

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 145
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    .line 149
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsRtl:Z

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    invoke-static {p1}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskViewRadius:F

    .line 154
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->registerRemoteAnimations()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->launcherIsATargetWithMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startIconLaunchAnimator(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/util/RemoteAnimationProvider;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)Lcom/miui/home/recents/util/RemoteAnimationProvider;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowToRecentsAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowFromFeedAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Landroid/os/Handler;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F
    .locals 0

    .line 93
    iput p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mStartWorkspaceScrollX:F

    return p1
.end method

.method static synthetic access$902(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F
    .locals 0

    .line 93
    iput p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mStartMinusOneScreenScrollX:F

    return p1
.end method

.method private adjustRectWhenLauncherScroll(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 1148
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v1, :cond_2

    .line 1154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->isInHotseat()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1155
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    .line 1156
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1157
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1158
    :goto_0
    iget v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mStartWorkspaceScrollX:F

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mStartMinusOneScreenScrollX:F

    sub-float/2addr p1, v0

    add-float/2addr v1, p1

    .line 1160
    invoke-virtual {p2, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    return-void
.end method

.method private finishPendingGestureController()V
    .locals 2

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->finishPendingController()V

    :cond_0
    return-void
.end method

.method private getHomeStackBound()Landroid/graphics/Rect;
    .locals 4

    .line 376
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 380
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

.method private getWallpaperOpenRunner(Z)Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    if-nez v0, :cond_0

    .line 604
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZZ)V

    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    .line 607
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    return-object p1
.end method

.method private getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;
    .locals 6

    .line 304
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 305
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 306
    iget v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v5, p2, :cond_0

    .line 307
    iget-object p1, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 308
    iget-object p1, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result p2

    invoke-virtual {v0, v2, v2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private hasControlRemoteAppTransitionPermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$dIqAYnFB-oSVl3P-lry2-HPaUCI(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetRecentsContentView()V

    return-void
.end method

.method public static synthetic lambda$nQMgAD5UW7Hbj8oUkwxIm5eqHn8(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetContentView()V

    return-void
.end method

.method public static synthetic lambda$setRemoteAnimationProvider$0(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startClosingWindowAnimators$3(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/ShortcutIcon;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/RectF;FFF)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    .line 995
    invoke-direct {p0, p1, v4}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->adjustRectWhenLauncherScroll(Landroid/view/View;Landroid/graphics/RectF;)V

    const/4 v7, 0x0

    move/from16 v8, p2

    .line 997
    invoke-static {v7, v8, v4}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const v10, 0x3f4ccccd    # 0.8f

    sub-float/2addr v10, v5

    const v11, 0x3e99999a    # 0.3f

    div-float/2addr v10, v11

    goto :goto_0

    :cond_0
    sub-float v10, v9, v5

    :goto_0
    const/4 v11, 0x0

    .line 1005
    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1007
    invoke-virtual {v2, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v12

    iget v13, v7, Landroid/graphics/RectF;->left:F

    .line 1008
    invoke-virtual {v12, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v12

    iget v13, v7, Landroid/graphics/RectF;->top:F

    .line 1009
    invoke-virtual {v12, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v12

    .line 1010
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-virtual {v12, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v12

    .line 1011
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v13, v7

    invoke-virtual {v12, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    .line 1012
    invoke-virtual {v7, v11}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    .line 1013
    invoke-virtual {v7, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1014
    invoke-static/range {p2 .. p2}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    move-object/from16 v8, p5

    invoke-virtual {v3, v8, v2, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Z)Landroid/graphics/RectF;

    .line 1016
    iget-object v2, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1017
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    neg-float v1, v2

    .line 1018
    invoke-virtual {v4, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1020
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/RectF;->width()F

    .line 1021
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 1022
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    cmpl-float v2, v10, v9

    if-nez v2, :cond_1

    move v9, v11

    :cond_1
    div-float v2, v6, p8

    invoke-virtual {v1, v4, v9, v5, v2}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFF)V

    :cond_2
    return-void
.end method

.method static synthetic lambda$startClosingWindowFromFeedAnimators$4(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 1116
    iget p4, p3, Landroid/graphics/RectF;->left:F

    .line 1117
    iget p6, p3, Landroid/graphics/RectF;->top:F

    .line 1118
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 1119
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr v1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1121
    invoke-virtual {p0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    .line 1122
    invoke-virtual {p3, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1123
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic lambda$startClosingWindowToRecentsAnimators$2(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;FLandroid/graphics/RectF;FFFLandroid/graphics/RectF;FFF)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p13

    .line 796
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v6

    .line 798
    iget v8, v6, Landroid/graphics/RectF;->left:F

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 799
    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    .line 800
    invoke-virtual {v5, v8, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 803
    :cond_0
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 804
    iget v8, v5, Landroid/graphics/RectF;->top:F

    .line 805
    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 806
    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    move/from16 v11, p16

    .line 807
    invoke-virtual {v1, v11}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v11

    .line 808
    invoke-virtual {v11, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    .line 809
    invoke-virtual {v6, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    .line 810
    invoke-virtual {v6, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    .line 811
    invoke-virtual {v6, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    const/4 v8, 0x0

    .line 812
    invoke-virtual {v6, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    move/from16 v9, p15

    .line 813
    invoke-virtual {v6, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    .line 814
    invoke-virtual {v6, v9, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p5, :cond_2

    const/high16 v6, 0x41c80000    # 25.0f

    .line 818
    invoke-virtual/range {p7 .. p7}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v9}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v9

    .line 819
    iget v10, v5, Landroid/graphics/RectF;->left:F

    iget v11, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float v10, p8, v10

    iget v12, v4, Landroid/graphics/RectF;->left:F

    iget v13, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v12, v13

    div-float/2addr v12, v11

    sub-float/2addr v10, v12

    .line 820
    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->width()F

    move-result v12

    add-float v12, p10, v12

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/RectF;->width()F

    move-result v13

    sub-float/2addr v12, v13

    .line 821
    iget v13, v5, Landroid/graphics/RectF;->top:F

    iget v14, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v13, v14

    div-float/2addr v13, v11

    add-float v13, p11, v13

    iget v14, v4, Landroid/graphics/RectF;->top:F

    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v15

    div-float/2addr v14, v11

    sub-float/2addr v13, v14

    .line 822
    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->width()F

    move-result v14

    mul-float v14, v14, p12

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v14, v4

    .line 823
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_2

    .line 824
    invoke-virtual/range {p6 .. p6}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskView;

    if-eq v3, v4, :cond_1

    .line 826
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v15, v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v15}, Lcom/miui/home/recents/views/RecentsView;->getTaskIndexById(I)I

    move-result v15

    sub-int v15, v9, v15

    int-to-float v15, v15

    sub-float v16, v1, p14

    mul-float v16, v16, v6

    add-float v16, v16, v12

    mul-float v15, v15, v16

    add-float/2addr v15, v10

    .line 828
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 829
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 830
    invoke-virtual {v4, v14}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 831
    invoke-virtual {v4, v14}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 832
    invoke-virtual {v4, v15}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 833
    invoke-virtual {v4, v13}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    const/high16 v6, 0x41c80000    # 25.0f

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 839
    iget v2, v5, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 840
    iget v4, v5, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v4, v0

    const v0, 0x3ecccccd    # 0.4f

    sub-float v0, p14, v0

    const v5, 0x3f19999a    # 0.6f

    div-float/2addr v0, v5

    .line 842
    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 844
    invoke-virtual {v3, v2, v4, v0}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    const v0, 0x3f7d70a4    # 0.99f

    cmpl-float v0, p14, v0

    if-ltz v0, :cond_3

    .line 846
    invoke-virtual {v3, v1}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$startOpeningWindowAnimators$1(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;IFLandroid/graphics/RectF;FFF)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p12

    .line 459
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestEnd()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    .line 463
    :cond_0
    iget v7, v4, Landroid/graphics/RectF;->left:F

    .line 464
    iget v8, v4, Landroid/graphics/RectF;->top:F

    .line 465
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 466
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v10, v11

    const v11, 0x3dcccccd    # 0.1f

    sub-float v11, v5, v11

    const v12, 0x3e4cccce    # 0.20000002f

    div-float/2addr v11, v12

    const/4 v12, 0x0

    .line 469
    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 471
    invoke-virtual {v1, v11}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v14

    invoke-virtual {v14, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    .line 472
    invoke-virtual {v7, v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object/from16 v7, p4

    .line 473
    invoke-virtual {v2, v7, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 475
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v1, :cond_3

    instance-of v1, v3, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_3

    .line 476
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v1, v7

    check-cast v3, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 477
    invoke-virtual {v4, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 479
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/RectF;->width()F

    .line 480
    invoke-virtual {v2, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    if-nez p8, :cond_2

    cmpl-float v1, v11, v13

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v12, v13

    .line 483
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    div-float v2, v6, p9

    invoke-virtual {v1, v4, v12, v5, v2}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFF)V

    :cond_3
    return-void
.end method

.method private launcherIsATargetWithMode([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Z
    .locals 7

    .line 557
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 558
    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 559
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->pagekageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 560
    array-length v2, p1

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 561
    iget v6, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v6, p2, :cond_0

    iget-object v5, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->pagekageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getTaskId()I

    move-result v0

    .line 567
    array-length v2, p1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, p1, v4

    .line 568
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

    .line 525
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    new-instance v1, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;-><init>()V

    .line 531
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

    .line 533
    iget-object v4, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;->addRemoteAnimation(IILcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)V

    .line 536
    new-instance v2, Lcom/android/systemui/shared/recents/system/ActivityCompat;

    invoke-direct {v2, v0}, Lcom/android/systemui/shared/recents/system/ActivityCompat;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/recents/system/ActivityCompat;->registerRemoteAnimations(Lcom/android/systemui/shared/recents/system/RemoteAnimationDefinitionCompat;)V

    :cond_1
    return-void
.end method

.method private resetContentView()V
    .locals 3

    .line 1175
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1177
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha(F)V

    .line 1178
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setScaleX(F)V

    .line 1179
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setScaleY(F)V

    .line 1182
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMinusUseBlurAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1183
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusBlurRatio()F

    move-result v1

    goto :goto_1

    .line 1185
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 1187
    :goto_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/home/launcher/common/Utilities;->fastBlurWhenUseCompleteAnimation(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method private resetRecentsContentView()V
    .locals 6

    .line 716
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    .line 719
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskView;

    .line 721
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v4

    invoke-virtual {v3}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    const/4 v4, 0x0

    .line 722
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 723
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 724
    invoke-static {v3, v1}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->setTaskViewLayerType(Lcom/miui/home/recents/views/TaskView;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewBackground()Lcom/miui/home/recents/views/OverviewBackground;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/OverviewState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewState;->getOverviewBackgroundAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/OverviewBackground;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string v1, "QuickstepTransition"

    const-string v2, "startClosingWindowAnimators"

    .line 912
    invoke-static {v1, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v11

    const/4 v1, 0x0

    if-nez v11, :cond_0

    return-object v1

    .line 918
    :cond_0
    new-instance v6, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v2, 0x1

    invoke-direct {v6, v0, v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 919
    invoke-virtual {v6}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    .line 924
    :cond_1
    invoke-virtual {v11}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v4

    .line 925
    invoke-direct {v10, v0, v2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v2, 0x0

    .line 926
    invoke-static {v4, v2, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 929
    invoke-virtual {v11}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 930
    invoke-virtual {v11}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageViewOriginalLocation()Landroid/graphics/Rect;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    .line 932
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/ItemIcon;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v7, v0

    .line 935
    :goto_0
    new-instance v5, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v5}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 936
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 937
    invoke-virtual {v5, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 938
    invoke-virtual {v5, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 940
    new-instance v9, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v9}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 941
    iget-object v0, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/DragLayer;

    if-eqz v0, :cond_3

    .line 943
    new-instance v3, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v3, v0}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v9, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 945
    :cond_3
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v11, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    iput-boolean v0, v9, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 946
    invoke-virtual {v11}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v3

    .line 948
    invoke-static {v11}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v15

    const/high16 v0, 0x3f800000    # 1.0f

    .line 949
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float v19, v12, v0

    if-eqz v3, :cond_5

    .line 952
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 953
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v0

    .line 954
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 955
    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutIcon;->getIconRadius()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v19

    move/from16 v16, v0

    goto :goto_1

    :cond_4
    return-object v1

    .line 960
    :cond_5
    iget v0, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mNoIconRadius:F

    mul-float v0, v0, v19

    move/from16 v16, v0

    :goto_1
    if-eqz v3, :cond_7

    .line 963
    instance-of v0, v3, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_7

    .line 964
    iget-object v0, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 965
    iget-object v0, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    .line 966
    iput-object v1, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 968
    :cond_6
    invoke-static {v11, v3, v2}, Lcom/miui/home/recents/views/FloatingIconView;->getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;Z)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v0

    iput-object v0, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 971
    :cond_7
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 972
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 973
    invoke-virtual {v5, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 974
    invoke-virtual {v5, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    const-string v0, "QuickstepTransition"

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startClosingWindowAnimators:startRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", targetRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currentRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v2, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 981
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v1, 0x3ed70a3d    # 0.42f

    const v12, 0x3f733333    # 0.95f

    invoke-virtual {v2, v0, v12, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 982
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v2, v0, v12, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 983
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v13, 0x3f666666    # 0.9f

    const v14, 0x3ee66666    # 0.45f

    invoke-virtual {v2, v0, v13, v14}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 984
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v13, 0x3e4ccccd    # 0.2f

    const v14, 0x3f7d70a4    # 0.99f

    invoke-virtual {v2, v0, v14, v13}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 985
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v13, 0x3ebd70a4    # 0.37f

    invoke-virtual {v2, v0, v12, v13}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 986
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v2, v0, v14, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    const/high16 v0, -0x3b060000    # -2000.0f

    const/high16 v1, -0x3a860000    # -4000.0f

    const/4 v12, 0x0

    .line 988
    invoke-virtual {v2, v12, v0, v1, v12}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    .line 990
    iget-object v0, v10, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_8

    .line 991
    invoke-virtual {v2, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 994
    :cond_8
    new-instance v12, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v13, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Mo40D3vKHbPyYJoGO_w-sKIEQ2k;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/ShortcutIcon;ILcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    invoke-virtual {v13, v12}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1027
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;

    invoke-direct {v0, v10, v11}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {v13, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1058
    invoke-virtual {v13}, Lcom/miui/home/recents/util/RectFSpringAnim;->start()V

    return-object v13
.end method

.method private startClosingWindowFromFeedAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 13

    const-string v0, "QuickstepTransition"

    const-string v1, "startClosingWindowFromFeedAnimators"

    .line 1063
    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1068
    :cond_0
    new-instance v2, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 1069
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v1

    .line 1074
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 1076
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1077
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 1078
    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 1080
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 1081
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    const/4 v4, 0x0

    .line 1082
    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1083
    invoke-virtual {v3, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 1085
    new-instance v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 1086
    iget-object v5, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/DragLayer;

    if-eqz v5, :cond_2

    .line 1088
    new-instance v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v6, v5}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 1090
    :cond_2
    sget-object v5, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 1092
    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1094
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

    .line 1096
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1097
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1098
    invoke-virtual {v3, v7}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 1099
    invoke-virtual {v3, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    const-string v0, "QuickstepTransition"

    .line 1101
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

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    new-instance p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 1105
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v1, 0x3ed70a3d    # 0.42f

    const v5, 0x3f733333    # 0.95f

    invoke-virtual {p1, v0, v5, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1106
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p1, v0, v5, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1107
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v6, 0x3f666666    # 0.9f

    const v7, 0x3ee66666    # 0.45f

    invoke-virtual {p1, v0, v6, v7}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1108
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3f7d70a4    # 0.99f

    invoke-virtual {p1, v0, v7, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1109
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v6, 0x3ebd70a4    # 0.37f

    invoke-virtual {p1, v0, v5, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 1110
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p1, v0, v7, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    const/high16 v0, -0x3b060000    # -2000.0f

    const/high16 v1, -0x3a860000    # -4000.0f

    const/4 v5, 0x0

    .line 1112
    invoke-virtual {p1, v5, v0, v1, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    .line 1114
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$viqK0LrrPzW_97gakGEUz-41joU;

    invoke-direct {v0, v4, v3, v2}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$viqK0LrrPzW_97gakGEUz-41joU;-><init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 1127
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$6;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1143
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->start()V

    return-object p1
.end method

.method private startClosingWindowToRecentsAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "QuickstepTransition"

    const-string v3, "startClosingWindowToRecentsAnimators"

    .line 736
    invoke-static {v2, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    const/4 v2, 0x0

    if-nez v5, :cond_0

    return-object v2

    .line 742
    :cond_0
    new-instance v9, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v3, 0x1

    invoke-direct {v9, v1, v3}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 743
    new-instance v7, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 744
    iget-object v4, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mDragLayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/DragLayer;

    if-eqz v4, :cond_1

    .line 746
    new-instance v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v6, v4}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    .line 747
    invoke-virtual {v7, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 749
    :cond_1
    sget-object v4, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    iput-boolean v4, v7, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 750
    invoke-virtual {v9}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v2

    .line 755
    :cond_2
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 756
    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/RecentsView;

    .line 757
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->findTargetTaskView(Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v15

    .line 759
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 761
    invoke-direct {v0, v1, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 762
    new-instance v8, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 764
    invoke-virtual {v8, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 765
    invoke-virtual {v8, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 767
    invoke-static {v5}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v19

    const/high16 v4, 0x3f800000    # 1.0f

    .line 768
    iget v10, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mTaskViewRadius:F

    mul-float/2addr v10, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v10, v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v20, v10, v4

    const-string v4, "QuickstepTransition"

    .line 770
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startClosingWindowToRecentsAnimators:startRect="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "   targetRect="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 774
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 775
    invoke-virtual {v8, v13}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 776
    invoke-virtual {v8, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 778
    new-instance v12, Lcom/miui/home/recents/util/RectFSpringAnim;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move-object/from16 v18, v1

    invoke-direct/range {v16 .. v22}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 779
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v4, 0x3eb33333    # 0.35f

    const v10, 0x3f733333    # 0.95f

    invoke-virtual {v12, v1, v10, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 780
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v12, v1, v10, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 781
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v12, v1, v10, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 782
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v4, 0x3f7d70a4    # 0.99f

    const v11, 0x3e99999a    # 0.3f

    invoke-virtual {v12, v1, v4, v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 783
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v12, v1, v10, v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 785
    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v4

    if-ge v1, v4, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v14

    :goto_0
    if-nez v1, :cond_4

    .line 788
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 789
    invoke-static {v5}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskStackLayoutStyleVertical(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    move v10, v3

    goto :goto_1

    :cond_4
    move v10, v14

    .line 791
    :goto_1
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v17, v1, v3

    .line 792
    iget v1, v13, Landroid/graphics/RectF;->left:F

    iget v3, v13, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v4, v6, Landroid/graphics/Rect;->left:I

    iget v11, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v11

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    .line 793
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    sub-float v16, v4, v11

    .line 794
    iget v4, v13, Landroid/graphics/RectF;->top:F

    iget v11, v13, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v11

    div-float/2addr v4, v3

    iget v11, v6, Landroid/graphics/Rect;->top:I

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v14

    int-to-float v11, v11

    div-float/2addr v11, v3

    sub-float v3, v4, v11

    .line 795
    new-instance v14, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;

    move-object v4, v14

    move-object v11, v2

    move-object/from16 v19, v2

    move-object v2, v12

    move-object v12, v15

    move-object/from16 v20, v13

    move v13, v1

    move-object v1, v14

    move-object/from16 v14, v20

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v3

    invoke-direct/range {v4 .. v17}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$XPQMEZwstRlzLzRX9w8k2-NRdCA;-><init>(Lcom/miui/home/launcher/Launcher;Landroid/graphics/Rect;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;FLandroid/graphics/RectF;FFF)V

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 851
    new-instance v1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;

    move-object v3, v0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$4;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 867
    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->start()V

    move-object/from16 v1, p2

    move-object/from16 v4, v19

    const/4 v5, 0x0

    .line 869
    invoke-virtual {v0, v5, v4, v3, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    return-object v2
.end method

.method private startIconLaunchAnimator(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLandroid/graphics/Rect;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
    .locals 8

    const-string v0, "QuickstepTransition"

    .line 255
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

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, p2, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getWindowTargetBounds([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 263
    new-instance v1, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    iput-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 264
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->setCurrentAnimation(Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 266
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {v7, p5}, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 268
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;

    invoke-direct {p1, p5}, Lcom/miui/home/recents/-$$Lambda$AlEeBxjHFsy1SRWRXeztzuuTMeo;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    .line 270
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 273
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->startDetect()V

    return-void
.end method

.method private startLauncherContentAnimator(ZLcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 6

    const-string v0, "QuickstepTransition"

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLauncherContentAnimator:isAppOpening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 337
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    goto :goto_0

    :cond_1
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    .line 341
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v2

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-eq v2, v3, :cond_6

    if-eqz p1, :cond_2

    .line 343
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShortcutMenuLayerFadeOutAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    goto :goto_1

    .line 345
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startShortcutMenuLayerFadeInAnim(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    .line 348
    :goto_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewBackground()Lcom/miui/home/recents/views/OverviewBackground;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Lcom/miui/home/recents/views/OverviewBackground;->setAlpha(F)V

    .line 350
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewBackground()Lcom/miui/home/recents/views/OverviewBackground;

    move-result-object v2

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v2, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 351
    sget v2, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningTime:I

    mul-int/lit16 v2, v2, 0xd9

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 352
    sget-object v2, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 353
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 354
    invoke-virtual {p2, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    .line 356
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseCompleteRecentsBlurAnimation()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    .line 360
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 359
    invoke-static {v2, p1, v1}, Lcom/miui/home/launcher/common/Utilities;->fastBlurWhenUseCompleteAnimation(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_3

    .line 363
    :cond_3
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 362
    invoke-static {v2, p1, v3}, Lcom/miui/home/launcher/common/Utilities;->fastBlurWhenUseCompleteAnimation(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    .line 364
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/miui/home/launcher/common/Utilities;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 366
    :goto_3
    invoke-virtual {p2, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    .line 368
    :cond_5
    new-instance p1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nQMgAD5UW7Hbj8oUkwxIm5eqHn8;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$nQMgAD5UW7Hbj8oUkwxIm5eqHn8;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    .line 369
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mResetOverviewBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/Runnable;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    move-object/from16 v1, p4

    const-string v2, "QuickstepTransition"

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startOpeningWindowAnimators:rotation0IconLoc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    if-eqz v12, :cond_a

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 396
    :cond_0
    iget-object v4, v11, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v9

    const/4 v4, 0x0

    .line 397
    invoke-static {v4, v9, v1}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 399
    new-instance v5, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-direct {v5, v0, v4}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    .line 402
    invoke-virtual {v5}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getFirstTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    .line 406
    :cond_1
    new-instance v4, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getHomeStackBound()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    const/4 v0, 0x1

    .line 408
    invoke-virtual {v4, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 409
    invoke-virtual {v4, v8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    const/high16 v6, 0x3e800000    # 0.25f

    if-eqz v1, :cond_3

    .line 411
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v1

    goto :goto_1

    .line 412
    :cond_3
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v10, v10

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f400000    # 0.75f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v14, v15

    invoke-direct {v1, v7, v10, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v1

    .line 418
    :goto_1
    instance-of v1, v12, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_4

    .line 419
    move-object v10, v12

    check-cast v10, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v10}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v10

    .line 420
    invoke-virtual {v7, v10, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 424
    :cond_4
    invoke-virtual {v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 425
    iget v13, v10, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    iget v14, v10, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 426
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 427
    iget v10, v10, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    int-to-float v10, v10

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float/2addr v10, v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v10, v14

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/miui/home/recents/util/Utilities;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v19

    .line 433
    new-instance v14, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v14}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    .line 434
    new-instance v6, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v6, v12}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    invoke-virtual {v14, v6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 435
    sget-object v6, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v2, v6}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v6

    iput-boolean v6, v14, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    if-eqz v1, :cond_6

    .line 438
    move-object v1, v12

    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconRadius()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v15

    mul-float/2addr v6, v10

    .line 439
    iget-object v15, v11, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Lcom/miui/home/recents/views/FloatingIconView;->isAttachedToWindow()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 440
    iget-object v15, v11, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {v15}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    .line 441
    iput-object v3, v11, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 443
    :cond_5
    invoke-static {v2, v1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;Z)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v0

    iput-object v0, v11, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    move/from16 v18, v6

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    .line 446
    :goto_2
    new-instance v6, Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object v15, v6

    move-object/from16 v16, v0

    move-object/from16 v17, v13

    invoke-direct/range {v15 .. v21}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    .line 447
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v1, 0x3f7d70a4    # 0.99f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 448
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 449
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x3e99999a    # 0.3f

    goto :goto_3

    :cond_7
    const v2, 0x3ecccccd    # 0.4f

    :goto_3
    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 450
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v2

    if-eqz v2, :cond_8

    const/high16 v2, 0x3e800000    # 0.25f

    goto :goto_4

    :cond_8
    const v2, 0x3eb33333    # 0.35f

    :goto_4
    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 451
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 452
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v2, 0x3e19999a    # 0.15f

    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 454
    iget-object v0, v11, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_9

    .line 455
    invoke-virtual {v6, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 458
    :cond_9
    new-instance v13, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v14

    move-object v14, v6

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;IF)V

    invoke-virtual {v14, v13}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 488
    new-instance v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

    invoke-direct {v0, v11, v12}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/view/View;)V

    invoke-virtual {v14, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 516
    invoke-virtual {v14}, Lcom/miui/home/recents/util/RectFSpringAnim;->start()V

    return-object v14

    :cond_a
    :goto_5
    return-object v3
.end method


# virtual methods
.method public breakOpenAnim()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mResetOverviewBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->removeEndRunnable(Ljava/lang/Runnable;)V

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->removeEndRunnable(Ljava/lang/Runnable;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMoveToTargetRectWhenAnimEnd(Z)V

    :cond_1
    return-void
.end method

.method public clearRemoteAnimationProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    return-void
.end method

.method protected abstract composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;ZLcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
.end method

.method public doAnimationFinish()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchFinishRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public findTargetTaskView(Lcom/miui/home/recents/views/RecentsView;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/views/TaskView;
    .locals 6

    .line 876
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    .line 877
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 878
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

    .line 887
    :cond_2
    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    return-object p1
.end method

.method public getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 11

    const-string v0, "QuickstepTransition"

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityLaunchOptions   iconLoc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 178
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setRotationBerforStart(I)V

    .line 179
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->hasControlRemoteAppTransitionPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iput-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLaunchingView:Landroid/view/View;

    const/4 p1, 0x0

    .line 181
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->isLaunchingFromRecents(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p1

    .line 182
    invoke-direct {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->finishPendingGestureController()V

    .line 184
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 185
    new-instance v6, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;

    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$1;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Landroid/os/Handler;ZLjava/lang/ref/WeakReference;Landroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x15e

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x258

    :goto_0
    move-wide v7, p1

    const-wide/16 p1, 0x78

    sub-long p1, v7, p1

    const-wide/16 v0, 0x60

    sub-long v9, p1, v0

    .line 215
    new-instance p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;-><init>(Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;JJ)V

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;->makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 217
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object p1

    .line 219
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/recents/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method protected getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 1

    .line 160
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

    .line 578
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 582
    iget v4, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p2, :cond_1

    iget-object v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->pagekageName:Ljava/lang/String;

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

.method protected isNewHomeViewAdded()Z
    .locals 2

    .line 591
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 595
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public release()V
    .locals 1

    .line 542
    invoke-super {p0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->release()V

    const/4 v0, 0x0

    .line 543
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationAdapterCompat:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;

    .line 544
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mWallpaperOpenLauncherAnimationRunner:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$WallpaperOpenLauncherAnimationRunner;

    .line 545
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mLaunchingView:Landroid/view/View;

    .line 546
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 547
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIconLaunchAnimatorEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    .line 548
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mOpeningFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 549
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 550
    iput-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-void
.end method

.method public setRemoteAnimationProvider(Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/os/CancellationSignal;)V
    .locals 1

    .line 318
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mRemoteAnimationProvider:Lcom/miui/home/recents/util/RemoteAnimationProvider;

    .line 319
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$0hd7dLizcINlHoqEqInuns_g_as;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$0hd7dLizcINlHoqEqInuns_g_as;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RemoteAnimationProvider;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method

.method public startRecentsContentAnimator(ZLcom/miui/home/recents/views/RecentsView;Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V
    .locals 10

    .line 670
    invoke-virtual {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    .line 675
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 677
    :goto_0
    invoke-virtual {p2}, Lcom/miui/home/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isTaskStackLayoutStyleVertical(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 678
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    :goto_2
    const/4 v4, 0x0

    if-eqz p1, :cond_5

    .line 681
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xb4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/miui/home/recents/views/RecentsContainer;->startRecentsContainerFadeOutAnim(JJ)V

    if-eqz v3, :cond_7

    .line 683
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    :cond_4
    invoke-virtual {v3, p2, v4, p4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startLaunchTaskSucceededAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_7

    .line 687
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    :cond_6
    invoke-virtual {v3, p2, v4, p4}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startClosingWindowToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/miui/home/recents/util/MultiAnimationEndDetector;)V

    :cond_7
    :goto_3
    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    if-eqz p1, :cond_8

    .line 692
    new-array v3, v3, [F

    sget-object v4, Lcom/miui/home/recents/OverviewState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 693
    invoke-virtual {v4}, Lcom/miui/home/recents/OverviewState;->getOverviewBackgroundAlpha()F

    move-result v4

    aput v4, v3, v2

    aput p2, v3, v1

    goto :goto_4

    :cond_8
    new-array v3, v3, [F

    aput p2, v3, v2

    sget-object p2, Lcom/miui/home/recents/OverviewState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 694
    invoke-virtual {p2}, Lcom/miui/home/recents/OverviewState;->getOverviewBackgroundAlpha()F

    move-result p2

    aput p2, v3, v1

    .line 696
    :goto_4
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewBackground()Lcom/miui/home/recents/views/OverviewBackground;

    move-result-object p2

    aget v4, v3, v2

    invoke-virtual {p2, v4}, Lcom/miui/home/recents/views/OverviewBackground;->setAlpha(F)V

    .line 697
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getOverviewBackground()Lcom/miui/home/recents/views/OverviewBackground;

    move-result-object p2

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v3, 0xd9

    .line 698
    invoke-virtual {p2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 699
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 700
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 702
    invoke-virtual {p4, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addAnimation(Ljava/lang/Object;)V

    .line 703
    new-instance p2, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$dIqAYnFB-oSVl3P-lry2-HPaUCI;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$dIqAYnFB-oSVl3P-lry2-HPaUCI;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p4, p2}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_9

    if-eqz p3, :cond_9

    .line 704
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.miui.newhome"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    if-eqz v1, :cond_a

    .line 706
    new-instance p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$3;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$3;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)V

    invoke-virtual {p4, p1}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->addEndRunnable(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method
