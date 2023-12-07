.class Lcom/miui/home/recents/NavStubView$20;
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

    .line 5980
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    iput p2, p0, Lcom/miui/home/recents/NavStubView$20;->val$finalTaskIndex:I

    iput p3, p0, Lcom/miui/home/recents/NavStubView$20;->val$finalRunningTaskIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 5994
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "mAppToAppAnim onAnimationCancel"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5995
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/recents/NavStubView;->access$7302(Lcom/miui/home/recents/NavStubView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 6000
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$7300(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6003
    :cond_0
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "mAppToAppAnim onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6004
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$7500(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$4000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    iget v1, p0, Lcom/miui/home/recents/NavStubView$20;->val$finalTaskIndex:I

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 6005
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_1

    .line 6006
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTopPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v2, "quickSwitchAnimEnd"

    const-string v3, "gesture"

    .line 6005
    invoke-static {v1, v2, v3, p1}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6007
    iget p1, p0, Lcom/miui/home/recents/NavStubView$20;->val$finalTaskIndex:I

    iget v1, p0, Lcom/miui/home/recents/NavStubView$20;->val$finalRunningTaskIndex:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    .line 6008
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/recents/GestureSoscController;->onGestureEnd(IZ)V

    .line 6009
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p1, Lcom/miui/home/recents/NavStubView;->mResumeLastTaskRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/miui/home/recents/NavStubView;->access$7600(Lcom/miui/home/recents/NavStubView;Ljava/lang/Runnable;)V

    .line 6010
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidU()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6011
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    invoke-virtual {p1, v2, v0, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    .line 6013
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v2}, Lcom/miui/home/recents/NavStubView;->access$7700(Lcom/miui/home/recents/NavStubView;Z)V

    .line 6014
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$7800(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6015
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$7900(Lcom/miui/home/recents/NavStubView;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/TaskViewUtils;->showDockDivider([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    goto :goto_4

    .line 6018
    :cond_4
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setQuickSwitchApp(Z)V

    .line 6019
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->postStartNewTaskRunnable()V

    .line 6020
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$1200(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    .line 6021
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$8000(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "landscape"

    goto :goto_2

    :cond_5
    const-string v0, "portrait"

    .line 6022
    :goto_2
    iget v1, p0, Lcom/miui/home/recents/NavStubView$20;->val$finalTaskIndex:I

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$3300(Lcom/miui/home/recents/NavStubView;)I

    move-result v3

    if-le v1, v3, :cond_6

    const-string v1, "right"

    goto :goto_3

    :cond_6
    const-string v1, "left"

    .line 6020
    :goto_3
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendQuickSwitchEvent(ZLjava/lang/String;Ljava/lang/String;)V

    .line 6024
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1, v2}, Lcom/miui/home/recents/NavStubView;->access$8102(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 6025
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$7100(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 5983
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$7302(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 5984
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$20;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/recents/NavStubView;->access$7402(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 5985
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getAnimTarget()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5987
    invoke-interface {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    :cond_0
    return-void
.end method
