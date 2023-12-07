.class Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HalfAppToRecentsInHalfSplitAnimatorListenerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 5531
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$0$NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter()V
    .locals 4

    .line 5542
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5543
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    .line 5545
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$4100(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 5546
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, v1, Lcom/miui/home/recents/NavStubView;->mHalfAppEnterRecentsRunnale:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5547
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/home/recents/NavStubView;->access$6602(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)Lcom/miui/home/recents/views/TaskView;

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 5558
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5540
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6800(Lcom/miui/home/recents/NavStubView;Z)V

    .line 5541
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter$qY5fNT3e3Bpm9jv6doZZ6vRYwLI;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter$qY5fNT3e3Bpm9jv6doZZ6vRYwLI;-><init>(Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 5549
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6900(Lcom/miui/home/recents/NavStubView;)V

    .line 5550
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$7000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5551
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onLaunchActivityProcessEnd()V

    .line 5552
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$7200(Lcom/miui/home/recents/NavStubView;)V

    .line 5553
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p1, "MHWAnimation#  HalfAppToRecentsAnimFromGesture  # NavStubView$HalfAppToRecentsAnimatorListenerAdapter"

    .line 5534
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 5535
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$HalfAppToRecentsInHalfSplitAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/recents/NavStubView;->access$6800(Lcom/miui/home/recents/NavStubView;Z)V

    return-void
.end method
