.class public final Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;
.super Ljava/lang/Object;
.source "DeviceSummary.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary$1;

    invoke-direct {v0}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary$1;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/dist/handoff/parcel/DeviceSummary$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceId:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceType:I

    .line 21
    iput-object p3, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    check-cast p1, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    .line 89
    iget v2, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceType:I

    iget v3, p1, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceName:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceType()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceName:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceId:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceType:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceSummary{mDeviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget p2, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
