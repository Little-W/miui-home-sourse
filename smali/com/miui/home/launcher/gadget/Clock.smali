.class public Lcom/miui/home/launcher/gadget/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/Clock$ClockStyle;,
        Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;
    }
.end annotation


# instance fields
.field protected mCalendar:Ljava/util/Calendar;

.field protected mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z

.field private mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Clock;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/Clock;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/Clock;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Clock;->updateCurTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/Clock;)Ljava/lang/Runnable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/gadget/Clock;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/Clock;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic lambda$registerReceiver$377(Lcom/miui/home/launcher/gadget/Clock;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;-><init>(Lcom/miui/home/launcher/gadget/Clock;Lcom/miui/home/launcher/gadget/Clock$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$unregisterReceiver$378(Lcom/miui/home/launcher/gadget/Clock;)V
    .locals 2

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTimeZoneChangedReceiver:Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "com.miui.home.launcher.gadget.Clock"

    const-string v1, "unregisterReceiver error."

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private registerReceiver()V
    .locals 1

    .line 80
    new-instance v0, Lcom/miui/home/launcher/gadget/-$$Lambda$Clock$M0WCL5jNe-rSeWyGHxMGyxd_1XY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/-$$Lambda$Clock$M0WCL5jNe-rSeWyGHxMGyxd_1XY;-><init>(Lcom/miui/home/launcher/gadget/Clock;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 90
    new-instance v0, Lcom/miui/home/launcher/gadget/-$$Lambda$Clock$S54rJlFNr9EnXxjsUFRPrO2YQxk;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/-$$Lambda$Clock$S54rJlFNr9EnXxjsUFRPrO2YQxk;-><init>(Lcom/miui/home/launcher/gadget/Clock;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateCurTime()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/gadget/Clock$ClockStyle;->updateAppearance(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "com.miui.home.launcher.gadget.Clock"

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/miui/home/launcher/gadget/Clock$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/Clock$1;-><init>(Lcom/miui/home/launcher/gadget/Clock;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Clock;->unregisterReceiver()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Clock;->registerReceiver()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Clock;->unregisterReceiver()V

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTickerStopped:Z

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Clock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setClockStyle(Lcom/miui/home/launcher/gadget/Clock$ClockStyle;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    .line 112
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Clock;->updateCurTime()V

    return-void
.end method
