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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    .line 70
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableCache;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 75
    invoke-static {p1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    .line 77
    invoke-static {p1}, Lcom/miui/home/launcher/IconProvider;->newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/IconCache;)Lcom/miui/home/library/compat/LauncherAppsCompat;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/miui/home/launcher/IconCache;->mLauncherApps:Lcom/miui/home/library/compat/LauncherAppsCompat;

    return-object p0
.end method

.method private declared-synchronized addIconToMemCache(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3

    monitor-enter p0

    .line 128
    :try_start_0
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 129
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/IconProvider;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 133
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private applyCacheEntry(Lcom/miui/home/launcher/graphics/DrawableInfo;Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V
    .locals 1

    .line 175
    iget-object v0, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 179
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

    .line 200
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 201
    new-instance v0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v0, p1, p3}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 202
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 204
    new-instance v1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 205
    invoke-virtual {p2}, Lcom/miui/home/launcher/util/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    if-eqz p2, :cond_0

    .line 207
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/IconProvider;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 208
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 212
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 219
    :cond_1
    iget-object p1, v1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 222
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 225
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    :cond_3
    return-object v1
.end method

.method private createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 1

    if-eqz p1, :cond_2

    .line 346
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-nez v0, :cond_2

    .line 348
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->isFancyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-static {p1}, Lcom/miui/launcher/utils/MamlUtils;->getQuietDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 351
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    return-object p1

    :cond_0
    move-object p1, v0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 358
    :cond_2
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    return-object p1
.end method

.method private getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 6

    .line 246
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 247
    invoke-static {p1, p2}, Lcom/miui/home/launcher/IconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 251
    new-instance v1, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 255
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

    .line 257
    :goto_0
    iget-object v5, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 258
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_1

    .line 263
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 264
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    goto :goto_1

    .line 260
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

    .line 272
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    :cond_2
    return-object v1
.end method

.method private declared-synchronized getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Lcom/miui/home/launcher/util/Provider;Z)V
    .locals 2
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

    .line 169
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v0, p2, v1, p3}, Lcom/miui/home/launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/miui/home/launcher/util/Provider;Landroid/os/UserHandle;Z)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p2

    .line 171
    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/IconCache;->applyCacheEntry(Lcom/miui/home/launcher/graphics/DrawableInfo;Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/miui/home/launcher/util/ComponentKey;
    .locals 3

    .line 237
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance p0, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object p0
.end method

.method private getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 318
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    .line 319
    iget-object v0, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 320
    iget-object p1, p1, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized getRawIcon(Ljava/lang/String;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 3

    monitor-enter p0

    .line 327
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.home"

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 329
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lcom/miui/home/launcher/graphics/DrawableInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;-><init>()V

    .line 332
    iget-object v2, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/IconProvider;->getRawIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/graphics/DrawableInfo;)V

    .line 333
    iget-object p1, v0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
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

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/IconProvider;->getDefaultActivityIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/IconCache;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p1

    return-object p1
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
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

    .line 97
    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/miui/home/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 98
    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
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

    .line 103
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

    .line 231
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherPreconditions;->assertWorkerThread()V

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/DrawableCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 2

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/IconCache;->makeDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/graphics/DrawableInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getFolderIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "icon_folder.png"

    const v1, 0x7f0801cc

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getFolderIconLight()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "icon_folder_light.png"

    const v1, 0x7f0801cd

    .line 300
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V
    .locals 3

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/graphics/DrawableInfo;->applyTo(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->user:Landroid/os/UserHandle;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;-><init>(Lcom/miui/home/launcher/IconCache;Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Lcom/miui/home/launcher/util/Provider;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
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

    .line 143
    :try_start_0
    invoke-static {p2}, Lcom/miui/home/launcher/util/Provider;->of(Ljava/lang/Object;)Lcom/miui/home/launcher/util/Provider;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/IconCache;->getIcon(Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;Lcom/miui/home/launcher/util/Provider;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getMamlDownloadLight()Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "maml_download_light.png"

    const v1, 0x7f0801d2

    .line 312
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 314
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getPairIconBgDark()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "pair_icon_bg_dark.xml"

    const v1, 0x7f080532

    .line 308
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPairIconBgLight()Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "pair_icon_bg_light.xml"

    const v1, 0x7f080533

    .line 304
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/IconCache;->getRawIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Lcom/miui/home/launcher/graphics/DrawableCache;

    new-instance v1, Lcom/miui/home/launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/miui/home/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/DrawableCache;->remove(Lcom/miui/home/launcher/util/ComponentKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
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

    .line 121
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
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

    .line 111
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 112
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

    .line 113
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/IconCache;->addIconToMemCache(Landroid/content/pm/LauncherActivityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
