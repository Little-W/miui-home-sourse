.class Lcom/miui/home/launcher/LauncherVersionUtils;
.super Ljava/lang/Object;
.source "LauncherVersionUtils.java"


# direct methods
.method private static changeDrawerDatabaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ".drawer"

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "_drawer"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic lambda$moveDrawerDatabaseFile$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".db"

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".drawer"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static moveDrawerDatabaseFile(Landroid/content/Context;)V
    .locals 6

    const-string v0, "foo"

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$x4dTXKV7L09JXkAflamwJ7AldDg;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$LauncherVersionUtils$x4dTXKV7L09JXkAflamwJ7AldDg;

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 36
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 37
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    const-string v4, ".db"

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "_drawer"

    if-eqz v4, :cond_1

    .line 39
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 40
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 41
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherVersionUtils;->changeDrawerDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, p0, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 40
    invoke-static {v4, v3}, Lcom/miui/home/launcher/LauncherVersionUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    :cond_1
    const-string v4, ".drawer"

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 46
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherVersionUtils;->changeDrawerDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, p0, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 45
    invoke-static {v4, v3}, Lcom/miui/home/launcher/LauncherVersionUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 49
    invoke-static {v3}, Lcom/miui/home/launcher/LauncherVersionUtils;->changeDrawerDatabaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, p0, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 48
    invoke-static {v4, v3}, Lcom/miui/home/launcher/LauncherVersionUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private static moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 72
    :goto_0
    invoke-static {p0, p1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method static onUpgrade(Landroid/content/Context;II)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    const v3, 0x2763020

    if-ge p1, v3, :cond_1

    .line 17
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherVersionUtils;->moveDrawerDatabaseFile(Landroid/content/Context;)V

    :cond_1
    if-eqz v2, :cond_2

    const v2, 0x27969f9

    if-ne p1, v2, :cond_2

    if-ge p1, p2, :cond_2

    .line 21
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_ORANGE_BUILD:Z

    if-eqz p1, :cond_2

    .line 23
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->hasSetDrawerModeEnable()Z

    move-result p1

    if-nez p1, :cond_2

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "miui_home_drawer_default_enable"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_2

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setDrawerModeEnable(Z)V

    :cond_2
    return-void
.end method
