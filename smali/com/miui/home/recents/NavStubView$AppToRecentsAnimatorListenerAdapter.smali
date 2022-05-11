.class Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppToRecentsAnimatorListenerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 3355
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$0(Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;)V
    .locals 4

    .line 3366
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3367
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    .line 3369
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$3500(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 3370
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, v1, Lcom/miui/home/recents/NavStubView;->mEnterRecentsRunnale:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3364
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3365
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$AppToRecentsAnimatorListenerAdapter$0YK4iuHY3a-evoFjyrSnB--edQk;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$AppToRecentsAnimatorListenerAdapter$0YK4iuHY3a-evoFjyrSnB--edQk;-><init>(Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3372
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6100(Lcom/miui/home/recents/NavStubView;)V

    .line 3373
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3374
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6300(Lcom/miui/home/recents/NavStubView;)V

    .line 3375
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "appToRecentsAnimFromGesture"

    .line 3358
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 3359
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$AppToRecentsAnimatorListenerAdapter;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;Z)V

    return-void
.end method
