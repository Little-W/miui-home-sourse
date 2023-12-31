.class Lcom/miui/home/recents/NavStubView$28;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->performHomeToHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$isInOverviewState:Z


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 6950
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$28;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-boolean p2, p0, Lcom/miui/home/recents/NavStubView$28;->val$isInOverviewState:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 6960
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$28;->val$isInOverviewState:Z

    if-eqz p1, :cond_0

    .line 6961
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$28;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 6962
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$28;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setIsExitRecentsAnimating(Z)V

    .line 6964
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$28;->this$0:Lcom/miui/home/recents/NavStubView;

    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$9300(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 6965
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$28;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string p1, "startHomeAnimation"

    invoke-static {p0, p1}, Lcom/miui/home/recents/NavStubView;->access$8900(Lcom/miui/home/recents/NavStubView;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 6953
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$28;->val$isInOverviewState:Z

    if-eqz p1, :cond_0

    .line 6954
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$28;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$4000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsExitRecentsAnimating(Z)V

    :cond_0
    return-void
.end method
