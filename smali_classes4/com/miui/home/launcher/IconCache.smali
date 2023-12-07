.class public Lcom/miui/home/launcher/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;
    }
.end annotation


# instance fields
.field private final mBigIconCache:Lcom/miui/home/launcher/graphics/DrawableCache;

.field private final mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Lcom/miui/home/launcher/graphics/DrawableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconProvider:Lcom/miui/home/launcher/IconProvider;

.field private final mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    .line 77
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableCache;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    .line 78
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableCache;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    .line 81
    iput-object p1, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 83
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 85
    invoke-static {p1}, Lcom/miui/home/launcher/IconProvider;->newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/IconCache;)Lcom/miui/home/library/compat/LauncherAppsCompat;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    return-object p0
.end method

.method private declared-synchronized addIconToMemCache(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3

    monitor-enter p0

    .line 170
    :try_start_0
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 171
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 174
    iget-object v2, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/IconProvider;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 175
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private applyCacheEntry(Lcom/miui/home/launcher/graphics/DrawableInfo;Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyCacheEntry entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 271
    iget-object v0, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object p1, p2, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Lcom/miui/home/launcher/util/Provider;Landroid/os/UserHandle;Z)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Lcom/miui/home/launcher/util/Provider<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)",
            "Lcom/miui/home/launcher/graphics/DrawableInfo;"
        }
    .end annotation

    .line 294
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 295
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v0, p1, p3}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 296
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 298
    new-instance v1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 299
    invoke-virtual {p2}, Lcom/miui/home/launcher/util/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    if-eqz p2, :cond_0

    .line 301
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/IconProvider;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 302
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 306
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 310
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 313
    :cond_1
    iget-object p1, v1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 316
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 319
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    :cond_3
    return-object v1
.end method

.method private createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 1

    if-eqz p1, :cond_2

    .line 474
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-nez v0, :cond_2

    .line 476
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->isFancyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->getQuietDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 479
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    return-object p0

    :cond_0
    move-object p1, v0

    .line 484
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 486
    :cond_2
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    return-object p0
.end method

.method private getBigIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 11

    .line 232
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 233
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 236
    :cond_0
    move-object v9, p1

    check-cast v9, Lcom/miui/home/launcher/ShortcutInfo;

    .line 237
    invoke-virtual {v9}, Lcom/miui/home/launcher/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 240
    :cond_1
    iget v0, v9, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    return-object v1

    .line 243
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v1

    .line 247
    :cond_3
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {v9}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 248
    iget-object v2, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v2

    if-nez v2, :cond_5

    .line 250
    new-instance v10, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v10}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 251
    iget-object v2, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v9}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {v9}, Lcom/miui/home/launcher/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget v6, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->spanX:I

    iget v7, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->spanY:I

    const-string v8, ""

    .line 251
    invoke-virtual/range {v2 .. v9}, Lcom/miui/home/launcher/IconProvider;->getBigIconDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;IILjava/lang/String;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v1

    .line 256
    :cond_4
    new-instance v1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set, getBigIcon for info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", with icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreviewDisappear"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iput-object p1, v1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 259
    invoke-virtual {v1, v10}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 260
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p0, v0, v10}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    move-object v2, v10

    :cond_5
    return-object v2
.end method

.method private getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 6

    .line 341
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 342
    invoke-static {p1, p2}, Lcom/miui/home/launcher/IconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 346
    new-instance v1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 350
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/16 v4, 0x2000

    .line 352
    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 353
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_1

    .line 358
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 359
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    goto :goto_1

    .line 355
    :cond_1
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string p2, "ApplicationInfo is null"

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 367
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    :cond_2
    return-object v1
.end method

.method private declared-synchronized getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Lcom/miui/home/launcher/util/Provider;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;",
            "Lcom/miui/home/launcher/util/Provider<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->getBigIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 getIcon entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v0, p2, v1, p3}, Lcom/miui/home/launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/miui/home/launcher/util/Provider;Landroid/os/UserHandle;Z)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v0

    :cond_0
    const-string p2, "PreviewDisappear"

    .line 223
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2 getIcon entry: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/IconCache;->applyCacheEntry(Lcom/miui/home/launcher/graphics/DrawableInfo;Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ComponentKey;
    .locals 3

    .line 332
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance p0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object p0
.end method

.method private getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 437
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 438
    iget-object v0, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 439
    iget-object p0, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 441
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getRawIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    .line 447
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 448
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    return-object p2
.end method

.method private declared-synchronized getRawIcon(Ljava/lang/String;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 3

    monitor-enter p0

    .line 455
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.home"

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 457
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 460
    iget-object v2, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/IconProvider;->getRawIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 461
    iget-object p1, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 462
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private makeDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/IconProvider;->getDefaultActivityIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    return-object p0
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/util/ComponentKey;

    .line 105
    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 106
    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/util/ComponentKey;

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/graphics/DrawableCache;->remove(Lcom/miui/home/launcher/util/ComponentKey;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 325
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherPreconditions;->assertWorkerThread()V

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->clear()V

    .line 328
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public existBigIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)Z
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->getBigIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 3

    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->makeDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    const-string v0, "PreviewDisappear"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultIcon result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getFolderBgGridFourIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "folder_bg_grid_four_reserved.png"

    .line 399
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getFolderBgGridFourLight(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "folder_bg_grid_four_light_reserved.png"

    .line 403
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getFolderIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "icon_folder.png"

    const v1, 0x7f0802d3

    .line 391
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getFolderIconLight()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "icon_folder_light.png"

    const v1, 0x7f0802d6

    .line 395
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "PreviewDisappear"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIcon info target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PreviewDisappear"

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIcon info user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIcon default icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    goto :goto_0

    :cond_0
    const-string v0, "PreviewDisappear"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIcon info intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->user:Landroid/os/UserHandle;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;-><init>(Lcom/miui/home/launcher/IconCache;Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Lcom/miui/home/launcher/util/Provider;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 1

    monitor-enter p0

    .line 185
    :try_start_0
    invoke-static {p2}, Lcom/miui/home/launcher/util/Provider;->of(Ljava/lang/Object;)Lcom/miui/home/launcher/util/Provider;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Lcom/miui/home/launcher/util/Provider;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getMamlDownloadLight()Landroid/graphics/Bitmap;
    .locals 2

    .line 432
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0802dc

    goto :goto_0

    :cond_0
    const v0, 0x7f0802db

    :goto_0
    const-string v1, "maml_download_light.png"

    .line 431
    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 433
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getPairIconBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 423
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache;->getPairIconBgLight()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache;->getPairIconBgDark()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getPairIconBgDark()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 419
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08067f

    goto :goto_0

    :cond_0
    const v0, 0x7f08067e

    :goto_0
    const-string v1, "pair_icon_bg_dark.xml"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getPairIconBgLight()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 415
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080681

    goto :goto_0

    :cond_0
    const v0, 0x7f080680

    :goto_0
    const-string v1, "pair_icon_bg_light.xml"

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->remove(Lcom/miui/home/launcher/util/ComponentKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeBigIcons(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    monitor-enter p0

    .line 134
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/util/ComponentKey;

    if-eqz v2, :cond_0

    .line 136
    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 142
    :cond_2
    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p3, :cond_0

    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 143
    invoke-virtual {p3, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/util/ComponentKey;

    .line 148
    iget-object p3, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/graphics/DrawableCache;->remove(Lcom/miui/home/launcher/util/ComponentKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 150
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateBigIcons(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    monitor-enter p0

    .line 156
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/IconCache;->removeBigIcons(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    if-eqz p2, :cond_0

    .line 158
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    const-string v1, "PreviewDisappear"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set, updateBigIcons for info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", with icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iput-object p2, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 161
    iget-object p2, p0, Lcom/miui/home/launcher/IconCache;->mBigIconCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p2, v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    .line 121
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/IconCache;->addIconToMemCache(Landroid/content/pm/LauncherActivityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
