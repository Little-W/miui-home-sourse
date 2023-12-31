.class public Lcom/miui/home/launcher/backup/BackupSettingHelper;
.super Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;
.source "BackupSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/backup/BackupSettingHelper$Holder;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/miui/home/launcher/backup/BaseBackupSettingHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;
    .locals 1

    .line 19
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper$Holder;->access$000()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v0

    return-object v0
.end method
