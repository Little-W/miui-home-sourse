.class public Lcom/miui/home/launcher/ShakeMonitor;
.super Ljava/lang/Object;
.source "ShakeMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;,
        Lcom/miui/home/launcher/ShakeMonitor$FolderStateChangedMessageHandler;
    }
.end annotation


# instance fields
.field private mFolderStateChangedMessageHandler:Lcom/miui/home/launcher/ShakeMonitor$FolderStateChangedMessageHandler;

.field private mLastShakeTime:J

.field private mLastShakeX:F

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mShakeCounter:I

.field private mShakeMonitorHandler:Landroid/os/Handler;

.field private final mShowShakeToast:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 32
    iput-wide v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeTime:J

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeX:F

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    .line 40
    new-instance v0, Lcom/miui/home/launcher/ShakeMonitor$FolderStateChangedMessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/ShakeMonitor$FolderStateChangedMessageHandler;-><init>(Lcom/miui/home/launcher/ShakeMonitor;Lcom/miui/home/launcher/ShakeMonitor$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mFolderStateChangedMessageHandler:Lcom/miui/home/launcher/ShakeMonitor$FolderStateChangedMessageHandler;

    .line 46
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$ShakeMonitor$jukXt7FmLqpO-QNF72sBndg_PlI;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$ShakeMonitor$jukXt7FmLqpO-QNF72sBndg_PlI;

    iput-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShowShakeToast:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/miui/home/launcher/common/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;

    invoke-direct {v2}, Lcom/miui/home/launcher/ShakeMonitor$BackgroundThreadCallback;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeMonitorHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ShakeMonitor;Ljava/lang/Runnable;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShakeMonitor;->startOrStopMonitor(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$new$0()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isCurrentScreenNeedAlignIconsToTop()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isPause()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Launcher.ShakeMonitor"

    const-string v2, "show Shake Toast"

    .line 49
    const v1, 0x7f10032f

    const/4 v2, 0x0

    .line 50
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->showImprovedToast(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onEditModeStateChanged$1(Lcom/miui/home/launcher/ShakeMonitor;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShowShakeToast:Ljava/lang/Runnable;

    const-wide/16 v1, 0x172

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/BackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private onShake()V
    .locals 3

    const-string v0, "Launcher.ShakeMonitor"

    const-string v1, "shake to align icons"

    .line 144
    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTopWithSaveDb(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method private removeShakeMonitorHandlerMessages()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeMonitorHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeMonitorHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private startMonitorIfNeed(Ljava/lang/Runnable;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/miui/home/launcher/ShakeMonitor;->removeShakeMonitorHandlerMessages()V

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeMonitorHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private startOrStopMonitor(Ljava/lang/Runnable;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 76
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShakeMonitor;->startMonitorIfNeed(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShakeMonitor;->stopMonitorIfNeed()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getEventBusHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/ShakeMonitor;->mFolderStateChangedMessageHandler:Lcom/miui/home/launcher/ShakeMonitor$FolderStateChangedMessageHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onEditModeStateChanged()V
    .locals 1

    .line 55
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ShakeMonitor$7p1hR139Zjgx_iUkK1aCFrqAbKw;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$ShakeMonitor$7p1hR139Zjgx_iUkK1aCFrqAbKw;-><init>(Lcom/miui/home/launcher/ShakeMonitor;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShakeMonitor;->startOrStopMonitor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLockScreenSwitchChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShakeMonitor;->startOrStopMonitor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .line 154
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 155
    iget v1, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 156
    iput p1, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeX:F

    .line 157
    iput v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    return-void

    .line 160
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    iget-wide v3, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeTime:J

    sub-long v3, v0, v3

    .line 162
    iget v5, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeX:F

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    cmpl-float v5, v5, v6

    const-wide/16 v6, 0x258

    const-wide/16 v8, -0x1

    if-lez v5, :cond_3

    .line 163
    iget-wide v10, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeTime:J

    cmp-long v5, v10, v8

    if-nez v5, :cond_1

    .line 164
    iget v2, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    const-string v2, "Launcher.ShakeMonitor"

    const-string v3, "first shake"

    .line 165
    .line 166
    iput-wide v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeTime:J

    goto/16 :goto_0

    :cond_1
    const-wide/16 v10, 0x12c

    cmp-long v5, v3, v10

    if-lez v5, :cond_2

    cmp-long v5, v3, v6

    if-gez v5, :cond_2

    .line 169
    iget v3, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    const-string v3, "Launcher.ShakeMonitor"

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "continue shake, mShakeCounter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    iput-wide v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeTime:J

    .line 172
    iget v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const-string v0, "Launcher.ShakeMonitor"

    const-string v1, "shake end, reset"

    .line 173
    .line 174
    invoke-direct {p0}, Lcom/miui/home/launcher/ShakeMonitor;->onShake()V

    .line 175
    iput v2, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    .line 176
    iput-wide v8, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeTime:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x384

    cmp-long v0, v3, v0

    if-lez v0, :cond_5

    const-string v0, "Launcher.ShakeMonitor"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shake "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", shake too fast and reset"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    iput v2, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    .line 181
    iput-wide v8, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeTime:J

    goto :goto_0

    :cond_3
    cmp-long v0, v3, v6

    if-lez v0, :cond_5

    .line 184
    iget v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    if-lez v0, :cond_4

    const-string v0, "Launcher.ShakeMonitor"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shake "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", timeout and reset"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_4
    iput v2, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    .line 188
    iput-wide v8, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeTime:J

    .line 190
    :cond_5
    :goto_0
    iput p1, p0, Lcom/miui/home/launcher/ShakeMonitor;->mLastShakeX:F

    return-void
.end method

.method public stopMonitorIfNeed()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/miui/home/launcher/ShakeMonitor;->removeShakeMonitorHandlerMessages()V

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeMonitorHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/miui/home/launcher/ShakeMonitor;->mShakeCounter:I

    return-void
.end method
