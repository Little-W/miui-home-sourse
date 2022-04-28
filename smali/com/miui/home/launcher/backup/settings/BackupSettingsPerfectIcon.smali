.class public Lcom/miui/home/launcher/backup/settings/BackupSettingsPerfectIcon;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;
.source "BackupSettingsPerfectIcon.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "key_miui_mod_icon_enable"

    .line 11
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseBoolean;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getSettingsValue()Ljava/lang/Boolean;
    .locals 3

    .line 16
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_miui_mod_icon_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getSettingsValue()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsPerfectIcon;->getSettingsValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method putSettingsValue(Ljava/lang/Boolean;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_miui_mod_icon_enable"

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 22
    invoke-static {v0, v1, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method bridge synthetic putSettingsValue(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsPerfectIcon;->putSettingsValue(Ljava/lang/Boolean;)V

    return-void
.end method
