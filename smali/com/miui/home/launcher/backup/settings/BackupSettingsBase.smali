.class public abstract Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;
.super Ljava/lang/Object;
.source "BackupSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;,
        Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseString;,
        Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backup()V
    .locals 4

    .line 15
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->getSettingsValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->putBackupValue(Ljava/lang/Object;)V

    const-string v1, "Launcher.Backup"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backup setting success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Launcher.Backup"

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup setting failed for null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public abstract getBackupValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method abstract getSettingsValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method isBackupContains()Z
    .locals 2

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->getInstance()Lcom/miui/home/launcher/backup/BackupSettingHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/backup/BackupSettingHelper;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract putBackupValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method abstract putSettingsValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public restore()V
    .locals 4

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->getBackupValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->putSettingsValue(Ljava/lang/Object;)V

    const-string v1, "Launcher.Backup"

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore setting success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Launcher.Backup"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore setting failed for null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
