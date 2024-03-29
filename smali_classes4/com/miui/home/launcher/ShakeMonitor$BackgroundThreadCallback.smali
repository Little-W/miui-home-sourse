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


# instance fields
.field private mIsMonitoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;->mIsMonitoring:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "sensor"

    .line 114
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    if-nez v2, :cond_1

    return v1

    .line 117
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const-string v4, "Launcher.ShakeMonitor"

    if-eqz v3, :cond_4

    if-eq v3, v1, :cond_2

    goto :goto_0

    .line 119
    :cond_2
    iget-boolean v3, p0, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;->mIsMonitoring:Z

    if-nez v3, :cond_5

    .line 120
    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 121
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v2, v0, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    iput-boolean v1, p0, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;->mIsMonitoring:Z

    .line 123
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    .line 125
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    const-string p0, "start monitor"

    .line 127
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_4
    iget-boolean p1, p0, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;->mIsMonitoring:Z

    if-eqz p1, :cond_5

    .line 134
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShakeMonitor()Lcom/miui/home/launcher/ShakeMonitor;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;->mIsMonitoring:Z

    const-string p0, "stop monitor"

    .line 136
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v1
.end method
