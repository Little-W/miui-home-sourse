.class public abstract Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;
.super Landroid/app/IntentService;
.source "CloudBackupServiceBase.java"


# static fields
.field public static final ACTION_CLOUD_BACKUP_SETTINGS:Ljava/lang/String; = "miui.action.CLOUD_BACKUP_SETTINGS"

.field public static final ACTION_CLOUD_RESTORE_SETTINGS:Ljava/lang/String; = "miui.action.CLOUD_RESTORE_SETTINGS"

.field public static final KEY_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field private static final TAG:Ljava/lang/String; = "SettingsBackup"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SettingsBackup"

    .line 32
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private backupSettings()Landroid/os/Bundle;
    .locals 3

    const-string v0, "SettingsBackup"

    const-string v1, "SettingsBackupServiceBase:backupSettings"

    .line 116
    invoke-direct {p0, v1}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->checkAndGetBackuper()Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;

    invoke-direct {v1}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;-><init>()V

    .line 119
    invoke-interface {v0, p0, v1}, Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;->onBackupSettings(Landroid/content/Context;Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;)V

    .line 120
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 121
    invoke-virtual {v1, v2}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->appendToWrappedBundle(Landroid/os/Bundle;)V

    const-string v1, "version"

    .line 122
    invoke-interface {v0, p0}, Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2
.end method

.method private checkAndGetBackuper()Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->getBackupImpl()Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "backuper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static dumpDataPackage(Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;)V
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;->getDataItems()Ljava/util/Map;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "SettingsBackup"

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;

    invoke-virtual {v0}, Lcom/xiaomi/mysettingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prependPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private restoreSettings(Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;I)Z
    .locals 3

    const-string v0, "SettingsBackup"

    const-string v1, "SettingsBackupServiceBase:restoreSettings"

    .line 102
    invoke-direct {p0, v1}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->checkAndGetBackuper()Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;

    move-result-object v0

    .line 105
    invoke-interface {v0, p0}, Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;->getCurrentVersion(Landroid/content/Context;)I

    move-result v1

    if-le p2, v1, :cond_0

    const-string p1, "SettingsBackup"

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop restore data because dataVersion is higher than currentAppVersion, dataVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", currentAppVersion: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 111
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;->onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;I)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected abstract getBackupImpl()Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "SettingsBackup"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SettingsBackup"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SettingsBackup"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "result_receiver"

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    const-string v2, "miui.action.CLOUD_BACKUP_SETTINGS"

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    .line 62
    invoke-direct {p0}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->backupSettings()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v0, "SettingsBackup"

    const-string v2, "bundle result is null after backupSettings"

    .line 64
    invoke-direct {p0, v2}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    invoke-virtual {v1, v3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_2
    const-string v2, "miui.action.CLOUD_RESTORE_SETTINGS"

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "data_package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 72
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const/4 v5, 0x2

    .line 74
    :try_start_0
    invoke-interface {v0, v5, v2, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    const-string v0, "version"

    const/4 v5, -0x1

    .line 75
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->restoreSettings(Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;I)Z

    move-result p1

    const-string v0, "SettingsBackup"

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r.send()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->prependPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 79
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 82
    invoke-virtual {v1, v3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "SettingsBackup"

    const-string v0, "ClassCastException when cast DataPackage"

    .line 92
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "SettingsBackup"

    const-string v1, "BadParcelableException when read readParcelable"

    .line 89
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "SettingsBackup"

    const-string v1, "RemoteException in onHandleIntent()"

    .line 85
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 94
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method
