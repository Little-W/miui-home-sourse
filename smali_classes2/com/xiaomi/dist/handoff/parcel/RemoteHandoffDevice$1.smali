.class Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice$1;
.super Ljava/lang/Object;
.source "RemoteHandoffDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;
    .locals 1

    .line 56
    new-instance p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;-><init>(Landroid/os/Parcel;Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;
    .locals 0

    .line 61
    new-array p0, p1, [Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice$1;->newArray(I)[Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    move-result-object p0

    return-object p0
.end method
