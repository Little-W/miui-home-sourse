.class Lcom/miui/home/launcher/Launcher$81;
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

    .line 9309
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$81;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 9312
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$81;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/Launcher;->access$8802(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/fsgesture/IFsGestureService;)Lcom/android/systemui/fsgesture/IFsGestureService;

    .line 9313
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$81;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$8800(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9315
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$81;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$8800(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object p1

    const-string p2, "com.miui.home"

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$81;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$9500(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/fsgesture/IFsGestureService;->registerCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V

    .line 9316
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$81;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9318
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p0, "Launcher"

    const-string/jumbo p1, "\u8fde\u63a5Service \u6210\u529f"

    .line 9321
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 9326
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$81;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$9600(Lcom/miui/home/launcher/Launcher;)V

    const-string p0, "Launcher"

    const-string/jumbo p1, "\u8fde\u63a5Service \u5931\u8d25"

    .line 9327
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
