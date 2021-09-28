.class Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo$1;
.super Ljava/lang/Object;
.source "TaskThumbnailInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
    .locals 2

    .line 102
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;-><init>(Landroid/os/Parcel;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;
    .locals 0

    .line 106
    new-array p1, p1, [Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo$1;->newArray(I)[Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object p1

    return-object p1
.end method
