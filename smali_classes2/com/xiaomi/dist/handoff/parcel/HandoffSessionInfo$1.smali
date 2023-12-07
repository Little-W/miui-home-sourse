.class Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;
    .locals 1

    new-instance p0, Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;-><init>(Landroid/os/Parcel;Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;
    .locals 0

    new-array p0, p1, [Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo$1;->newArray(I)[Lcom/xiaomi/dist/handoff/parcel/HandoffSessionInfo;

    move-result-object p0

    return-object p0
.end method
