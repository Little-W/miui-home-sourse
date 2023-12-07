.class public Lcom/android/systemui/shared/recents/model/ThumbnailData;
.super Ljava/lang/Object;


# instance fields
.field public isAccessLocked:Z

.field public isDeterminedWhetherBlur:Z

.field public thumbnail:Landroid/graphics/Bitmap;

.field public thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    return-void
.end method


# virtual methods
.method public isValidate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnailInfo:Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
