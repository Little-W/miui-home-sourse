.class public Lcom/miui/home/recents/anim/ConnectAnimManager;
.super Ljava/lang/Object;
.source "ConnectAnimManager.java"


# static fields
.field public static final USE_CONNECT_ANIM:Z

.field private static volatile sInstance:Lcom/miui/home/recents/anim/ConnectAnimManager;


# instance fields
.field private animTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private currentDisplayRotation:I

.field private currentRotation:I

.field private currentRotationIconLoc:Landroid/graphics/Rect;

.field private homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private homeRotation:I

.field private isClipFromLeftOrTop:Z

.field private isIgnoreIconAnim:Z

.field private isUseTranslucentAnim:Z

.field private isVerticalClip:Z

.field private launchPosition:I

.field private mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mBreakAnimStartDimAlpha:F

.field private final mBreakStartRectF:Landroid/graphics/RectF;

.field private mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private mExitAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final mFirstStart:Landroid/graphics/RectF;

.field private mFromRecent:Z

.field private mInitDimLayerStartAlpha:Z

.field private mIsAppPairAnim:Z

.field private mMultiAnimationEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

.field private mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

.field private mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private mProgressCalculateType:I

.field private mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mRemoteAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mTargetView:Landroid/view/View;

.field private needUpdateDim:Z

.field private openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private radiusScale:F

.field private transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->USE_CONNECT_ANIM:Z

    sput-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakStartRectF:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFirstStart:Landroid/graphics/RectF;

    .line 59
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    .line 60
    new-instance v0, Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    invoke-direct {v0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mMultiAnimationEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/anim/ConnectAnimManager;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFromRecent:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-object p0
.end method

.method private connectRecentAnimForOpening(Landroid/graphics/RectF;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isOpenAnim()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedRecycle(Z)V

    .line 192
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setNavAnimToLauncherFalse()V

    .line 193
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setInitDimLayerStartAlpha(Z)V

    .line 194
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    .line 195
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->BREAK_OPEN:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 196
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateSpringData()V

    .line 197
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isFromRecent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFromRecent:Z

    .line 198
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFirstStart:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getStartRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 199
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearRectFSpringAnimListener()V

    .line 200
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v0, Lcom/miui/home/recents/anim/ConnectAnimManager$2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/ConnectAnimManager$2;-><init>(Lcom/miui/home/recents/anim/ConnectAnimManager;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 235
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setConnectAnimRunning(Z)V

    return-void

    .line 186
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectAnim return, anim = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "ConnectAnimManager"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;
    .locals 0

    .line 64
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;
    .locals 2

    .line 68
    sget-object v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->sInstance:Lcom/miui/home/recents/anim/ConnectAnimManager;

    if-nez v0, :cond_1

    .line 69
    const-class v0, Lcom/miui/home/recents/anim/ConnectAnimManager;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/miui/home/recents/anim/ConnectAnimManager;->sInstance:Lcom/miui/home/recents/anim/ConnectAnimManager;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-direct {v1}, Lcom/miui/home/recents/anim/ConnectAnimManager;-><init>()V

    sput-object v1, Lcom/miui/home/recents/anim/ConnectAnimManager;->sInstance:Lcom/miui/home/recents/anim/ConnectAnimManager;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->sInstance:Lcom/miui/home/recents/anim/ConnectAnimManager;

    return-object v0
.end method

.method private setNavAnimToLauncherFalse()V
    .locals 1

    .line 178
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public actionMoveAppDrag(Landroid/graphics/RectF;)V
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRemoteOpenBreakAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 430
    :cond_2
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    .line 431
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakStartRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 432
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->getCurrentAlpha()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakAnimStartDimAlpha:F

    return-void
.end method

.method public canConnectClosingAnim(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    .line 109
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->isRequestingRecentAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 116
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getFirstTargetRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isSameIcon(Landroid/view/View;Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz p0, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->getCurrentPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public cancelAnim()V
    .locals 1

    .line 436
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelClosingAnim()Z
    .locals 3

    .line 588
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRecentAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 592
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isExitAnimRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 593
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getExitAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    move v0, v1

    :cond_1
    return v0
.end method

.method public cancelClosingAnimByLauncherScrolling(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->cancelClosingAnim()Z

    :cond_0
    return-void
.end method

.method public cancelEndDetector()V
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mMultiAnimationEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz p0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->cancel()V

    :cond_0
    return-void
.end method

.method public connectClosingAnim(Landroid/view/View;)V
    .locals 7

    const-string p1, "ConnectAnimManager"

    const-string v0, "connectClosingAnim"

    .line 137
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mExitAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "connectClosingAnim fail, anim is null"

    .line 140
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setNavAnimToLauncherFalse()V

    const/4 p1, 0x1

    .line 144
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setCancelFinishAppToHome(Z)V

    .line 145
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setIsOpenAnim(Z)V

    .line 146
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParamByType(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 147
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateSpringData()V

    .line 148
    new-instance v2, Landroid/graphics/RectF;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {}, Lcom/miui/home/recents/util/WindowCornerRadiusUtil;->getCornerRadius()I

    move-result v1

    int-to-float v3, v1

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->OPEN_FROM_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateAllAnimValues(Landroid/graphics/RectF;FFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 149
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->clearRectFSpringAnimListener()V

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 152
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    .line 155
    :cond_2
    new-instance v2, Lcom/miui/home/recents/anim/ConnectAnimManager$1;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/recents/anim/ConnectAnimManager$1;-><init>(Lcom/miui/home/recents/anim/ConnectAnimManager;Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 174
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setConnectAnimRunning(Z)V

    return-void
.end method

.method public connectOpeningAnim(Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectOpeningAnim isRecentAnimRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectAnimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p2}, Lcom/miui/home/recents/anim/ConnectAnimManager;->connectRecentAnimForOpening(Landroid/graphics/RectF;)V

    if-eqz p3, :cond_1

    const/16 p0, 0xb

    .line 129
    invoke-virtual {p3, p0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->connectRemoteAnim(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public connectRemoteAnim(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 3

    const-string v0, "ConnectAnimManager"

    const-string v1, "connectRemoteAnim"

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string p1, "set anim == null || !anim.isRunning()"

    .line 247
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRemoteAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    :cond_1
    if-eqz p1, :cond_4

    .line 250
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isOpenAnim()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setInitDimLayerStartAlpha(Z)V

    .line 255
    iget-object v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v1, :cond_3

    .line 256
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedRecycle(Z)V

    .line 257
    iget-object v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedResetShortcutIcon(Z)V

    .line 259
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isFromRecent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFromRecent:Z

    .line 260
    iget-object v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFirstStart:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getStartRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 261
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->copyCurrentAnimNextState()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 262
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/anim/ConnectAnimManager$3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/anim/ConnectAnimManager$3;-><init>(Lcom/miui/home/recents/anim/ConnectAnimManager;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 301
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/anim/-$$Lambda$ConnectAnimManager$nXeHGE6SEkf1v_6-DcxzNajTsLU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/anim/-$$Lambda$ConnectAnimManager$nXeHGE6SEkf1v_6-DcxzNajTsLU;-><init>(Lcom/miui/home/recents/anim/ConnectAnimManager;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 350
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setConnectAnimRunning(Z)V

    .line 351
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 352
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    return-void

    .line 251
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectAnim return, anim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mAnim = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->animTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    return-object p0
.end method

.method public getClosingFloatingIconView()Lcom/miui/home/recents/views/FloatingIconView;
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-object p0
.end method

.method public getEndDetector()Lcom/miui/home/recents/util/MultiAnimationEndDetector;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mMultiAnimationEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    return-object p0
.end method

.method public getExitAnim()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mExitAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0
.end method

.method public getRecentAnim()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0
.end method

.method public handleNonAppToHome()V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->resetShortcutIcon()V

    :cond_0
    return-void
.end method

.method public initDimLayerStartAlpha()V
    .locals 3

    .line 373
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/DimLayer;->getCurrentAlpha()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakAnimStartDimAlpha:F

    .line 374
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakStartRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 377
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getProgressCalculateType()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mProgressCalculateType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 379
    iput v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakAnimStartDimAlpha:F

    .line 380
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakStartRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    :goto_0
    const/4 v0, 0x1

    .line 382
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->setInitDimLayerStartAlpha(Z)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBreakOpenRectFAnimForDimLayer, mProgressCalculateType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mProgressCalculateType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBreakAnimStartDimAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakAnimStartDimAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBreakStartRectF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakStartRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConnectAnimManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isAnimRunning()Z
    .locals 0

    .line 393
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getFinishCallback()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->isConnectAnimRunning()Z

    move-result p0

    return p0
.end method

.method public isAppPairClosingAnimRunning()Z
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentClosingAnimRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isExitAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mIsAppPairAnim:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExitAnimRunning()Z
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mExitAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInitDimLayerStartAlpha()Z
    .locals 0

    .line 405
    iget-boolean p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mInitDimLayerStartAlpha:Z

    return p0
.end method

.method public isRecentAnimRunning()Z
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentBreakOpenAnimRunning()Z
    .locals 1

    .line 540
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentOpenAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->BREAK_OPEN:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentClosingAnimRunning()Z
    .locals 1

    .line 536
    sget-boolean v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->USE_CONNECT_ANIM:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isOpenAnim()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentOpenAnimRunning()Z
    .locals 1

    .line 544
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isOpenAnim()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRemoteOpenBreakAnimRunning()Z
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSameIcon(Landroid/view/View;Landroid/graphics/RectF;)Z
    .locals 2

    .line 94
    instance-of p0, p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p0, :cond_0

    .line 95
    check-cast p1, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float p0, p0, v1

    if-gez p0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_1

    const/4 p1, 0x1

    .line 102
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "click same icon = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ConnectAnimManager"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p1
.end method

.method public synthetic lambda$connectRemoteAnim$0$ConnectAnimManager(Landroid/graphics/RectF;FFF)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    .line 302
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isInitDimLayerStartAlpha()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 308
    iget-object v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getTargetRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 309
    iget-object v6, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->getProgressCalculateType()I

    move-result v6

    .line 310
    iget-object v7, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakStartRectF:Landroid/graphics/RectF;

    invoke-static {v4, v7, v2, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v7

    .line 311
    iget-object v8, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFirstStart:Landroid/graphics/RectF;

    invoke-static {v4, v8, v2, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v2

    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 313
    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getDimAlpha()F

    move-result v6

    .line 315
    iget v8, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mBreakAnimStartDimAlpha:F

    sub-float/2addr v6, v8

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    .line 316
    iget-boolean v7, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFromRecent:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v9, p3

    .line 318
    invoke-virtual {v1, v4, v7, v9, v8}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    .line 319
    invoke-virtual {v1, v4}, Lcom/miui/home/recents/NavStubView;->updateCurrentRect(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_0
    move/from16 v9, p3

    .line 321
    invoke-virtual {v1, v4}, Lcom/miui/home/recents/NavStubView;->updateCurrentRect(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    move/from16 v9, p3

    move v6, v2

    :goto_0
    move v5, v3

    :goto_1
    move v12, v3

    move v3, v5

    move v11, v6

    move v5, v2

    goto :goto_2

    :cond_2
    move/from16 v9, p3

    .line 328
    iget-object v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFirstStart:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getFirstTargetRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v6, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 329
    invoke-virtual {v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->getProgressCalculateType()I

    move-result v6

    .line 328
    invoke-static {v4, v1, v2, v6}, Lcom/miui/home/recents/util/RectFSpringAnim;->getRealProgress(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;I)F

    move-result v1

    move v11, v1

    move v12, v5

    move v5, v11

    .line 332
    :goto_2
    iget-boolean v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mFromRecent:Z

    if-eqz v1, :cond_4

    if-nez v3, :cond_3

    .line 333
    iget-object v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v3, :cond_3

    .line 334
    iget-boolean v6, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isVerticalClip:Z

    iget-boolean v7, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isClipFromLeftOrTop:Z

    iget v8, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->launchPosition:I

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-static/range {v1 .. v8}, Lcom/miui/home/recents/TaskViewUtils;->updateOpenAnimRecent(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;FZZI)V

    .line 338
    :cond_3
    iget-boolean v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->needUpdateDim:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v1, :cond_5

    .line 339
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    invoke-virtual {v1, v11, v0, v12}, Lcom/miui/home/recents/DimLayer;->dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V

    goto :goto_3

    .line 342
    :cond_4
    iget-object v10, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    if-eqz v10, :cond_5

    iget-object v3, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    if-eqz v3, :cond_5

    iget-object v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    if-eqz v1, :cond_5

    iget-object v15, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v15, :cond_5

    .line 343
    iget-object v2, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mTargetView:Landroid/view/View;

    iget-boolean v6, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isUseTranslucentAnim:Z

    iget-object v7, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->animTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget v8, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->currentRotation:I

    iget-object v13, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    iget-object v14, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->currentRotationIconLoc:Landroid/graphics/Rect;

    move-object/from16 v21, v15

    move-object v15, v1

    iget v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->currentDisplayRotation:I

    move/from16 v16, v1

    iget v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->homeRotation:I

    move/from16 v17, v1

    iget v1, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->radiusScale:F

    move/from16 v18, v1

    iget-boolean v0, v0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isIgnoreIconAnim:Z

    move/from16 v19, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v20, v3

    move v3, v5

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v9, v10

    move-object v10, v0

    move v0, v11

    move-object/from16 v11, v20

    move/from16 v20, v12

    move-object/from16 v12, v21

    move/from16 v21, v0

    invoke-static/range {v1 .. v22}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->openAnimUpdate(Landroid/graphics/RectF;Landroid/view/View;FFFZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/FloatingIconView;Lcom/miui/home/recents/FloatingIconLayer;Landroid/graphics/Rect;IIFZZFI)V

    :cond_5
    :goto_3
    return-void
.end method

.method public resetManager()V
    .locals 1

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->animTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 571
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 572
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 573
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 574
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 575
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 576
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRemoteAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 577
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mExitAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 578
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 579
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 580
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 581
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mTargetView:Landroid/view/View;

    .line 582
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 583
    iput-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mMultiAnimationEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    return-void
.end method

.method public setControl(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZZIZ)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 471
    iput-object p2, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 472
    iput-object p3, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 473
    iput-boolean p4, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isVerticalClip:Z

    .line 474
    iput-boolean p5, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isClipFromLeftOrTop:Z

    .line 475
    iput p6, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->launchPosition:I

    .line 476
    iput-boolean p7, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->needUpdateDim:Z

    return-void
.end method

.method public setControl(ZLcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Landroid/view/View;ILcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/views/FloatingIconView;Lcom/miui/home/recents/FloatingIconLayer;Landroid/graphics/Rect;IIFZ)V
    .locals 0

    .line 489
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isUseTranslucentAnim:Z

    .line 490
    iput-object p2, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->animTarget:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    .line 491
    iput-object p3, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mTargetView:Landroid/view/View;

    .line 492
    iput p4, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->currentRotation:I

    .line 493
    iput-object p5, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->clipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 494
    iput-object p6, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->transformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 495
    iput-object p7, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->homeParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 496
    iput-object p8, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->openingTargets:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 497
    iput-object p10, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 498
    iput-object p9, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mOpenFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 499
    iput-object p11, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->currentRotationIconLoc:Landroid/graphics/Rect;

    .line 500
    iput p12, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->currentDisplayRotation:I

    .line 501
    iput p13, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->homeRotation:I

    .line 502
    iput p14, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->radiusScale:F

    .line 503
    iput-boolean p15, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->isIgnoreIconAnim:Z

    return-void
.end method

.method public setExitAnim(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mExitAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-void
.end method

.method public setInitDimLayerStartAlpha(Z)V
    .locals 0

    .line 409
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mInitDimLayerStartAlpha:Z

    return-void
.end method

.method public setIsAppPairAnim(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mIsAppPairAnim:Z

    return-void
.end method

.method public setRecentAnim(Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 85
    iput-object p2, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mClosingFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-void
.end method

.method public setRemoteAnim(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 79
    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRemoteAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRemoteAnim = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConnectAnimManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startEndDetector()V
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mMultiAnimationEndDetector:Lcom/miui/home/recents/util/MultiAnimationEndDetector;

    if-eqz p0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/miui/home/recents/util/MultiAnimationEndDetector;->startDetect()V

    :cond_0
    return-void
.end method

.method public updateEndRectF(Landroid/graphics/RectF;)V
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRecentAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager;->mRecentAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->isRemoteOpenBreakAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getRemoteOpenBreakAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    :cond_1
    :goto_0
    return-void
.end method
