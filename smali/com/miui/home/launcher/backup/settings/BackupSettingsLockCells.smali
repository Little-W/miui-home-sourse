.class public Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;
.source "BackupSettingsLockCells.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "miui_home_lock_screen_cells"

    .line 10
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSettingsValue()Ljava/lang/Boolean;
    .locals 3

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_lock_screen_cells"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSettingsValue()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;->getSettingsValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public putSettingsValue(Ljava/lang/Boolean;)V
    .locals 2

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_home_lock_screen_cells"

    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 21
    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public bridge synthetic putSettingsValue(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsLockCells;->putSettingsValue(Ljava/lang/Boolean;)V

    return-void
.end method
