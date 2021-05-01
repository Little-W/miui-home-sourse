.class public Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;
.super Ljava/lang/Object;
.source "RussiaPreInstallUtils.java"


# direct methods
.method public static isInLinkList(Ljava/lang/String;)Z
    .locals 4

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getDataSource()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 161
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 162
    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isInstalled(Ljava/lang/String;)Z
    .locals 4

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getDataSource()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 147
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 148
    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static isInstalledAndInRussiaFolder(Ljava/lang/String;)Z
    .locals 4

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getDataSource()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 122
    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isInRussia()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static isInstalledAndNotInRussiaFolder(Ljava/lang/String;)Z
    .locals 4

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getDataSource()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 134
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 135
    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isInRussia()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static isLinkClickTimeInCurrentDay(Ljava/lang/String;)Z
    .locals 4

    .line 170
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getDataSource()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 174
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    .line 175
    invoke-virtual {v2}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->isApp()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->packageName:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    iget-wide v0, v2, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;->clickTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isTimeInCurrentDay(Ljava/lang/Long;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static isRussiaRom()Z
    .locals 2

    .line 20
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->BUILD_REGION:Ljava/lang/String;

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static needAddToRussiaFolder(Ljava/lang/String;)Z
    .locals 2

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalledAndInRussiaFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInLinkList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isLinkClickTimeInCurrentDay(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static notifyRemoveFromLauncher(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 94
    invoke-static {p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalledAndInRussiaFolder(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->onAppLeaveRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onAppInfoRemoved(Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->onAppInfoRemoved(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static onBindAddedShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const-string v1, "com.miui.home:string/russia_preinstall_folder_name"

    .line 50
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByLabel(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 51
    iget-wide v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->onAppMoveToRussiaFolder(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static sync(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isRussiaRom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalledAndInRussiaFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const-string v1, "com.miui.home:string/russia_preinstall_folder_name"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByLabel(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/russia/RussiaPreInstallUtils;->isInstalledAndNotInRussiaFolder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const-string v1, "com.miui.home:string/russia_preinstall_folder_name"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByLabel(Ljava/lang/String;)J

    move-result-wide v0

    .line 73
    iget-wide v2, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    const-wide/16 v0, -0x64

    .line 74
    iput-wide v0, p0, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    :cond_2
    :goto_0
    return-void
.end method
