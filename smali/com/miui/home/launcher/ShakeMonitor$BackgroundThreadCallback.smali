.class public Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;
.super Ljava/lang/Object;
.source "ShakeMonitor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ShakeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundThreadCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback$_lancet;
    }
.end annotation


# instance fields
.field private mIsMonitoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;->mIsMonitoring:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "sensor"

    .line 112
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    if-nez v2, :cond_1

    return v1

    .line 115
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    iget-boolean v3, p0, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;->mIsMonitoring:Z

    if-nez v3, :cond_3

    .line 118
    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 119
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iput-boolean v1, p0, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;->mIsMonitoring:Z

    .line 121
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 123
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    const-string p1, "Launcher.ShakeMonitor"

    const-string v0, "start monitor"

    .line 125
    invoke-static {p1, v0}, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;->mIsMonitoring:Z

    if-eqz p1, :cond_3

    .line 132
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;->mIsMonitoring:Z

    const-string p1, "Launcher.ShakeMonitor"

    const-string v0, "stop monitor"

    .line 134
    invoke-static {p1, v0}, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
