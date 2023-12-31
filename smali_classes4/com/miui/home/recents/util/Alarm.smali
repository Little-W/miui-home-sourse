.class public Lcom/miui/home/recents/util/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAlarmListener:Lcom/miui/home/recents/util/OnAlarmListener;

.field private mAlarmPending:Z

.field private mAlarmTriggerTime:J

.field private mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmPending:Z

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/Alarm;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancelAlarm()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmPending:Z

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/miui/home/recents/util/Alarm;->mWaitingForCallback:Z

    .line 52
    iget-boolean v1, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmPending:Z

    if-eqz v1, :cond_1

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 54
    iget-wide v3, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmTriggerTime:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 57
    iget-object v0, p0, Lcom/miui/home/recents/util/Alarm;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x0

    sub-long/2addr v3, v1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/miui/home/recents/util/Alarm;->mWaitingForCallback:Z

    goto :goto_0

    .line 60
    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmPending:Z

    .line 61
    iget-object v0, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmListener:Lcom/miui/home/recents/util/OnAlarmListener;

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0, p0}, Lcom/miui/home/recents/util/OnAlarmListener;->onAlarm(Lcom/miui/home/recents/util/Alarm;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlarm(J)V
    .locals 5

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 30
    iput-boolean v2, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmPending:Z

    .line 31
    iget-wide v3, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmTriggerTime:J

    add-long/2addr p1, v0

    .line 32
    iput-wide p1, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmTriggerTime:J

    .line 35
    iget-boolean p1, p0, Lcom/miui/home/recents/util/Alarm;->mWaitingForCallback:Z

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmTriggerTime:J

    cmp-long p1, v3, p1

    if-lez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/miui/home/recents/util/Alarm;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/miui/home/recents/util/Alarm;->mWaitingForCallback:Z

    .line 39
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/recents/util/Alarm;->mWaitingForCallback:Z

    if-nez p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/miui/home/recents/util/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v3, v0

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    iput-boolean v2, p0, Lcom/miui/home/recents/util/Alarm;->mWaitingForCallback:Z

    :cond_1
    return-void
.end method

.method public setOnAlarmListener(Lcom/miui/home/recents/util/OnAlarmListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/miui/home/recents/util/Alarm;->mAlarmListener:Lcom/miui/home/recents/util/OnAlarmListener;

    return-void
.end method
