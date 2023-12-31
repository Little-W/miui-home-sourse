.class public Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;
.super Ljava/lang/Object;
.source "ShortcutMenuManager.java"


# static fields
.field private static final SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/miui/launcher/common/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;


# instance fields
.field private final mLauncherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 239
    sget-object v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenuManager$ZrgueqS6wgAOVnOWhuHs6CKBymk;->INSTANCE:Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenuManager$ZrgueqS6wgAOVnOWhuHs6CKBymk;

    sput-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public static canShowShortcutMenu(Landroid/view/View;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 338
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->canShowShortcutMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 340
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 341
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    .line 333
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p0

    return p0
.end method

.method private clearLauncherWidgetAnimCache()V
    .locals 1

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->clearWidgetTypeIconCache(Z)V

    :cond_0
    return-void
.end method

.method private getAppShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 210
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 214
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    .line 215
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_2
    const/16 v2, 0x9

    .line 218
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 220
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 222
    :cond_3
    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sortAndFilterShortcuts(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 227
    new-instance v3, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;

    invoke-direct {v3, v2}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;-><init>(Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    .line 228
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getShortcutItemDrawable(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {v3}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 230
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->setOrder(I)V

    .line 231
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show appMenuItem, title="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutMenuManager"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-object v0

    .line 208
    :cond_6
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 160
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getFolderShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->getAllFolderShortcutMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 133
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->isValid(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    move-object v2, p1

    check-cast v2, Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo;->getFolderGridSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShowingShortcutMenu(Ljava/lang/String;)V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show folderMenuItem, title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutMenuManager"

    invoke-static {v2, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;
    .locals 2

    .line 75
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    if-nez v0, :cond_1

    .line 76
    const-class v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    .line 80
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 82
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    return-object v0
.end method

.method private getShortcutItemDrawable(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 148
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getShortcutInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensityDpi()I

    move-result v2

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShortcutMenuManager"

    const-string v2, "Failed to get shortcut icon"

    .line 150
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getValidSystemShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->getAllSystemShortcutMenuItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 103
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->isValid(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, p1, Lcom/miui/home/launcher/FolderInfo;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->updateDeleteItem(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V

    .line 105
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show systemMenuItem, title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutMenuManager"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getWidgetShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->getAllWidgetShortcutMenuItem()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    .line 115
    instance-of v3, p1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->isValid(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->updateDeleteItem(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V

    .line 117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show WidgetMenuItem, title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutMenuManager"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isAndroidVersionSupportShortcutMenu()Z
    .locals 2

    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0(Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/launcher/common/ShortcutInfoCompat;)I
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getRank()I

    move-result p0

    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getRank()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/launcher/common/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->hasHostPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 291
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    if-eqz p2, :cond_0

    .line 293
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 294
    invoke-virtual {v0, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 295
    invoke-virtual {v0, p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :cond_0
    const/4 p1, 0x0

    .line 299
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0, p5}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "ShortcutMenuManager"

    const-string p3, "Failed to query for shortcuts"

    .line 301
    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez p1, :cond_1

    .line 304
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 306
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    .line 308
    new-instance p3, Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-direct {p3, p2}, Lcom/miui/launcher/common/ShortcutInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0

    .line 312
    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/launcher/common/ShortcutInfoCompat;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/launcher/common/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 252
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getMaxCountInCurrentOrientation()I

    move-result v0

    .line 253
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    return-object p0

    .line 257
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 260
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 261
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v4}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 267
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    .line 268
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 269
    invoke-virtual {v4}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    sub-int v5, v0, v3

    .line 272
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 273
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method


# virtual methods
.method public getAllShortcutMenuItems(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
    .locals 2

    .line 92
    new-instance v0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;-><init>()V

    .line 93
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getValidSystemShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setSystemShortcutMenuItems(Ljava/util/List;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getAppShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setAppShortcutMenuItems(Ljava/util/List;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getWidgetShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setWidgetShortcutMenuItems(Ljava/util/List;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getFolderShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setFolderShortcutMenuItems(Ljava/util/List;)V

    return-object v0
.end method

.method public hasHostPermission()Z
    .locals 2

    .line 318
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ShortcutMenuManager"

    const-string v1, "Failed to make shortcut manager call"

    .line 322
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startAppDetailsActivity(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;Landroid/view/View;)V
    .locals 4

    .line 177
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->clearLauncherWidgetAnimCache()V

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 183
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    .line 182
    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    .line 186
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 187
    invoke-static {p0, v3, v2, v0}, Lcom/miui/home/launcher/util/PackageManagerHelper;->createAppDetailActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p0

    .line 189
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    .line 192
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setLastLaunchApp(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ShortcutMenuManager"

    const-string p2, "Failed to start shortcut"

    .line 194
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public startShortcut(Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;Landroid/view/View;)V
    .locals 7

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->clearLauncherWidgetAnimCache()V

    .line 168
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 169
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 168
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ShortcutMenuManager"

    const-string p2, "Failed to start shortcut"

    .line 171
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateDeleteItem(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 125
    instance-of p0, p1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;

    if-eqz p0, :cond_0

    .line 126
    check-cast p1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;->updateTitle(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method
