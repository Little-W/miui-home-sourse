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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;Landroid/os/Looper;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;->this$0:Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    .line 75
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 80
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;->this$0:Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    invoke-static {v0}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->access$000(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "StatusBarController"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send event to StatusBar, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler;->this$0:Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;

    invoke-static {v0}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;->access$000(Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController;)Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "StatusBarController"

    const-string v1, "Remote exception on sysUiProxy."

    .line 88
    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/uioverrides/StatusBarSwipeController$DispatchTouchHandler$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
