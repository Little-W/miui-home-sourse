.class public Lcom/miui/home/launcher/cloudbackup/MiuiHomeCloudBackupService;
.super Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;
.source "MiuiHomeCloudBackupService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/xiaomi/mysettingsdk/backup/CloudBackupServiceBase;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected getBackupImpl()Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;
    .locals 1

    .line 19
    new-instance v0, Lcom/miui/home/launcher/cloudbackup/MiuiHomeCloudBackupImpl;

    invoke-direct {v0}, Lcom/miui/home/launcher/cloudbackup/MiuiHomeCloudBackupImpl;-><init>()V

    return-object v0
.end method
