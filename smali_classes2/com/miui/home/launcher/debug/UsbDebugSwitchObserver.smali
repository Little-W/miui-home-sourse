.class public Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;
.super Landroid/database/ContentObserver;
.source "UsbDebugSwitchObserver.java"


# static fields
.field private static volatile mIsUsbTurnedOn:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/miui/home/launcher/debug/OnUsbSwitchListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 18
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mContext:Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->updateUsbSwitchState()V

    return-void
.end method

.method private addUsbSwitchListener(Lcom/miui/home/launcher/debug/OnUsbSwitchListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mListener:Lcom/miui/home/launcher/debug/OnUsbSwitchListener;

    return-void
.end method

.method private getListener()Lcom/miui/home/launcher/debug/OnUsbSwitchListener;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;

    sget-boolean v1, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mIsUsbTurnedOn:Z

    iget-object p0, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;-><init>(ZLandroid/content/Context;)V

    return-object v0
.end method

.method public static isUsbTurnedOn()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mIsUsbTurnedOn:Z

    return v0
.end method

.method private removeUsbSwitchListener(Landroid/content/Context;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mListener:Lcom/miui/home/launcher/debug/OnUsbSwitchListener;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/debug/OnUsbSwitchListener;->onCancelListener(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mListener:Lcom/miui/home/launcher/debug/OnUsbSwitchListener;

    return-void
.end method

.method private updateUsbSwitchState()V
    .locals 2

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "adb_enabled"

    .line 59
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mIsUsbTurnedOn:Z

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 25
    iget-object p1, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mListener:Lcom/miui/home/launcher/debug/OnUsbSwitchListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->updateUsbSwitchState()V

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " isUsbTurnedOn = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mIsUsbTurnedOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " UsbDebugSwitchObserver "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-boolean p1, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mIsUsbTurnedOn:Z

    if-eqz p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mListener:Lcom/miui/home/launcher/debug/OnUsbSwitchListener;

    iget-object p0, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/debug/OnUsbSwitchListener;->onUsbSwitchOn(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mListener:Lcom/miui/home/launcher/debug/OnUsbSwitchListener;

    iget-object p0, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/debug/OnUsbSwitchListener;->onUsbSwitchOff(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public registerUsbSwitchObserver()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->getListener()Lcom/miui/home/launcher/debug/OnUsbSwitchListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->addUsbSwitchListener(Lcom/miui/home/launcher/debug/OnUsbSwitchListener;)V

    return-void
.end method

.method public unregisterUsbSwitchObserver()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->removeUsbSwitchListener(Landroid/content/Context;)V

    return-void
.end method
