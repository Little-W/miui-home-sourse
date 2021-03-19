.class public Lcom/miui/home/launcher/IconReorganizeMonitor;
.super Landroid/content/BroadcastReceiver;
.source "IconReorganizeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/IconReorganizeMonitor$_lancet;
    }
.end annotation


# static fields
.field private static sBackedUpBDForReorganize:Z

.field private static sIsAutoReorganizing:Z

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    .line 42
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onReorganizeStarted(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$001(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private cancelReorganizeNotification(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v0, 0x7d0

    .line 116
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private clearBackup(Landroid/content/Context;)V
    .locals 1

    .line 207
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->cancelReorganizeNotification(Landroid/content/Context;)V

    const-string v0, "_backup_before_reorganize"

    .line 208
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->clearBackupDB(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isAutoReorganizing()Z
    .locals 1

    .line 228
    sget-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    return v0
.end method

.method public static synthetic lambda$onReceive$0(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->clearBackup(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$1(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->revertReorganization(Landroid/content/Context;)V

    return-void
.end method

.method private onBackupDBRestored(Landroid/content/Context;)V
    .locals 3

    const-string v0, "alarm"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.action.CLEAR_BACKUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 91
    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string p1, "Launcher.IconReorganizeMonitor"

    const-string v0, "cancel clear_backup action"

    .line 93
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onDBBackupFinishedForReorgnize(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 202
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    .line 203
    invoke-static {p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onLayoutBackupReady(Landroid/content/Context;)V

    return-void
.end method

.method public static onLayoutBackupReady(Landroid/content/Context;)V
    .locals 4

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->registerClearBackupAlarm(Landroid/content/Context;J)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "Launcher.IconReorganizeMonitor"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p1}, Lcom/miui/home/launcher/Application;->getLauncherApplication(Landroid/content/Context;)Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "com.miui.home.action.CLEAR_BACKUP"

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$wD-2YzCrxNweqrd_ISK_gXpl1zE;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$wD-2YzCrxNweqrd_ISK_gXpl1zE;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->hasBroughtToForeground()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "com.miui.home.action.RESET_HOME"

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$KnPg966IaY92XS-jGM4Ps_xSW2A;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$KnPg966IaY92XS-jGM4Ps_xSW2A;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/IconReorganizeMonitor$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor$1;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V

    new-instance p1, Lcom/miui/home/launcher/IconReorganizeMonitor$2;

    invoke-direct {p1, p0, p2, v1}, Lcom/miui/home/launcher/IconReorganizeMonitor$2;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Intent;Lcom/miui/home/launcher/Launcher;)V

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public static onReorganizeFail()V
    .locals 2

    const/4 v0, 0x0

    .line 194
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    .line 195
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    .line 196
    sget-object v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 198
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static onReorganizeFinished(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 185
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    .line 186
    invoke-static {p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->showReorganizeNotification(Landroid/content/Context;)V

    .line 187
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    .line 188
    sget-object p0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 189
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onReorganizeStarted(Landroid/content/Context;)Z
    .locals 2

    .line 167
    sget-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 170
    :cond_0
    sput-boolean v1, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    const-string v0, "_backup_before_reorganize"

    .line 171
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->backupDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/miui/home/launcher/IconReorganizeMonitor$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor$3;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return v1

    :cond_1
    const/4 p1, 0x1

    .line 180
    sput-boolean p1, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    return p1
.end method

.method private static registerClearBackupAlarm(Landroid/content/Context;J)V
    .locals 3

    const-string v0, "alarm"

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.action.CLEAR_BACKUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 104
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 105
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 106
    invoke-virtual {v0, v2, p1, p2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const-string p0, "Launcher.IconReorganizeMonitor"

    const-string p1, "register clear_backup action"

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private revertReorganization(Landroid/content/Context;)V
    .locals 1

    .line 212
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->cancelReorganizeNotification(Landroid/content/Context;)V

    const-string v0, "_backup_before_reorganize"

    .line 213
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->restoreBackupDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/miui/home/launcher/IconReorganizeMonitor$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor$4;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void

    .line 223
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onBackupDBRestored(Landroid/content/Context;)V

    .line 224
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private static showReorganizeNotification(Landroid/content/Context;)V
    .locals 11

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 121
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 123
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.home.action.RESET_HOME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {p0, v1, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1001c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_key_auto_backup_time"

    const-wide/16 v5, -0x1

    .line 128
    invoke-static {p0, v4, v5, v6}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 133
    sget-boolean v5, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    if-eqz v5, :cond_1

    const v5, 0x7f100220

    .line 134
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const v5, 0x7f100221

    .line 135
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v1

    .line 133
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "notification"

    .line 137
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 139
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "miui.showAction"

    .line 140
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_2

    const/4 v7, 0x4

    const v8, 0x7f100151

    .line 144
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 145
    new-instance v9, Landroid/app/NotificationChannel;

    const-string v10, "HOME_REORGANIZE_CHANNEL"

    invoke-direct {v9, v10, v8, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 146
    invoke-virtual {v4, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 147
    new-instance v7, Landroid/app/Notification$Builder;

    const-string v8, "HOME_REORGANIZE_CHANNEL"

    invoke-direct {v7, p0, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_2
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_1
    const v8, 0x7f080145

    .line 151
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 152
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 153
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    const v3, 0x7f100224

    .line 158
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 159
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const/16 v0, 0x7d0

    .line 163
    invoke-virtual {v4, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/IconReorganizeMonitor$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
