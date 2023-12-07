.class public final Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handoffTaskId:I

.field private toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice$1;

    invoke-direct {v0}, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice$1;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;-><init>(Landroid/os/Parcel;)V

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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;

    iget v2, p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->handoffTaskId:I

    iget v3, p1, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->handoffTaskId:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    iget-object p1, p1, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->handoffTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->handoffTaskId:I

    const-class v0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HandoffSession{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "handoffTaskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->handoffTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", toDevice=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->handoffTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/RemoteHandoffDevice;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
