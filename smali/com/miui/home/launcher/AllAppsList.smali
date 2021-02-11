.class public Lcom/miui/home/launcher/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/AllAppsList$LayoutInfoQuery;,
        Lcom/miui/home/launcher/AllAppsList$_lancet;
    }
.end annotation


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppFilter:Lcom/miui/home/launcher/AppFilter;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

.field private mRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

.field private final mResolver:Landroid/content/ContentResolver;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/launcher/AppFilter;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 88
    iput-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 89
    iput-object p3, p0, Lcom/miui/home/launcher/AllAppsList;->mAppFilter:Lcom/miui/home/launcher/AppFilter;

    .line 90
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private addApp(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;JZZLandroid/os/UserHandle;)V
    .locals 7

    .line 190
    new-instance v6, Lcom/miui/home/launcher/AppInfo;

    invoke-direct {v6, p1, p2, p7}, Lcom/miui/home/launcher/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 191
    invoke-static {p7}, Lcom/miui/home/library/compat/UserManagerCompat;->isWorkUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/AllAppsList;->addToWorkFolder(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-wide v3, p3

    move v5, p5

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/AllAppsList;->loadInfo(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;JZ)V

    :goto_0
    if-eqz p5, :cond_1

    .line 196
    iget-wide p3, v6, Lcom/miui/home/launcher/AppInfo;->screenId:J

    const-wide/16 v0, -0x1

    cmp-long p3, p3, v0

    if-nez p3, :cond_1

    iget-wide p3, v6, Lcom/miui/home/launcher/AppInfo;->container:J

    cmp-long p3, p3, v0

    if-nez p3, :cond_1

    .line 197
    invoke-static {p7}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 198
    invoke-direct {p0, p1, v6}, Lcom/miui/home/launcher/AllAppsList;->addToDefaultFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 200
    :cond_1
    invoke-virtual {p0, v6, p2}, Lcom/miui/home/launcher/AllAppsList;->add(Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 202
    invoke-static {}, Lcom/miui/home/launcher/CategorySettingHelper;->getInstance()Lcom/miui/home/launcher/CategorySettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/CategorySettingHelper;->isAppCategoryUpdateEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 203
    invoke-direct {p0, v6}, Lcom/miui/home/launcher/AllAppsList;->autoAddToDefaultCategory(Lcom/miui/home/launcher/AppInfo;)V

    :cond_2
    if-eqz p6, :cond_3

    .line 206
    iget p1, v6, Lcom/miui/home/launcher/AppInfo;->itemFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v6, Lcom/miui/home/launcher/AppInfo;->itemFlags:I

    :cond_3
    return-void
.end method

.method private addDefaultCategoryIfNeed(I)Z
    .locals 5

    .line 224
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllCategoryList()Lcom/miui/home/launcher/AllCategoryList;

    move-result-object v0

    .line 225
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/AllCategoryList;->isCategoryExist(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 226
    new-instance v1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 227
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCategory$Category;->getDefaultCategoryName(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v0}, Lcom/miui/home/launcher/AllCategoryList;->generateLastPriority()I

    move-result v4

    invoke-direct {v1, p1, v3, v4}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    .line 229
    iget-object v3, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getPriority()I

    move-result v4

    invoke-static {v3, p1, v4}, Lcom/miui/home/launcher/LauncherCategory$Category;->addDefaultAppCategory(Landroid/content/ContentResolver;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/AllCategoryList;->addCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)V

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v2
.end method

.method private addToDefaultFolder(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    .line 304
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    .line 305
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p1, v1, v2, v0}, Lcom/miui/home/launcher/AllAppsList;->getFolderIdByAppCategory(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherProvider;)J

    move-result-wide v1

    .line 306
    invoke-direct {p0, v0, p2, v1, v2}, Lcom/miui/home/launcher/AllAppsList;->addToFolder(Lcom/miui/home/launcher/LauncherProvider;Lcom/miui/home/launcher/ShortcutInfo;J)V

    return-void
.end method

.method private addToFolder(Lcom/miui/home/launcher/LauncherProvider;Lcom/miui/home/launcher/ShortcutInfo;J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 317
    iput-wide p3, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const/4 v0, 0x0

    .line 318
    iput v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    .line 319
    invoke-virtual {p1, p3, p4}, Lcom/miui/home/launcher/LauncherProvider;->queryFolderSize(J)I

    move-result p1

    iput p1, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 320
    iput v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const-string p1, "Launcher.AllAppsList"

    const-string p3, "Adding new activity %s to folder %d, pos (%d) by apk\'s category"

    const/4 p4, 0x3

    .line 321
    new-array p4, p4, [Ljava/lang/Object;

    .line 322
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x1

    iget-wide v1, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 323
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x2

    iget p2, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v0

    .line 321
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/AllAppsList$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private addToWorkFolder(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 3

    .line 310
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getLauncherProvider()Lcom/miui/home/launcher/LauncherProvider;

    move-result-object v0

    const-string v1, "com.miui.home:string/all_app_category_work"

    .line 311
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v1

    .line 312
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/miui/home/launcher/AllAppsList;->addToFolder(Lcom/miui/home/launcher/LauncherProvider;Lcom/miui/home/launcher/ShortcutInfo;J)V

    return-void
.end method

.method private autoAddToDefaultCategory(Lcom/miui/home/launcher/AppInfo;)V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherCategory$Repository;->getAppCategory(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 216
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/AllAppsList;->addDefaultCategoryIfNeed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    .line 217
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->addAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/AppInfo;->addCategory(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .line 461
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 462
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 477
    iget-object v2, v1, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getAllElement(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 151
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 152
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    const-string v4, "(%s, %s)"

    const/4 v5, 0x2

    .line 153
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/miui/home/launcher/AppInfo;->printDetail()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, "null"

    :goto_1
    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getFolderIdByAppCategory(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherProvider;)J
    .locals 6

    .line 328
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/miui/home/launcher/ScreenUtils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_9

    .line 329
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 333
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 334
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p2, v2

    :cond_2
    if-nez p2, :cond_3

    return-wide v0

    .line 345
    :cond_3
    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz p0, :cond_8

    const-string p1, "miui.intent.category.SYSAPP_TOOL"

    .line 348
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "com.miui.home:string/default_folder_title_tools"

    .line 349
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    const-string p1, "miui.intent.category.SYSAPP_SYSTEM"

    .line 350
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "com.miui.home:string/default_folder_title_security"

    .line 351
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_5
    const-string p1, "miui.intent.category.SYSAPP_RECOMMEND"

    .line 352
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "com.miui.home:string/default_folder_title_recommend"

    .line 353
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_6
    const-string p1, "miui.intent.category.SYSAPP_GAME"

    .line 354
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "com.miui.home:string/default_folder_title_game"

    .line 355
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_7
    const-string p1, "miui.intent.category.MEITU"

    .line 356
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "com.miui.home:string/default_folder_title_meitu"

    .line 357
    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/LauncherProvider;->queryIdByTitle(Ljava/lang/String;)J

    move-result-wide v0

    :cond_8
    :goto_0
    return-wide v0

    :cond_9
    :goto_1
    return-wide v0
.end method

.method private loadInfo(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;JZ)V
    .locals 7

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/home/launcher/AllAppsList$LayoutInfoQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 265
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v4, p4

    const/4 v5, 0x0

    .line 264
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz p3, :cond_2

    .line 267
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    int-to-long v4, p5

    iput-wide v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->id:J

    .line 269
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    int-to-long v4, p5

    iput-wide v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    .line 270
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    iput p5, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    .line 271
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    iput p5, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    const/4 p5, 0x6

    .line 272
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    iput p5, p2, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    .line 273
    iput v6, p2, Lcom/miui/home/launcher/ShortcutInfo;->spanY:I

    iput v6, p2, Lcom/miui/home/launcher/ShortcutInfo;->spanX:I

    .line 274
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 275
    iget p5, p2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne p5, v4, :cond_0

    iget p5, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v4, 0x7

    .line 276
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq p5, v4, :cond_1

    .line 277
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    const-string p1, "Launcher.AllAppsList"

    const-string p5, "Loaded activity %s at (%d, %d) of screen %d under container %d"

    .line 279
    new-array v2, v2, [Ljava/lang/Object;

    .line 281
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p4

    iget p4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v2, v6

    iget p4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v2, v1

    iget-wide v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v2, v0

    iget-wide v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v2, v3

    .line 279
    invoke-static {p5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/miui/home/launcher/AllAppsList$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_2
    if-eqz p5, :cond_4

    .line 283
    iget-object p1, p0, Lcom/miui/home/launcher/AllAppsList;->mRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/AllAppsList;->mRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    iget-object p5, p2, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 284
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/miui/home/launcher/RemovedComponentInfoList;->getRemovedInfo(Landroid/content/ComponentName;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 286
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutInfo;->copyPosition(Lcom/miui/home/launcher/ItemInfo;)V

    const-string p1, "Launcher.AllAppsList"

    const-string p5, "Loaded activity %s at (%d, %d) of screen %d under container %d from removed list"

    .line 287
    new-array v2, v2, [Ljava/lang/Object;

    .line 289
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p4

    iget p4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v2, v6

    iget p4, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellY:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v2, v1

    iget-wide v4, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v2, v0

    iget-wide v0, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v2, v3

    .line 287
    invoke-static {p5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/miui/home/launcher/AllAppsList$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/miui/home/launcher/LauncherModel;->insertItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 293
    :cond_4
    :goto_1
    iget-wide p4, p2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    const-wide/16 v0, -0x1

    cmp-long p1, p4, v0

    if-nez p1, :cond_5

    iget-wide p4, p2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    cmp-long p1, p4, v0

    if-nez p1, :cond_5

    const-string p1, "Launcher.AllAppsList"

    .line 294
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Can\'t load postion for packageName: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " activityName: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/AllAppsList$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz p3, :cond_6

    .line 298
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :goto_2
    if-eqz p3, :cond_7

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1
.end method

.method private matchUserAndPackageName(Lcom/miui/home/launcher/AppInfo;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 1

    .line 485
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/home/launcher/common/Utilities;->equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 486
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public add(Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)Z
    .locals 2

    .line 109
    iget-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->mAppFilter:Lcom/miui/home/launcher/AppFilter;

    iget-object v0, p1, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/AppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toPackageAndUser()Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 115
    :cond_1
    iget-object p2, p1, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, p2, v1}, Lcom/miui/home/launcher/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    return v0

    .line 121
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->getAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/AppInfo;->setCategories(Ljava/util/HashSet;)V

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/AppInfo;->setLoadTime(J)V

    .line 124
    iget-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p2, p0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/UserHandle;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    .line 175
    iget-object v0, v8, Lcom/miui/home/launcher/AllAppsList;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {v0, v9, v10}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v11

    .line 176
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, p1

    .line 177
    invoke-static {v13, v9, v11, v12, v10}, Lcom/miui/home/launcher/ScreenUtils;->findActivities2Id(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V

    const/4 v0, 0x0

    move v14, v0

    .line 178
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_1

    .line 179
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 180
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_1
    move-wide v3, v0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/AllAppsList;->addApp(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;JZZLandroid/os/UserHandle;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/launcher/LauncherModel;->mProgressingPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v0, :cond_2

    .line 184
    iget-object v1, v8, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public clearAll()V
    .locals 2

    const-string v0, "Launcher.AllAppsList"

    const-string v1, "clearAll"

    .line 130
    invoke-static {v0, v1}, Lcom/miui/home/launcher/AllAppsList$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/launcher/AllAppsList;->clearAllExceptData()V

    return-void
.end method

.method public clearAllExceptData()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAllAppsList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAppFilter()Lcom/miui/home/launcher/AppFilter;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->mAppFilter:Lcom/miui/home/launcher/AppFilter;

    return-object v0
.end method

.method public isInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 491
    iget-object v2, v1, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    .line 492
    invoke-static {p2, v1}, Lcom/miui/home/launcher/common/Utilities;->equalsUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 368
    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 369
    invoke-direct {p0, v1, p2, p1}, Lcom/miui/home/launcher/AllAppsList;->matchUserAndPackageName(Lcom/miui/home/launcher/AppInfo;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 372
    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/home/launcher/LauncherCategory$Favorites;->removeAppCategoryConfig(Landroid/content/ContentResolver;Lcom/miui/home/launcher/util/ComponentKey;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRemovedInfoList(Lcom/miui/home/launcher/RemovedComponentInfoList;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/AllAppsList;->mRemovedInfoList:Lcom/miui/home/launcher/RemovedComponentInfoList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add=["

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 162
    invoke-static {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllElement(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "], remove=["

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 164
    invoke-static {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllElement(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "], modified=["

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 166
    invoke-static {v1}, Lcom/miui/home/launcher/AllAppsList;->getAllElement(Ljava/util/ArrayList;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDisabledFlags(Lcom/miui/home/launcher/util/ItemInfoMatcher;Lcom/miui/home/launcher/util/FlagOp;)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 382
    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 383
    iget-object v2, v1, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    iget v2, v1, Lcom/miui/home/launcher/AppInfo;->runtimeStatusFlags:I

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/util/FlagOp;->apply(I)I

    move-result v2

    iput v2, v1, Lcom/miui/home/launcher/AppInfo;->runtimeStatusFlags:I

    const/4 v2, 0x0

    .line 386
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/AppInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/home/launcher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 11

    .line 403
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    .line 404
    invoke-virtual {v0, p2, p4}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 405
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Launcher.AllAppsList"

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePackage, packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", loadMissing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", matchedSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/AllAppsList$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_4

    .line 410
    new-instance v1, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;

    invoke-direct {v1, p2, p4}, Lcom/miui/home/launcher/LauncherModel$PackageAndUser;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v1}, Lcom/miui/home/launcher/LauncherModel;->isSecurityHided(Lcom/miui/home/launcher/LauncherModel$PackageAndUser;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 413
    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 414
    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 415
    iget-object v3, v2, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p4, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 416
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 417
    invoke-static {v0, v3}, Lcom/miui/home/launcher/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    invoke-static {p1, p2, p4}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Launcher.AllAppsList"

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shortcut("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") will be removed due to app component name change."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v3, p0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v3, p0, Lcom/miui/home/launcher/AllAppsList;->mIconCache:Lcom/miui/home/launcher/IconCache;

    iget-object v2, v2, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v2, p4}, Lcom/miui/home/launcher/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 423
    iget-object v2, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 429
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 430
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/miui/home/launcher/AllAppsList;->findAppInfo(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v2

    const-string v3, "Launcher.AllAppsList"

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePackage, find appInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    .line 432
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->printDetail()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, "null"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    invoke-static {v3, v4}, Lcom/miui/home/launcher/AllAppsList$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_3

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v10, p4

    .line 435
    invoke-virtual/range {v5 .. v10}, Lcom/miui/home/launcher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/UserHandle;)V

    goto :goto_1

    .line 437
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/AllAppsList;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v3, v2, v1}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Landroid/content/pm/LauncherActivityInfo;)V

    .line 438
    invoke-virtual {v2, v1, p4}, Lcom/miui/home/launcher/AppInfo;->resetTitle(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    .line 439
    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 444
    :cond_4
    iget-object p3, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3
    if-ltz p3, :cond_6

    .line 445
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 446
    iget-object v1, v0, Lcom/miui/home/launcher/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p4, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 447
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 448
    invoke-static {p1, p2, p4}, Lcom/miui/launcher/utils/LauncherUtils;->isAppBackupRunning(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 449
    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList;->mIconCache:Lcom/miui/home/launcher/IconCache;

    iget-object v0, v0, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, p4}, Lcom/miui/home/launcher/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 451
    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_6
    return-void
.end method
