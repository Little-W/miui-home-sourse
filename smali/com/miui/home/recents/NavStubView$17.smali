.class Lcom/miui/home/recents/NavStubView$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startFirstTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelStartFirstTaskAnim:Z

.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 3499
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$0(Lcom/miui/home/recents/NavStubView$17;)V
    .locals 2

    .line 3528
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$6600(Lcom/miui/home/recents/NavStubView;Z)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 3510
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$17;->cancelStartFirstTaskAnim:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 3515
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$17;->cancelStartFirstTaskAnim:Z

    if-eqz p1, :cond_0

    return-void

    .line 3519
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6200(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3520
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    sget-object v1, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-static {p1, v1}, Lcom/miui/home/recents/NavStubView;->access$6800(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 3522
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 3524
    invoke-virtual {p1, v0, v1, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZ)V

    .line 3526
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    const-string v2, "BLOCKER_ID_FOR_RESET_LAUNCHER_PROPERTY_AFTER_START_TASK"

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$17$kFAvS6y97Yn8ZEtBKdzHrk5Xdfk;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$17$kFAvS6y97Yn8ZEtBKdzHrk5Xdfk;-><init>(Lcom/miui/home/recents/NavStubView$17;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/home/recents/util/TimeOutBlocker;->postRunnable(Landroid/os/Handler;JLjava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3530
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "start first task failed"

    .line 3531
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3504
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6200(Lcom/miui/home/recents/NavStubView;Z)V

    const/4 p1, 0x0

    .line 3505
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$17;->cancelStartFirstTaskAnim:Z

    return-void
.end method
