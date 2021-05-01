.class Lcom/miui/home/launcher/Launcher$80;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 8154
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$80;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 8157
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$80;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/Launcher;->access$9102(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/fsgesture/IFsGestureService;)Lcom/android/systemui/fsgesture/IFsGestureService;

    .line 8158
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$80;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$9100(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8160
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$80;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$9100(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object p1

    const-string p2, "com.miui.home"

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$80;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10000(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/fsgesture/IFsGestureService;->registerCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V

    .line 8161
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$80;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8163
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "Launcher"

    const-string p2, "连接Service 成功"

    .line 8166
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 8171
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$80;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$10100(Lcom/miui/home/launcher/Launcher;)V

    const-string p1, "Launcher"

    const-string v0, "连接Service 失败"

    .line 8172
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
