.class public Lcom/miui/home/recents/RecentsAnimationListenerImpl;
.super Ljava/lang/Object;
.source "RecentsAnimationListenerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;
    }
.end annotation


# instance fields
.field private mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

.field private mFinishCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mFinishControllerRunnable:Ljava/lang/Runnable;

.field mHomeContentInsets:Landroid/graphics/Rect;

.field mInimizedHomeBounds:Landroid/graphics/Rect;

.field public mIsMerged:Z

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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    .line 42
    iput-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    return-void
.end method

.method private finishController(ZZ)V
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    .line 166
    invoke-static {v0}, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->unSetPauseAdvanced(Z)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish, toRecents="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sendUserLeaveHint="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecentsAnimationListenerImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    return-void
.end method

.method private hasPendingFinishRunnable()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    .line 123
    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/miui/launcher/utils/LauncherUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private printStartRecentsAnimLog()V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationStart, homeContentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHomeContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minimizedHomeBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsAnimationListenerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->printAllUnfilteredRemoteAnimationTarget()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disableInputConsumer()V
    .locals 1

    .line 282
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    return-void
.end method

.method public enableInputConsumer()V
    .locals 2

    .line 274
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$g77bd-eeLuC179DvliQ0qQUUgV4;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$g77bd-eeLuC179DvliQ0qQUUgV4;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public findRemoteAnimationTargetCompat(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method

.method public finishController(ZLjava/lang/Runnable;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hasPendingFinishRunnable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 137
    sget-object p2, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p2}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    :cond_1
    new-instance p2, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;

    invoke-direct {p2, p0, p1, p3}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$5tFF9vF1pk3Lr5zQLuSTlaOzEi0;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V

    iput-object p2, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    .line 150
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishControllerAsync(ZZ)V
    .locals 2

    .line 154
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$eQQ-AYMw-7keDOoUtT6lhyK4yE8;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishControllerDirectly(ZZ)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZZ)V

    return-void
.end method

.method public finishPendingController()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hasPendingFinishRunnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public finishSoscController(IZLjava/lang/Runnable;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 186
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hasPendingFinishRunnable()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 190
    sget-object p3, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p3}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    :cond_1
    new-instance p3, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;IZZ)V

    iput-object p3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    .line 203
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishControllerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishSoscController(IZZ)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->finishForSosc(IZZZ)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishSoscController, taskId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", toRecents = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sendUserLeaveHint="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecentsAnimationListenerImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    return-void
.end method

.method public finishSoscControllerAsync(IZZ)V
    .locals 2

    .line 158
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ldRrd4SZ4KIMkVOZvUpZmehwr00;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ldRrd4SZ4KIMkVOZvUpZmehwr00;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;IZZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-object p0
.end method

.method public hideCurrentInputMethod()V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->hideCurrentInputMethod()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$enableInputConsumer$7$RecentsAnimationListenerImpl()V
    .locals 1

    .line 275
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$finishController$0$RecentsAnimationListenerImpl()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 145
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$finishController$1$RecentsAnimationListenerImpl(ZZ)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZZ)V

    .line 142
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$td0seiMGmc-W4NrKY2DuEwPEWwI;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$td0seiMGmc-W4NrKY2DuEwPEWwI;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$finishControllerAsync$2$RecentsAnimationListenerImpl(ZZ)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZZ)V

    return-void
.end method

.method public synthetic lambda$finishSoscController$4$RecentsAnimationListenerImpl()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mFinishCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 198
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$finishSoscController$5$RecentsAnimationListenerImpl(IZZ)V
    .locals 0

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishSoscController(IZZ)V

    .line 195
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$9xGWLOvNA17B77TS3fOHRmSbinY;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$9xGWLOvNA17B77TS3fOHRmSbinY;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$finishSoscControllerAsync$3$RecentsAnimationListenerImpl(IZZ)V
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishSoscController(IZZ)V

    return-void
.end method

.method public synthetic lambda$setWindowThresholdCrossed$6$RecentsAnimationListenerImpl(Z)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWindowThresholdCrossed thresholdCrossed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsAnimationListenerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/WindowManagerWrapper;->setRecentsAppBehindSystemBars(Z)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationCanceled(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 237
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 239
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 240
    invoke-interface {v0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onRecentsAnimationCanceled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationCanceled(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 230
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 231
    invoke-interface {v0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onRecentsAnimationCanceled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 68
    new-instance v0, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;I)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 70
    iput-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    .line 71
    iput-object p3, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mHomeContentInsets:Landroid/graphics/Rect;

    .line 72
    iput-object p4, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 75
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->printStartRecentsAnimLog()V

    .line 76
    iget-object p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 77
    invoke-interface {p2, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onRecentsAnimationStart(Lcom/miui/home/recents/RecentsAnimationListenerImpl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .locals 1

    .line 260
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 261
    invoke-interface {v0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onSwitchToScreenshot(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 263
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 247
    invoke-interface {v0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 1

    .line 253
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;

    .line 254
    invoke-interface {v0, p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;->onTasksAppeared([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mController:Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public setIsMergedAnimation(Z)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsMerged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsAnimationListenerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsMerged:Z

    return-void
.end method

.method public setIsStart(Z)V
    .locals 1

    .line 96
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsStart="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecentsAnimationListenerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWindowThresholdCrossed(Z)V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    if-eq v0, p1, :cond_0

    .line 212
    iput-boolean p1, p0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mWindowThresholdCrossed:Z

    .line 213
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$OUHAoaZ3dsLYdwbT2OmqO2EJjU0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$OUHAoaZ3dsLYdwbT2OmqO2EJjU0;-><init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
