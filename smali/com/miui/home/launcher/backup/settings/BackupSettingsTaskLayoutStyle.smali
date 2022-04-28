.class public Lcom/miui/home/launcher/backup/settings/BackupSettingsTaskLayoutStyle;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;
.source "BackupSettingsTaskLayoutStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "task_stack_view_layout_style"

    .line 9
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackupValue()Ljava/lang/Integer;
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;->getBackupValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsValue()Ljava/lang/Integer;
    .locals 1

    .line 14
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSettingsValue()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsTaskLayoutStyle;->getSettingsValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBackupValue(Ljava/lang/Integer;)V
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;->putBackupValue(Ljava/lang/Integer;)V

    return-void
.end method

.method public putSettingsValue(Ljava/lang/Integer;)V
    .locals 1

    .line 19
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->setTaskStackViewLayoutStyle(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic putSettingsValue(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsTaskLayoutStyle;->putSettingsValue(Ljava/lang/Integer;)V

    return-void
.end method
