.class Lcom/miui/home/recents/NavStubView$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->performAppToRecents(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$runningTaskView:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    .line 2599
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$20;->val$runningTaskView:Lcom/miui/home/recents/views/TaskView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 2609
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5802(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 2610
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->val$runningTaskView:Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2611
    invoke-virtual {p1, v2, v2, v1}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    .line 2613
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;)V

    .line 2615
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$5300(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 2617
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    new-instance v1, Lcom/miui/home/recents/NavStubView$20$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$20$1;-><init>(Lcom/miui/home/recents/NavStubView$20;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p1, v1, v2, v3}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2623
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsCompleteEvent;-><init>()V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2624
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setIsPerformGesture(Z)V

    .line 2625
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6200(Lcom/miui/home/recents/NavStubView;)V

    .line 2626
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6302(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/util/RectFSpringAnim;)Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2627
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "appToRecentsAnimFromGesture"

    .line 2602
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 2603
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5802(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 2604
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
