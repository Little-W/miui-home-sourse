.class Lcom/miui/home/recents/NavStubView$23;
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
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 2906
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 2917
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$7202(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2922
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$7200(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2926
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6402(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 2927
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

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

    .line 2929
    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZ)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 2909
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2910
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6402(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 2912
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$23;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$7202(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method
