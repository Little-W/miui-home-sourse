.class public Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$1;-><init>(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader$2;-><init>(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    iput p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    iget p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    iget p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    iput p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mSvelteLevel:I

    sget-object p4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p4, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object p4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result p4

    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-direct {p2, p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-direct {p2, p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mWaittingBlurThumbnailDtats:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {p2, p4, p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mClearActivityInfoOnEviction:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    invoke-direct {p2, p4, p3}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    new-instance p2, Landroid/util/LruCache;

    invoke-direct {p2, p4}, Landroid/util/LruCache;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->createNewIconLoader(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;I)Lcom/android/systemui/shared/recents/model/IconLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

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

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    return-object p0
.end method

.method private isInThumbnailCache(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->isInCacheWithoutAffectOrder(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    .locals 0

    new-instance p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method protected createNewIconLoader(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;I)Lcom/android/systemui/shared/recents/model/IconLoader;
    .locals 0
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

    new-instance p0, Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/model/IconLoader;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;I)V

    return-object p0
.end method

.method public deleteTaskData(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RecentsTaskLoader"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Icon Cache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Thumbnail Cache"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    return p0
.end method

.method getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    return p0
.end method

.method public getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/IconLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method getAndUpdateActivityTitle(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    return-object p2

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    return-object p2

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isAccessLocked:Z

    if-ne v1, p3, :cond_0

    iget-object p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p3, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mSvelteLevel:I

    const/4 p3, 0x3

    if-ge p2, p3, :cond_2

    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    iget-object p0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppsChangedCallback()Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mAppsChangedCallback:Lcom/miui/home/library/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    return-object p0
.end method

.method public getIconCacheSize()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return p0
.end method

.method public getScreenPkg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mScreeningPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnailCacheSize()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return p0
.end method

.method public loadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 14

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    goto :goto_0

    :cond_0
    move-object v4, v3

    move-object v5, v4

    :goto_0
    if-eqz v0, :cond_1

    if-nez v5, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v5, p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v5

    :goto_2
    invoke-virtual {p1, v3, v0, v4}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    goto/16 :goto_9

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v5, :cond_7

    iget-object v6, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-object v10, v5

    goto :goto_3

    :cond_7
    move-object v6, v3

    move-object v10, v6

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v7}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v5, :cond_8

    iget-object v7, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-object v13, v5

    goto :goto_4

    :cond_8
    move-object v7, v3

    move-object v13, v7

    :goto_4
    if-eqz v0, :cond_9

    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    if-nez v7, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_5
    move-object v8, v0

    if-eqz v8, :cond_c

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_6
    move-object v11, v4

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/shared/recents/model/Task;)V

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v6, v0, :cond_e

    move-object v9, v3

    goto :goto_7

    :cond_e
    move-object v9, v6

    :goto_7
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v7, p0, :cond_f

    move-object v12, v3

    goto :goto_8

    :cond_f
    move-object v12, v7

    :goto_8
    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/systemui/shared/recents/model/Task;->notifyMultipleTaskDataLoaded(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    :goto_9
    return-void
.end method

.method public loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p2, p3, p0, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;)V

    iget-boolean p2, p3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-nez p2, :cond_0

    iget p2, p3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget p2, p3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->start(Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Requires load options"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onLanguageChange()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    return-void
.end method

.method public onPackagesChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

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

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

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

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->stopLoader()V

    iget p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mSvelteLevel:I

    if-nez p1, :cond_1

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

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    goto :goto_0

    :cond_2
    if-lt p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/2addr p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContentDescriptionCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->evictAll()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v0, v0, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->trimToSize(I)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityInfoCache:Landroid/util/LruCache;

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result p1

    div-int/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    :goto_1
    return-void
.end method

.method public preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "miui_recents_privacy_thumbnail_blur"

    invoke-static {v0, v2, v1}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->convertStringToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mScreeningPkg:Ljava/lang/String;

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;ILjava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public removeIconCache(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(I)V

    return-void
.end method

.method public removeThumbnailCache(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(I)V

    return-void
.end method

.method public removeThumbnailCache(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    return-void
.end method

.method public removeTitleCache(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(I)V

    return-void
.end method

.method public setDefaultColors(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskBarBackgroundColor:I

    iput p2, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mDefaultTaskViewBackgroundColor:I

    return-void
.end method

.method public setScreeningPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mScreeningPkg:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailBlurPkgSet(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    return-void
.end method

.method public stopLoader()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->stop()V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->clearTasks()V

    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateBlurThumbnail(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mWaittingBlurThumbnailDtats:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    new-instance v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v1, p5, p4}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p3, p2}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->start(Landroid/content/Context;)V

    return-void
.end method

.method public updateTaskLockedState(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->updateTaskLockedState(Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->updateTaskAccessLockedState()V

    return-void
.end method

.method public updateTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "miui_recents_privacy_thumbnail_blur"

    invoke-static {v0, v2, v1}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->convertStringToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mThumbnailBlurPkgSet:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mScreeningPkg:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->updatePlan(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public updateTempToCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/model/IconLoader;->updateTempToCache(I)V

    return-void
.end method
