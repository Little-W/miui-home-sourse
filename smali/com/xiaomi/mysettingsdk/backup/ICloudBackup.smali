.class public interface abstract Lcom/xiaomi/mysettingsdk/backup/ICloudBackup;
.super Ljava/lang/Object;
.source "ICloudBackup.java"


# virtual methods
.method public abstract getCurrentVersion(Landroid/content/Context;)I
.end method

.method public abstract onBackupSettings(Landroid/content/Context;Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;)V
.end method

.method public abstract onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/mysettingsdk/backup/data/DataPackage;I)V
.end method
