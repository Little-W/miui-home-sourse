.class Lcom/xiaomi/mirror/RemoteDeviceInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/RemoteDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/mirror/RemoteDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mirror/RemoteDeviceInfo;
    .locals 0

    new-instance p0, Lcom/xiaomi/mirror/RemoteDeviceInfo;

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/RemoteDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mirror/RemoteDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mirror/RemoteDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/xiaomi/mirror/RemoteDeviceInfo;
    .locals 0

    new-array p0, p1, [Lcom/xiaomi/mirror/RemoteDeviceInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mirror/RemoteDeviceInfo$1;->newArray(I)[Lcom/xiaomi/mirror/RemoteDeviceInfo;

    move-result-object p0

    return-object p0
.end method
