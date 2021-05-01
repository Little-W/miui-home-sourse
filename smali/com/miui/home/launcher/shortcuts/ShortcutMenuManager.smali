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

    .line 183
    sget-object v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenuManager$eQmiwyyfdiT9cQy1ZIV-KuHHVFY;->INSTANCE:Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenuManager$eQmiwyyfdiT9cQy1ZIV-KuHHVFY;

    sput-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
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

    .line 282
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
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

    .line 284
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p0

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

    .line 277
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result p0

    return p0
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

    .line 155
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 158
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_1

    .line 159
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_1
    const/16 v2, 0x9

    .line 162
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 164
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 166
    :cond_2
    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sortAndFilterShortcuts(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 170
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 171
    new-instance v3, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;

    invoke-direct {v3, v2}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;-><init>(Lcom/miui/launcher/common/ShortcutInfoCompat;)V

    .line 172
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getShortcutItemDrawable(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-virtual {v3}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 174
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->setOrder(I)V

    .line 175
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "ShortcutMenuManager"

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show appMenuItem, title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v0

    .line 156
    :cond_5
    :goto_1
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method private getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static getInstance()Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;
    .locals 2

    .line 66
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->sInstance:Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    return-object v0
.end method

.method private getShortcutItemDrawable(Lcom/miui/launcher/common/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 105
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getShortcutInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensityDpi()I

    move-result v2

    .line 104
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

    .line 107
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getValidSystemShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;
    .locals 6
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

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
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

    .line 92
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->isValid(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "ShortcutMenuManager"

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show systemMenuItem, title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->getShortTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isAndroidVersionSupportShortcutMenu()Z
    .locals 2

    .line 273
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

.method static synthetic lambda$static$406(Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/launcher/common/ShortcutInfoCompat;)I
    .locals 2

    .line 185
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    .line 188
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
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

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

    .line 233
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->hasHostPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 235
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    if-eqz p2, :cond_0

    .line 237
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 238
    invoke-virtual {v0, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 239
    invoke-virtual {v0, p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :cond_0
    const/4 p1, 0x0

    .line 243
    :try_start_0
    iget-object p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2, v0, p5}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "ShortcutMenuManager"

    const-string p4, "Failed to query for shortcuts"

    .line 245
    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez p1, :cond_1

    .line 248
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 250
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ShortcutInfo;

    .line 252
    new-instance p4, Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-direct {p4, p3}, Lcom/miui/launcher/common/ShortcutInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p2

    .line 256
    :cond_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
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

    .line 194
    sget-object v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenu;->getMaxCountInCurrentOrientation()I

    move-result v0

    .line 197
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    return-object p0

    .line 201
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 204
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 205
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v4}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 211
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    .line 212
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/launcher/common/ShortcutInfoCompat;

    .line 213
    invoke-virtual {v4}, Lcom/miui/launcher/common/ShortcutInfoCompat;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    sub-int v5, v0, v3

    .line 216
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 217
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

    .line 83
    new-instance v0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;-><init>()V

    .line 84
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getValidSystemShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setSystemShortcutMenuItems(Ljava/util/List;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getAppShortcutMenuItemList(Lcom/miui/home/launcher/ItemInfo;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setAppShortcutMenuItems(Ljava/util/List;)V

    return-object v0
.end method

.method public hasHostPermission()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .line 262
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ShortcutMenuManager"

    const-string v2, "Failed to make shortcut manager call"

    .line 266
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startAppDetailsActivity(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;Landroid/view/View;)V
    .locals 5

    .line 133
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 138
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    .line 137
    invoke-virtual {v1, v3, v0, v2, p2}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v3

    .line 142
    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    .line 142
    invoke-static {v1, v4, v2, v0}, Lcom/miui/home/launcher/util/PackageManagerHelper;->createAppDetailActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 144
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    .line 147
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/Launcher;->setLastLaunchApp(Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ShortcutMenuManager"

    const-string v0, "Failed to start shortcut"

    .line 149
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public startShortcut(Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;Landroid/view/View;)V
    .locals 7

    .line 122
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->isAndroidVersionSupportShortcutMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 125
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/AppShortcutMenuItem;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 124
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ShortcutMenuManager"

    const-string v0, "Failed to start shortcut"

    .line 127
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
