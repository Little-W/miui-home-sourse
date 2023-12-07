.class Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static TAG:Ljava/lang/String; = "TaskResourceLoader"


# instance fields
.field mCancelled:Z

.field mContext:Landroid/content/Context;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

.field mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

.field mLoadThread:Landroid/os/HandlerThread;

.field mLoadThreadHandler:Landroid/os/Handler;

.field mMainThreadHandler:Landroid/os/Handler;

.field mSvelteLevel:I

.field mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingBlurThumbnailDatas:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingOnLoadQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/shared/recents/model/IconLoader;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/graphics/Bitmap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;",
            "Lcom/android/systemui/shared/recents/model/IconLoader;",
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;",
            "Lcom/android/systemui/shared/recents/model/TaskKeyLruCache<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p6, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mSvelteLevel:I

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iput-object p4, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingBlurThumbnailDatas:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iput-object p5, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "Recents-TaskResourceLoader"

    const/16 p3, 0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThreadHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postNotifyTask()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->nextTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v4, v2, Lcom/android/systemui/shared/recents/model/Task;->cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/shared/recents/model/IconLoader;->getIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    iget-object v4, v2, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v5, v2, Lcom/android/systemui/shared/recents/model/Task;->cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/shared/recents/model/IconLoader;->getIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    move-object v6, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v4, v2, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/shared/recents/model/IconLoader;->getIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    move-object v6, v1

    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->getThumbnailData(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Z)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    iget-object v1, v2, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->getThumbnailData(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Z)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->getThumbnailData(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Z)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    :goto_1
    move-object v3, v0

    move-object v5, v1

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method getThumbnailData(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Z)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingBlurThumbnailDatas:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingBlurThumbnailDatas:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget v3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mSvelteLevel:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    sget-boolean v0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading thumbnail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    :cond_2
    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    iget v4, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mSvelteLevel:I

    if-ge v4, v2, :cond_6

    if-eqz p2, :cond_5

    iget-boolean p2, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isDeterminedWhetherBlur:Z

    if-nez p2, :cond_5

    :try_start_0
    iget-object p2, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v4, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    invoke-static {p2, v1, v4}, Lcom/android/systemui/shared/recents/utilities/Graphics;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    const/16 v4, 0x18

    invoke-static {v1, p2, v4}, Lcom/android/systemui/shared/recents/utilities/Graphics;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p2, v1, v4}, Lcom/android/systemui/shared/recents/utilities/Graphics;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    sget-object v1, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    const-string v4, "callObjectMethod"

    invoke-static {v1, v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isDeterminedWhetherBlur:Z

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    :cond_6
    return-object v0
.end method

.method public run()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v0

    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->postNotifyTask()V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    monitor-enter v0

    :goto_2
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->isEmpty()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/IconLoader;->updateTempToCache()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method start(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method
