.class Lcom/miui/home/recents/NavStubView$14;
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

.field final synthetic val$finalRunningTaskIndex:I

.field final synthetic val$finalTaskIndex:I


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;II)V
    .locals 0

    .line 3668
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$14;->val$finalTaskIndex:I

    iput p3, p0, Lcom/miui/home/recents/NavStubView$14;->val$finalRunningTaskIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 3677
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6402(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 3682
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6400(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3685
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6600(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView$14;->val$finalTaskIndex:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3686
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "quickSwitchAnimEnd"

    const-string v2, "gesture"

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1

    .line 3687
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTopPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3686
    :goto_1
    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3688
    iget p1, p0, Lcom/miui/home/recents/NavStubView$14;->val$finalTaskIndex:I

    iget v0, p0, Lcom/miui/home/recents/NavStubView$14;->val$finalRunningTaskIndex:I

    if-ne p1, v0, :cond_3

    .line 3689
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v0, p1, Lcom/miui/home/recents/NavStubView;->mResumeLastTaskRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6700(Lcom/miui/home/recents/NavStubView;Ljava/lang/Runnable;)V

    .line 3690
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6800(Lcom/miui/home/recents/NavStubView;Z)V

    goto :goto_4

    .line 3692
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->postStartNewTaskRunnable()V

    .line 3693
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$1100(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    .line 3694
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6900(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "landscape"

    goto :goto_2

    :cond_4
    const-string v0, "portrait"

    .line 3695
    :goto_2
    iget v1, p0, Lcom/miui/home/recents/NavStubView$14;->val$finalTaskIndex:I

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2700(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    if-le v1, v2, :cond_5

    const-string v1, "right"

    goto :goto_3

    :cond_5
    const-string v1, "left"

    .line 3693
    :goto_3
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendQuickSwitchEvent(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3697
    :goto_4
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6300(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3671
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6402(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 3672
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$14;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6502(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method
