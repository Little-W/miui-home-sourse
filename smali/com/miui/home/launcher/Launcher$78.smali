.class Lcom/miui/home/launcher/Launcher$78;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Launcher$78$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 7969
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$78;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 7972
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$78;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/Launcher;->access$9302(Lcom/miui/home/launcher/Launcher;Lcom/android/systemui/fsgesture/IFsGestureService;)Lcom/android/systemui/fsgesture/IFsGestureService;

    .line 7973
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$78;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$9300(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7975
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$78;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$9300(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureService;

    move-result-object p1

    const-string p2, "com.miui.home"

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$78;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$10100(Lcom/miui/home/launcher/Launcher;)Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/fsgesture/IFsGestureService;->registerCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V

    .line 7976
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$78;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7978
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "Launcher"

    const-string p2, "\u8fde\u63a5Service \u6210\u529f"

    .line 7981
    invoke-static {p1, p2}, Lcom/miui/home/launcher/Launcher$78$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 7986
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$78;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$10200(Lcom/miui/home/launcher/Launcher;)V

    const-string p1, "Launcher"

    const-string v0, "\u8fde\u63a5Service \u5931\u8d25"

    .line 7987
    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher$78$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
