.class public Lcom/miui/home/launcher/touch/FeedTransController;
.super Ljava/lang/Object;
.source "FeedTransController.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;


# static fields
.field public static final FEED_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/touch/FeedTransController;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

.field private mProgress:F

.field private mShiftRange:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/miui/home/launcher/touch/FeedTransController$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "feedProgress"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/touch/FeedTransController$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/touch/FeedTransController;->FEED_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedTransController;->getDeviceHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mShiftRange:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 73
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mProgress:F

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/touch/FeedTransController;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/touch/FeedTransController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedTransController;->onProgressAnimationEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/touch/FeedTransController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedTransController;->onProgressAnimationStart()V

    return-void
.end method

.method private onNewHomeProgress(FF)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->onNewHomeTransProgress(FF)V

    return-void
.end method

.method private onProgressAnimationEnd()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    sget-object v1, Lcom/miui/newhome/view/gestureview/NewHomeState;->HIDE:Lcom/miui/newhome/view/gestureview/NewHomeState;

    invoke-virtual {v0, v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->changeState(Lcom/miui/newhome/view/gestureview/NewHomeState;)V

    .line 182
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/CheckTransferMessage;

    invoke-direct {v1}, Lcom/miui/home/launcher/common/messages/CheckTransferMessage;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mProgress:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    invoke-virtual {v0, v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    sget-object v1, Lcom/miui/newhome/view/gestureview/NewHomeState;->SHOW:Lcom/miui/newhome/view/gestureview/NewHomeState;

    invoke-virtual {v0, v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->changeState(Lcom/miui/newhome/view/gestureview/NewHomeState;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    sget-object v2, Lcom/miui/newhome/view/gestureview/NewHomeState;->SHOW:Lcom/miui/newhome/view/gestureview/NewHomeState;

    invoke-virtual {v0, v2}, Lcom/miui/newhome/view/gestureview/NewHomeView;->changeState(Lcom/miui/newhome/view/gestureview/NewHomeState;)V

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    invoke-virtual {v0, v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->setVisibility(I)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 192
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    return-void
.end method

.method private onProgressAnimationStart()V
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/newhome/view/gestureview/NewHomeView;->getNewHomeState()Lcom/miui/newhome/view/gestureview/NewHomeState;

    move-result-object v1

    sget-object v2, Lcom/miui/newhome/view/gestureview/NewHomeState;->SHOW:Lcom/miui/newhome/view/gestureview/NewHomeState;

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    invoke-virtual {p0, p1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string p1, "FeedTransController"

    const-string v1, "Exception "

    .line 210
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public getDeviceHeight(Landroid/content/Context;)I
    .locals 1

    const-string p0, "window"

    .line 216
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 217
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 218
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    iget p0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    iget p0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return p0
.end method

.method public getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 152
    new-instance v0, Lcom/miui/home/launcher/touch/FeedTransController$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/touch/FeedTransController$2;-><init>(Lcom/miui/home/launcher/touch/FeedTransController;)V

    return-object v0
.end method

.method public getShiftRange()F
    .locals 0

    .line 77
    iget p0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mShiftRange:F

    return p0
.end method

.method public isShow()Z
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mProgress:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object p0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    .line 202
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setProgress(F)V
    .locals 2

    .line 95
    iput p1, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mProgress:F

    .line 97
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mShiftRange:F

    mul-float/2addr v0, p1

    .line 98
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1, v0}, Lcom/miui/newhome/view/gestureview/NewHomeView;->setTranslationY(F)V

    .line 100
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    invoke-virtual {v1, p1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->onTransProgress(F)V

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragLayer;->getFeedSwipeController()Lcom/miui/home/launcher/touch/FeedSwipeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->isFeedAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget v1, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mShiftRange:F

    sub-float/2addr v1, v0

    neg-float v0, v1

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/touch/FeedTransController;->onNewHomeProgress(FF)V

    :cond_0
    return-void
.end method

.method public setState(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getFeedHomeVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedTransController;->setProgress(F)V

    .line 119
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedTransController;->onProgressAnimationEnd()V

    return-void
.end method

.method public setStateWithAnimation(Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherState;->getFeedHomeVerticalProgress(Lcom/miui/home/launcher/Launcher;)F

    move-result p1

    .line 130
    iget v0, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mProgress:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/launcher/touch/FeedTransController;->onProgressAnimationEnd()V

    return-void

    .line 136
    :cond_0
    iget-boolean v0, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 142
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/touch/FeedTransController;->FEED_PROGRESS:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mProgress:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 143
    iget-wide v1, p3, Lcom/miui/home/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 144
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    invoke-virtual {p0}, Lcom/miui/home/launcher/touch/FeedTransController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    return-void
.end method

.method public setupViews(Lcom/miui/newhome/view/gestureview/NewHomeView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/miui/home/launcher/touch/FeedTransController;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    return-void
.end method
