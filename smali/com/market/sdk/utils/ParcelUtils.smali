.class public Lcom/market/sdk/utils/ParcelUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMagicExist(Landroid/os/Parcel;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static writeMagic(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
