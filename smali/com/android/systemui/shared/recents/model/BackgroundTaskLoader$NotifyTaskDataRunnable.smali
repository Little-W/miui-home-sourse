.class public Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifyTaskDataRunnable"
.end annotation


# instance fields
.field private mIconWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondIconWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondThumbnailDataWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailDataWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;->mTaskWeakReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;->mThumbnailDataWeakReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;->mIconWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_0

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;->mSecondThumbnailDataWeakReference:Ljava/lang/ref/WeakReference;

    :cond_0
    if-eqz p5, :cond_1

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;->mSecondIconWeakReference:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;->mTaskWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;->mIconWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;->mThumbnailDataWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;->mSecondThumbnailDataWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$NotifyTaskDataRunnable;->mSecondIconWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p0, :cond_1

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    iget-object v6, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/shared/recents/model/Task;->notifyMultipleTaskDataLoaded(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
