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

    .line 3100
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$15;->val$finalTaskIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$269(Lcom/miui/home/recents/NavStubView$15;)V
    .locals 3

    .line 3120
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6200(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3121
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

    .line 3109
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5602(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 3114
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5600(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3117
    :cond_0
    iget p1, p0, Lcom/miui/home/recents/NavStubView$15;->val$finalTaskIndex:I

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$2400(Lcom/miui/home/recents/NavStubView;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 3118
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5800(Lcom/miui/home/recents/NavStubView;)V

    .line 3119
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$15$eY_syl483A-WPka-D1UK-GCb17Y;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$15$eY_syl483A-WPka-D1UK-GCb17Y;-><init>(Lcom/miui/home/recents/NavStubView$15;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3124
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)V

    .line 3125
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$6000(Lcom/miui/home/recents/NavStubView;Z)V

    goto :goto_2

    .line 3127
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->postStartNewTaskRunnable()V

    .line 3128
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$1100(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 3129
    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$6100(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "landscape"

    goto :goto_0

    :cond_2
    const-string v0, "portrait"

    :goto_0
    iget v1, p0, Lcom/miui/home/recents/NavStubView$15;->val$finalTaskIndex:I

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 3130
    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2400(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    if-le v1, v2, :cond_3

    const-string v1, "right"

    goto :goto_1

    :cond_3
    const-string v1, "left"

    .line 3128
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendQuickSwitchEvent(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3132
    :goto_2
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5300(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3103
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5602(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 3104
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5702(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method
