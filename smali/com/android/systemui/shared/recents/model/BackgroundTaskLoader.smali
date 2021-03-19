.class Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

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

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p6, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mSvelteLevel:I

    .line 114
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    .line 115
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    .line 116
    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 117
    iput-object p4, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingBlurThumbnailDatas:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    .line 118
    iput-object p5, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 119
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 120
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "Recents-TaskResourceLoader"

    const/16 p3, 0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    .line 122
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThreadHandler:Landroid/os/Handler;

    .line 124
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 151
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 152
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 155
    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 160
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 164
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->nextTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 171
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mIconLoader:Lcom/android/systemui/shared/recents/model/IconLoader;

    invoke-virtual {v3, v0}, Lcom/android/systemui/shared/recents/model/IconLoader;->getIcon(Lcom/android/systemui/shared/recents/model/Task;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingBlurThumbnailDatas:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 173
    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingBlurThumbnailDatas:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v6, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    if-nez v4, :cond_2

    .line 175
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_2
    if-nez v4, :cond_6

    .line 181
    iget v5, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mSvelteLevel:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_4

    .line 182
    sget-boolean v4, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading thumbnail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v4

    .line 186
    :cond_4
    iget-object v5, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    .line 187
    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iput-object v5, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :cond_5
    move v5, v2

    goto :goto_2

    :cond_6
    move v5, v1

    .line 192
    :goto_2
    iget v6, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mSvelteLevel:I

    if-ge v6, v2, :cond_8

    .line 193
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isDeterminedWhetherBlur:Z

    if-nez v6, :cond_7

    .line 196
    :try_start_3
    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v7, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 197
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    invoke-static {v6, v7, v8}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    const/16 v7, 0x18

    .line 198
    invoke-static {v6, v7}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 199
    iget-object v7, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v6, v7, v8}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 200
    iput-object v6, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    .line 202
    sget-object v7, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    const-string v8, "callObjectMethod"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    :cond_7
    :goto_3
    iput-boolean v2, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isDeterminedWhetherBlur:Z

    if-eqz v5, :cond_8

    .line 207
    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mThumbnailCache:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;

    iget-object v6, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 211
    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v5, :cond_9

    .line 213
    iget-object v5, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;

    invoke-direct {v6, v0, v4, v3}, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    monitor-enter v0

    .line 219
    :goto_4
    :try_start_4
    iget-boolean v3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->isEmpty()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_a

    .line 221
    :try_start_5
    iput-boolean v2, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    .line 222
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v3

    .line 225
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 228
    :cond_a
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    .line 164
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method start(Landroid/content/Context;)V
    .locals 1

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    .line 132
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mCancelled:Z

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method
