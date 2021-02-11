.class public Lcom/miui/home/recents/RecentsAnimationListenerImpl;
.super Ljava/lang/Object;
.source "RecentsAnimationListenerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;,
        Lcom/miui/home/recents/RecentsAnimationListenerImpl$_lancet;
    }
.end annotation


# instance fields
.field private mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

.field public mFinishControllerRunnable:Ljava/lang/Runnable;

.field mHomeContentInsets:Landroid/graphics/Rect;

.field mInimizedHomeBounds:Landroid/graphics/Rect;

.field public mIsStart:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private mWindowThresholdCrossed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    .line 34
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    .line 36
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private finishController(ZZ)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    :cond_0
    return-void
.end method

.method private hasPendingFinishRunnable()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    .line 93
    invoke-virtual {v0}, Lcom/miui/home/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$enableInputConsumer$3(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$finishController$0(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZZ)V

    if-eqz p3, :cond_0

    .line 108
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$finishControllerAsync$1(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZZ)V

    return-void
.end method

.method public static synthetic lambda$setWindowThresholdCrossed$2(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enableInputConsumer()V
    .locals 2

    .line 161
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$qHmRFGwrWCyck_nbvgRtCS_95KE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$qHmRFGwrWCyck_nbvgRtCS_95KE;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public findRemoteAnimationTargetCompat(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    return-object p1
.end method

.method public finishController(ZLjava/lang/Runnable;Z)V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hasPendingFinishRunnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    :cond_0
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    .line 111
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    iget-object p2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishControllerAsync(ZZ)V
    .locals 2

    .line 115
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$I956r8L5WTGgs01FU7uI0TgiDhQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$I956r8L5WTGgs01FU7uI0TgiDhQ;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishPendingController()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hasPendingFinishRunnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-object v0
.end method

.method public hideCurrentInputMethod()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->hideCurrentInputMethod()V

    :cond_0
    return-void
.end method

.method public onAnimationCanceled(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    .line 142
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 143
    invoke-interface {v1, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onRecentsAnimationCanceled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    const-string v0, "RecentsAnimationListenerImpl"

    const-string v1, "onAnimationStart"

    .line 55
    invoke-static {v0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    const-string v4, "RecentsAnimationListenerImpl"

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAnimationStart:taskId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "   activityType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->activityType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "   mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 64
    iput-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    .line 65
    iput-object p3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHomeContentInsets:Landroid/graphics/Rect;

    .line 66
    iput-object p4, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 70
    iget-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 71
    invoke-interface {p2, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onRecentsAnimationStart(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 150
    invoke-interface {v1, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public setWindowThresholdCrossed(Z)V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    if-eq v0, p1, :cond_0

    .line 131
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    .line 132
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$SP4gV5ujl7d1mjEa8IowigRnZNY;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$SP4gV5ujl7d1mjEa8IowigRnZNY;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
