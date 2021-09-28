.class public Lcom/miui/maml/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;,
        Lcom/miui/maml/ResourceManager$AsyncLoadListener;,
        Lcom/miui/maml/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final DEF_CACHE_SIZE:I = 0x10000000

.field private static final DENSITY_HIGH_R:I = 0xf0

.field private static final DENSITY_XHIGH_R:I = 0x168

.field private static final DENSITY_XXHIGH_R:I = 0x21c

.field private static final DENSITY_XXXHIGH:I = 0x280

.field private static final DENSITY_XXXHIGH_R:I = 0x2d0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"

.field private static final RESOURCE_FALLBACK_DENSITY:I = 0x1e0

.field private static final RESOURCE_FALLBACK_EXTRA_FOLDER:Ljava/lang/String; = "den480/"

.field protected static sBitmapsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sRef:I

.field private static sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager$BitmapInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected mBitmapKeys:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBitmapKeysLock:Ljava/lang/Object;

.field private mDefaultResourceDensity:I

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private final mLoadingBitmaps:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceLoader:Lcom/miui/maml/ResourceLoader;

.field private mTargetDensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/miui/maml/ResourceManager$1;

    const/high16 v1, 0x10000000

    invoke-direct {v0, v1}, Lcom/miui/maml/ResourceManager$1;-><init>(I)V

    sput-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ResourceLoader;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    .line 102
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    .line 112
    sget-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    sget v1, Lcom/miui/maml/ResourceManager;->sRef:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    return-void

    :catchall_0
    move-exception p1

    .line 114
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/ResourceManager;)Landroidx/collection/ArraySet;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    return-object p0
.end method

.method public static clear()V
    .locals 1

    .line 169
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 170
    sget-object v0, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 4

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 317
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ResourceManager$BitmapInfo;

    .line 319
    sget-object v1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 325
    :cond_0
    sget-object v1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 330
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ResourceManager$BitmapInfo;

    if-eqz v0, :cond_2

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 335
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v2, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 337
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    sget-object v1, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 337
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 341
    :cond_2
    sget-object v1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-object v0
.end method

.method private loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 5

    .line 270
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 271
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 272
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 274
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "ResourceManager"

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to load resource from extra resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 277
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v3, v2, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 285
    iget v2, p0, Lcom/miui/maml/ResourceManager;->mDefaultResourceDensity:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 286
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v2, p1, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    const/16 v2, 0x1e0

    .line 290
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "den480/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v3, v2, v0}, Lcom/miui/maml/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    if-nez v1, :cond_5

    const-string v0, "ResourceManager"

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load image from extra resource: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    .line 301
    iget-object p1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    .line 303
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    iget-object v1, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 305
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    sget-object p1, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    iget-object v0, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object p1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mKey:Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 305
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    const-string v0, "ResourceManager"

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to load image: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v2
.end method

.method public static retranslateDensity(I)I
    .locals 6

    const/16 v0, 0x168

    const/16 v1, 0xf0

    if-le p0, v1, :cond_0

    if-gt p0, v0, :cond_0

    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    sub-int/2addr p0, v1

    int-to-double v4, p0

    mul-double/2addr v4, v2

    double-to-int p0, v4

    add-int/2addr p0, v1

    return p0

    :cond_0
    const-wide v1, 0x3fec71c71c71c71cL    # 0.8888888888888888

    const/16 v3, 0x21c

    if-le p0, v0, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr p0, v0

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x140

    return p0

    :cond_1
    if-le p0, v3, :cond_2

    const/16 v0, 0x2d0

    if-gt p0, v0, :cond_2

    sub-int/2addr p0, v3

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x1e0

    return p0

    :cond_2
    return p0
.end method

.method public static translateDensity(I)I
    .locals 6

    const/16 v0, 0x140

    const/16 v1, 0xf0

    if-le p0, v1, :cond_0

    if-gt p0, v0, :cond_0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    sub-int/2addr p0, v1

    int-to-double v4, p0

    mul-double/2addr v4, v2

    double-to-int p0, v4

    add-int/2addr p0, v1

    return p0

    :cond_0
    const-wide/high16 v1, 0x3ff2000000000000L    # 1.125

    const/16 v3, 0x1e0

    if-le p0, v0, :cond_1

    if-gt p0, v3, :cond_1

    sub-int/2addr p0, v0

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x168

    return p0

    :cond_1
    if-le p0, v3, :cond_2

    const/16 v0, 0x280

    if-gt p0, v0, :cond_2

    sub-int/2addr p0, v3

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    add-int/lit16 p0, p0, 0x21c

    return p0

    :cond_2
    return p0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v1}, Lcom/miui/maml/ResourceLoader;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v1, p1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearByKeys()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 187
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    sget-object v3, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v3, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v2, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v2, v1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 192
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 466
    sget-object v0, Lcom/miui/maml/ResourceManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_0
    sget v1, Lcom/miui/maml/ResourceManager;->sRef:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Lcom/miui/maml/ResourceManager;->sRef:I

    .line 468
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    sget v0, Lcom/miui/maml/ResourceManager;->sRef:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    .line 470
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v1

    .line 468
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public finish(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 418
    sget-object p1, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 419
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter p1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 421
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    sget-object p1, Lcom/miui/maml/ResourceManager;->sWeakRefBitmapsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 421
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 424
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    monitor-enter p1

    .line 425
    :try_start_2
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 426
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 428
    iget-object p1, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {p1}, Lcom/miui/maml/ResourceLoader;->finish()V

    return-void

    :catchall_1
    move-exception v0

    .line 426
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p1, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 3

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "ResourceManager"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->loadBitmap(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method public getBitmapInfoAsync(Ljava/lang/String;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 5

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    invoke-virtual {v1, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 225
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;->getCache(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 227
    monitor-exit v0

    return-object v1

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ResourceManager;->mLoadingBitmaps:Landroidx/collection/ArraySet;

    invoke-virtual {v1, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "ResourceManager"

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load image async: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v1, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;

    invoke-direct {v1, p0, p2}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;-><init>(Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p2, v3}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 232
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    new-instance p1, Lcom/miui/maml/ResourceManager$BitmapInfo;

    invoke-direct {p1}, Lcom/miui/maml/ResourceManager$BitmapInfo;-><init>()V

    .line 235
    iput-boolean v2, p1, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 232
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceLoader;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 133
    invoke-virtual {p0, p2}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v1, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v4, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 138
    iget-object v1, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_1

    .line 142
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    iget-object v6, v0, Lcom/miui/maml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    move-object v2, v1

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 144
    iget p1, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    return-object v1

    .line 148
    :cond_1
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 149
    iget p1, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object p1

    return-object p1
.end method

.method public getFontFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->getFontFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p1, Lcom/miui/maml/ResourceManager$BitmapInfo;->mNinePatch:Landroid/graphics/NinePatch;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceLoader;->init()V

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public final resourceExists(Ljava/lang/String;)Z
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setCacheSize(I)V
    .locals 2

    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 449
    sget-object v0, Lcom/miui/maml/ResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V

    :cond_0
    return-void
.end method

.method public setDefaultResourceDensity(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mDefaultResourceDensity:I

    return-void
.end method

.method public setExtraResource(Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    return-void
.end method

.method public setExtraResource(Ljava/lang/String;I)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    .line 358
    iput p2, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setExtraResourceDensity(I)V
    .locals 0

    .line 366
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setLocal(Ljava/util/Locale;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceLoader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 458
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/miui/maml/ResourceManager;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;

    const/4 p1, 0x0

    .line 460
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    :cond_1
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 0

    .line 353
    iput p1, p0, Lcom/miui/maml/ResourceManager;->mTargetDensity:I

    return-void
.end method
