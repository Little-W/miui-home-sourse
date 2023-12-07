.class Lcom/miui/home/recents/NavStubView$15;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->changeRecentAnimToAppToHomeAnim(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    .line 4711
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$15;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 4714
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "changeRecentAnimToAppToHomeAnim mAppToHomeAnim2 cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$15;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 4720
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "changeRecentAnimToAppToHomeAnim mAppToHomeAnim2 end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4721
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getClosingFloatingIconView()Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4723
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedRecycle(Z)V

    .line 4724
    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    .line 4726
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    .line 4727
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    .line 4728
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$15;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p1, :cond_1

    .line 4729
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    .line 4731
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$15;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    return-void
.end method
