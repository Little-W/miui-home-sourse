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

    .line 3838
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 3861
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$17;->cancelStartFirstTaskAnim:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 3866
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$17;->cancelStartFirstTaskAnim:Z

    if-eqz p1, :cond_0

    return-void

    .line 3870
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6800(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3871
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    sget-object v1, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-static {p1, v1}, Lcom/miui/home/recents/NavStubView;->access$7600(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 3873
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$3900(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 3875
    invoke-virtual {p1, v0, v1, v0}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3878
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "start first task failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3879
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 3843
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6800(Lcom/miui/home/recents/NavStubView;Z)V

    const/4 p1, 0x0

    .line 3844
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$17;->cancelStartFirstTaskAnim:Z

    .line 3845
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3847
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 3848
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 3849
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 3850
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isNeedHide()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3851
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1, p1}, Lcom/miui/home/recents/NavStubView;->access$3902(Lcom/miui/home/recents/NavStubView;I)I

    .line 3852
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$17;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskIdByIndex(I)I

    move-result p1

    invoke-static {v1, p1}, Lcom/miui/home/recents/NavStubView;->access$7502(Lcom/miui/home/recents/NavStubView;I)I

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
