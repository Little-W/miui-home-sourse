.class Lcom/miui/home/recents/anim/ConnectAnimManager$1;
.super Ljava/lang/Object;
.source "ConnectAnimManager.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/ConnectAnimManager;->connectClosingAnim(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

.field final synthetic val$navStubView:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/ConnectAnimManager;Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$1;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    iput-object p2, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$1;->val$navStubView:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$1;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$000(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$1;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$000(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedRecycle(Z)V

    .line 164
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$1;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$000(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$1;->val$navStubView:Lcom/miui/home/recents/NavStubView;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->onClosingAnimConnectEnd()V

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback(ZLandroid/window/WindowContainerTransaction;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    .line 171
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setConnectAnimRunning(Z)V

    return-void
.end method
