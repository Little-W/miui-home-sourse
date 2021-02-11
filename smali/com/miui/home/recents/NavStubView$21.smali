.class Lcom/miui/home/recents/NavStubView$21;
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

    .line 2771
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$21;->val$finalTaskIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 2780
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6502(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2785
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6500(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2788
    :cond_0
    iget p1, p0, Lcom/miui/home/recents/NavStubView$21;->val$finalTaskIndex:I

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 2789
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6600(Lcom/miui/home/recents/NavStubView;)V

    .line 2790
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5200(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2791
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5300(Lcom/miui/home/recents/NavStubView;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 2793
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6700(Lcom/miui/home/recents/NavStubView;)V

    goto :goto_0

    .line 2795
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->postStartNewTaskRunnable()V

    .line 2797
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->setIsPerformGesture(Z)V

    .line 2798
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$6200(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 2774
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    iget v0, p0, Lcom/miui/home/recents/NavStubView$21;->val$finalTaskIndex:I

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4600(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6402(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 2775
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$21;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v2}, Lcom/miui/home/recents/NavStubView;->access$6502(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method
