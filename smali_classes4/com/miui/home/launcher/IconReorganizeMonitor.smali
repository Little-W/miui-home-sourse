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

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    .line 43
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)Z
    .locals 0

    .line 31
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
    .locals 0

    const-string p0, "notification"

    .line 117
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 p1, 0x7d0

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private clearBackup(Landroid/content/Context;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->cancelReorganizeNotification(Landroid/content/Context;)V

    const-string p0, "_backup_before_reorganize"

    .line 209
    invoke-static {p1, p0}, Lcom/miui/home/launcher/DeviceConfig;->clearBackupDB(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isAutoReorganizing()Z
    .locals 1

    .line 229
    sget-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    return v0
.end method

.method private onBackupDBRestored(Landroid/content/Context;)V
    .locals 3

    const-string p0, "alarm"

    .line 90
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.action.CLEAR_BACKUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x2000000

    .line 93
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string p0, "Launcher.IconReorganizeMonitor"

    const-string p1, "cancel clear_backup action"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onDBBackupFinishedForReorgnize(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 203
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    .line 204
    invoke-static {p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onLayoutBackupReady(Landroid/content/Context;)V

    return-void
.end method

.method public static onLayoutBackupReady(Landroid/content/Context;)V
    .locals 4

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->registerClearBackupAlarm(Landroid/content/Context;J)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 51
    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.IconReorganizeMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 53
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.miui.home.action.CLEAR_BACKUP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$wD-2YzCrxNweqrd_ISK_gXpl1zE;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$wD-2YzCrxNweqrd_ISK_gXpl1zE;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void

    .line 60
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "Launcher not resume return"

    .line 61
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.home.action.RESET_HOME"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$KnPg966IaY92XS-jGM4Ps_xSW2A;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$IconReorganizeMonitor$KnPg966IaY92XS-jGM4Ps_xSW2A;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 67
    :cond_3
    new-instance v1, Lcom/miui/home/launcher/IconReorganizeMonitor$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor$1;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V

    new-instance p1, Lcom/miui/home/launcher/IconReorganizeMonitor$2;

    invoke-direct {p1, p0, p2, v0}, Lcom/miui/home/launcher/IconReorganizeMonitor$2;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Intent;Lcom/miui/home/launcher/Launcher;)V

    const/4 p0, 0x0

    invoke-static {v1, p1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static onReorganizeFail()V
    .locals 2

    const/4 v0, 0x0

    .line 195
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    .line 196
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    .line 197
    sget-object v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 199
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

    .line 186
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    .line 187
    invoke-static {p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->showReorganizeNotification(Landroid/content/Context;)V

    .line 188
    sput-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    .line 189
    sget-object p0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    monitor-enter p0

    .line 190
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 191
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

    .line 168
    sget-boolean v0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 171
    :cond_0
    sput-boolean v1, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    const-string v0, "_backup_before_reorganize"

    .line 172
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->backupDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/miui/home/launcher/IconReorganizeMonitor$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor$3;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return v1

    :cond_1
    const/4 p0, 0x1

    .line 181
    sput-boolean p0, Lcom/miui/home/launcher/IconReorganizeMonitor;->sIsAutoReorganizing:Z

    return p0
.end method

.method private static registerClearBackupAlarm(Landroid/content/Context;J)V
    .locals 4

    const-string v0, "alarm"

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.home.action.CLEAR_BACKUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    .line 106
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 108
    invoke-virtual {v0, v2, p1, p2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const-string p0, "Launcher.IconReorganizeMonitor"

    const-string p1, "register clear_backup action"

    .line 109
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private revertReorganization(Landroid/content/Context;)V
    .locals 1

    .line 213
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->cancelReorganizeNotification(Landroid/content/Context;)V

    const-string v0, "_backup_before_reorganize"

    .line 214
    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->restoreBackupDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/miui/home/launcher/IconReorganizeMonitor$4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor$4;-><init>(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    return-void

    .line 224
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onBackupDBRestored(Landroid/content/Context;)V

    .line 225
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private static showReorganizeNotification(Landroid/content/Context;)V
    .locals 11

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2000000

    const/4 v2, 0x0

    .line 123
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 125
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.home.action.RESET_HOME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {p0, v2, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110394

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const-string v6, "pref_key_auto_backup_time"

    .line 130
    invoke-static {p0, v6, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-nez v4, :cond_0

    return-void

    .line 132
    :cond_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 135
    sget-boolean v5, Lcom/miui/home/launcher/IconReorganizeMonitor;->sBackedUpBDForReorganize:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const v5, 0x7f11041f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v2

    aput-object v4, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v5, 0x7f110420

    .line 136
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v4, "notification"

    .line 138
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 140
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "miui.showAction"

    .line 141
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_2

    const/4 v7, 0x4

    const v8, 0x7f110256

    .line 145
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 146
    new-instance v9, Landroid/app/NotificationChannel;

    const-string v10, "HOME_REORGANIZE_CHANNEL"

    invoke-direct {v9, v10, v8, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 147
    invoke-virtual {v4, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 148
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_2
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_1
    const v8, 0x7f0802d9

    .line 152
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 153
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 155
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, -0x1

    const v3, 0x7f110423

    .line 159
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 160
    invoke-virtual {p0, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const/16 v0, 0x7d0

    .line 164
    invoke-virtual {v4, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$IconReorganizeMonitor(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->clearBackup(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$onReceive$1$IconReorganizeMonitor(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconReorganizeMonitor;->revertReorganization(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/IconReorganizeMonitor$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/IconReorganizeMonitor;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
