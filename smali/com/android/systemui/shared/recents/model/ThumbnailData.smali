.class public Lcom/android/systemui/shared/recents/model/ThumbnailData;
.super Ljava/lang/Object;
.source "ThumbnailData.java"


# instance fields
.field public isAccessLocked:Z

.field public isDeterminedWhetherBlur:Z

.field public thumbnail:Landroid/graphics/Bitmap;

.field public thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 1

    .line 35
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->wrapHardwareBuffer(Landroid/app/ActivityManager$TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTaskThumbnailInfo(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object p1

    .line 35
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 41
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    return-void
.end method


# virtual methods
.method public isValidate()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
