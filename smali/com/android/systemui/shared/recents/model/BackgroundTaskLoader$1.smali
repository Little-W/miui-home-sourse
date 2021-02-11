.class Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

.field final synthetic val$newIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$newThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field final synthetic val$t:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->this$0:Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader;

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$t:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$newThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iput-object p4, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$newIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$t:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->hasCallBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$t:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$newThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$newIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$newThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$t:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$newThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/BackgroundTaskLoader$1;->val$newThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/shared/recents/model/Task;->notifySnapshotChanged(ILandroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Z)V

    :goto_0
    return-void
.end method
