.class Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;
.super Landroid/os/Handler;
.source "StatusBarSwipeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchTouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;Landroid/os/Looper;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;->this$0:Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 78
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;->this$0:Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    invoke-static {v0}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->access$000(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;)Lcom/miui/home/recents/SystemUiProxyWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "StatusBarController"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send event to StatusBar, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;->this$0:Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    invoke-static {v0}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->access$000(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;)Lcom/miui/home/recents/SystemUiProxyWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return-void
.end method
