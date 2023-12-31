.class public Lcom/miui/home/launcher/allapps/DrawerLauncherMode;
.super Lcom/miui/home/launcher/allapps/LauncherMode;
.source "DrawerLauncherMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;-><init>()V

    return-void
.end method


# virtual methods
.method public canAddToFolder(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public canAddToWorkspace(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public canLoadShortcutInfo(Ljava/util/HashMap;Lcom/miui/home/launcher/ShortcutInfo;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Z)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/LauncherMode;->canLoadShortcutInfo(Ljava/util/HashMap;Lcom/miui/home/launcher/ShortcutInfo;Z)Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->IS_AMX_BUILD:Z

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherSettings;->isLoadMultiShortcutInfo(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public getDefaultWorkspaceNamePrefix()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 58
    sget-object p0, Lcom/miui/home/launcher/allapps/DrawerLauncherMode;->modeDatabasePath:Lcom/miui/home/launcher/allapps/LauncherModeDatabasePath;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/LauncherModeDatabasePath;->getDrawerModePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 0

    const-string p0, "drawer"

    return-object p0
.end method

.method public supportAssistant()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportFeed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
