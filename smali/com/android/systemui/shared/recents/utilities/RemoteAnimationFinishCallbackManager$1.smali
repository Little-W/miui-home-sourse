.class Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager$1;
.super Landroid/window/IWindowContainerTransactionCallback$Stub;
.source "RemoteAnimationFinishCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager$1;->this$0:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-direct {p0}, Landroid/window/IWindowContainerTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "ConnectAnimFinishCallbackManager"

    const-string p2, "Transitions all anim call WindowOrganizer.finishTransition end"

    .line 643
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object p1, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager$1;->this$0:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->access$100(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager$1;->this$0:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-static {p2}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->access$000(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 645
    iget-object p0, p0, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager$1;->this$0:Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->access$200(Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;)V

    return-void
.end method
