.class public Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/shared/recents/system/ITaskSnapshot;


# instance fields
.field private mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/app/ActivityManager$TaskSnapshot;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    return-void
.end method

.method public static create(I)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->getTaskSnapshotInstance(I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static getTaskSnapshotInstance(I)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 2

    :try_start_0
    invoke-static {}, Lmiui/app/ActivityTaskManagerExpose;->getService()Lmiui/app/IActivityTaskManagerExpose;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/IActivityTaskManagerExpose;->unbox()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityTaskManager;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityTaskManager;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method protected getScale(Landroid/app/ActivityManager$TaskSnapshot;I)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result p0

    return p0
.end method

.method public getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskWidth:I

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->screenOrientation:I

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->insets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSystemUiVisibility()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->systemUiVisibility:I

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getWindowingMode()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->mWindowMod:I

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->mTaskSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    iget v2, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->taskHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/shared/recents/system/TaskSnapshotCompatVQ;->getScale(Landroid/app/ActivityManager$TaskSnapshot;I)F

    move-result p0

    iput p0, v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;->scale:F

    return-object v0
.end method
