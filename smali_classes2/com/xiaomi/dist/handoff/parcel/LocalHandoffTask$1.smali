.class Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask$1;
.super Ljava/lang/Object;
.source "LocalHandoffTask.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    .locals 0

    .line 117
    new-instance p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
    .locals 0

    .line 122
    new-array p0, p1, [Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask$1;->newArray(I)[Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    move-result-object p0

    return-object p0
.end method
