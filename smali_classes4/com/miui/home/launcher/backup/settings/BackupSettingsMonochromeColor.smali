.class public Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeColor;
.super Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;
.source "BackupSettingsMonochromeColor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "key_monochrome_color"

    .line 11
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackupValue()Ljava/lang/Integer;
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;->getBackupValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method getSettingsValue()Ljava/lang/Integer;
    .locals 2

    .line 16
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_monochrome_color"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic getSettingsValue()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeColor;->getSettingsValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putBackupValue(Ljava/lang/Integer;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsBase$BackupSettingsBaseInteger;->putBackupValue(Ljava/lang/Integer;)V

    return-void
.end method

.method putSettingsValue(Ljava/lang/Integer;)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "key_monochrome_color"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method bridge synthetic putSettingsValue(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/backup/settings/BackupSettingsMonochromeColor;->putSettingsValue(Ljava/lang/Integer;)V

    return-void
.end method
