.class public Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DEVICE_HIGH_END:I = 0x2

.field public static final DEVICE_LOW_END:I = 0x0

.field public static final DEVICE_MIDDLE_END:I = 0x1

.field public static final DEVICE_UNDEFINE:I = -0x1

.field public static final SVELTE_DISABLE_CACHE:I = 0x2

.field public static final SVELTE_DISABLE_LOADING:I = 0x3

.field public static final SVELTE_LIMIT_CACHE:I = 0x1

.field public static final SVELTE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecentsTaskLoader"


# instance fields
.field private final mActivityInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

.field private mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

.field private final mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDefaultTaskBarBackgroundColor:I

.field mDefaultTaskViewBackgroundColor:I

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field private final mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

.field private final mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

.field private final mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

.field private final mMaxIconCacheSize:I

.field private final mMaxThumbnailCacheSize:I

.field private mNumVisibleTasksLoaded:I

.field private mNumVisibleThumbnailsLoaded:I

.field private mScreeningPkg:Ljava/lang/String;

.field private mSvelteLevel:I

.field private mThumbnailBlurPkgSet:Ljava/util/HashSet;

.field private final mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaittingBlurThumbnailDtats:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 7

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$1;-><init>(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 318
    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$2;-><init>(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 327
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    .line 328
    iput p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 329
    iput p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 331
    iget p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 332
    iget p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 333
    iput p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mSvelteLevel:I

    .line 336
    sget-object p4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    const/4 v1, 0x0

    .line 337
    invoke-virtual {p4, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 338
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 339
    iget-object p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p4, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 340
    iget-object p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 343
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result p4

    .line 344
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    .line 345
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 346
    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-direct {p2, p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 347
    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-direct {p2, p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mWaittingBlurThumbnailDtats:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 348
    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {p2, p4, p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 349
    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {p2, p4, p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 351
    new-instance p2, Landroid/util/LruCache;

    invoke-direct {p2, p4}, Landroid/util/LruCache;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 353
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->createNewIconLoader(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;I)Lcom/android/systemui/shared/recents/model/IconLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    .line 354
    new-instance p1, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mWaittingBlurThumbnailDtats:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mSvelteLevel:I

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;-><init>(Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/shared/recents/model/IconLoader;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/graphics/Bitmap;I)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)Landroid/util/LruCache;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    return-object p0
.end method

.method private isInThumbnailCache(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->isInCacheWithoutAffectOrder(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    .locals 1

    .line 388
    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createNewIconLoader(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;I)Lcom/android/systemui/shared/recents/model/IconLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/util/LruCache<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)",
            "Lcom/android/systemui/shared/recents/model/IconLoader;"
        }
    .end annotation

    .line 360
    new-instance v0, Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/model/IconLoader;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;I)V

    return-object v0
.end method

.method public deleteTaskData(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 502
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RecentsTaskLoader"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Icon Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 713
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Thumbnail Cache"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 657
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p1

    return p1

    .line 660
    :cond_0
    iget p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    return p1
.end method

.method getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 646
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result p1

    return p1

    .line 649
    :cond_0
    iget p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    return p1
.end method

.method public getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method getAndUpdateActivityTitle(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    .line 562
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 566
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    return-object p2

    .line 571
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 573
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object p2

    .line 574
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    return-object p2

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .line 588
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    return-object p2

    .line 594
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 596
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object p2

    .line 597
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    return-object p2

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_1

    .line 621
    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isAccessLocked:Z

    if-ne v1, p3, :cond_0

    .line 622
    iget-object p1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object p1

    .line 624
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p3, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 628
    iget p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mSvelteLevel:I

    const/4 p3, 0x3

    if-ge p2, p3, :cond_2

    .line 630
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p2

    .line 631
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 632
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 633
    iget-object p1, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppsChangedCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    return-object v0
.end method

.method public getIconCacheSize()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return v0
.end method

.method public getScreenPkg()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mScreeningPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailCacheSize()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return v0
.end method

.method public loadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 5

    .line 464
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 467
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 469
    iget-object v3, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 470
    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    goto :goto_0

    :cond_0
    move-object v1, v2

    move-object v3, v1

    :goto_0
    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3
    if-eqz v4, :cond_4

    .line 478
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v4, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 480
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    return-void
.end method

.method public loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p2, p3, p0, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;)V

    .line 437
    iget-boolean p2, p3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-nez p2, :cond_0

    .line 438
    iget p2, p3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 439
    iget p2, p3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    .line 442
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->start(Landroid/content/Context;)V

    :cond_0
    return-void

    .line 434
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Requires load options"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLanguageChange()V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    return-void
.end method

.method public onPackagesChanged(Ljava/lang/String;)V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 697
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 698
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0xf

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x28

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x50

    if-eq p1, v0, :cond_4

    goto/16 :goto_1

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 515
    iget p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mSvelteLevel:I

    if-nez p1, :cond_1

    .line 516
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget v2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 519
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    goto :goto_0

    :cond_2
    if-lt p1, v1, :cond_3

    .line 521
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    .line 523
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget v2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    goto :goto_1

    .line 545
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    .line 546
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    .line 547
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 549
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    .line 550
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    goto :goto_1

    .line 537
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 538
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 539
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 540
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 539
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/LruCache;->trimToSize(I)V

    goto :goto_1

    .line 529
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 530
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    .line 531
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    .line 532
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/2addr v0, v1

    .line 531
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/LruCache;->trimToSize(I)V

    :goto_1
    return-void
.end method

.method public preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    .line 396
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_recents_privacy_thumbnail_blur"

    const/4 v2, -0x2

    .line 395
    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->convertStringToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mScreeningPkg:Ljava/lang/String;

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;ILjava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public removeThumbnailCache(I)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(I)V

    return-void
.end method

.method public removeThumbnailCache(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    return-void
.end method

.method public setDefaultColors(II)V
    .locals 0

    .line 368
    iput p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    .line 369
    iput p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    return-void
.end method

.method public setScreeningPkg(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mScreeningPkg:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailBlurPkgSet(Ljava/util/HashSet;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    return-void
.end method

.method public stopLoader()V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->stop()V

    .line 676
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->clearTasks()V

    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 487
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateBlurThumbnail(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mWaittingBlurThumbnailDtats:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    new-instance v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v2, p4, p3}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 456
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p3, p2}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 457
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->start(Landroid/content/Context;)V

    return-void
.end method

.method public updateTaskLockedState(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V
    .locals 0

    .line 680
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->updateTaskLockedState(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V

    .line 681
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->updateTaskAccessLockedState()V

    return-void
.end method

.method public updateTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    .line 407
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_recents_privacy_thumbnail_blur"

    const/4 v2, -0x2

    .line 406
    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->convertStringToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mScreeningPkg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->updatePlan(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
