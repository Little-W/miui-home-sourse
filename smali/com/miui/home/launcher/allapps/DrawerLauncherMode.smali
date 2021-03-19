.class public Lcom/miui/home/launcher/allapps/DrawerLauncherMode;
.super Lcom/miui/home/launcher/allapps/LauncherMode;
.source "DrawerLauncherMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
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

    const/4 p1, 0x1

    return p1
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

    const/4 p1, 0x1

    return p1
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

    if-eqz p3, :cond_2

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/LauncherMode;->canLoadShortcutInfo(Ljava/util/HashMap;Lcom/miui/home/launcher/ShortcutInfo;Z)Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_AMX_BUILD:Z

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherSettings;->isLoadMultiShortcutInfo(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    return v0
.end method

.method public getDefaultWorkspaceNamePrefix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    const-string v0, "drawer"

    return-object v0
.end method

.method public supportAssistant()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportFeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
