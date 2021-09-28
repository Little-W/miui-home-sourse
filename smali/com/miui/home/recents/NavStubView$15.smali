.class Lcom/miui/home/recents/NavStubView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$finalTaskIndex:I


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    .line 3334
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$15;->val$finalTaskIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$0(Lcom/miui/home/recents/NavStubView$15;)V
    .locals 3

    .line 3357
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3358
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$3200(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 3343
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5702(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 3348
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5700(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3351
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView$15;->val$finalTaskIndex:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3352
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "quickSwitchAnimEnd"

    const-string v2, "gesture"

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1

    .line 3353
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3352
    :goto_1
    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    iget p1, p0, Lcom/miui/home/recents/NavStubView$15;->val$finalTaskIndex:I

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2400(Lcom/miui/home/recents/NavStubView;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 3355
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;)V

    .line 3356
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$15$hrbuuLZBGy-XzG_MfpGk4ETzBdA;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$15$hrbuuLZBGy-XzG_MfpGk4ETzBdA;-><init>(Lcom/miui/home/recents/NavStubView$15;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3361
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6100(Lcom/miui/home/recents/NavStubView;)V

    .line 3362
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6200(Lcom/miui/home/recents/NavStubView;Z)V

    goto :goto_4

    .line 3364
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->postStartNewTaskRunnable()V

    .line 3365
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$1100(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    .line 3366
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6300(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "landscape"

    goto :goto_2

    :cond_4
    const-string v0, "portrait"

    .line 3367
    :goto_2
    iget v1, p0, Lcom/miui/home/recents/NavStubView$15;->val$finalTaskIndex:I

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2400(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    if-le v1, v2, :cond_5

    const-string v1, "right"

    goto :goto_3

    :cond_5
    const-string v1, "left"

    .line 3365
    :goto_3
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendQuickSwitchEvent(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3369
    :goto_4
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5400(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3337
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5702(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 3338
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5802(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method
