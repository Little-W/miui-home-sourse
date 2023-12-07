.class public final Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:I

.field private appMeta:Lcom/xiaomi/dist/handoff/AppMeta;

.field private description:Ljava/lang/String;

.field private handoffTaskId:I

.field private lastActiveTime:J

.field private state:I

.field private supportAppLink:Z

.field private toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask$1;

    invoke-direct {v0}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask$1;-><init>()V

    sput-object v0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->handoffTaskId:I

    iput p2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->state:I

    iput p3, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->appId:I

    iput-object p5, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    iput-object p4, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->description:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->supportAppLink:Z

    iput-wide p7, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->lastActiveTime:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iget v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->handoffTaskId:I

    iget v3, p1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->handoffTaskId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->state:I

    iget v3, p1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->state:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->appId:I

    iget v3, p1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->appId:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->supportAppLink:Z

    iget-boolean v3, p1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->supportAppLink:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->lastActiveTime:J

    iget-wide v4, p1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->lastActiveTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->description:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    iget-object p1, p1, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

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

.method public getAppId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->appId:I

    return p0
.end method

.method public getAppMeta()Lcom/xiaomi/dist/handoff/AppMeta;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->appMeta:Lcom/xiaomi/dist/handoff/AppMeta;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getHandoffTaskId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->handoffTaskId:I

    return p0
.end method

.method public getLastActiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->lastActiveTime:J

    return-wide v0
.end method

.method public getToDevice()Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->handoffTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->description:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->supportAppLink:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->lastActiveTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSupportAppLink()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->supportAppLink:Z

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->handoffTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->appId:I

    const-class v0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    iput-object v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->supportAppLink:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->lastActiveTime:J

    return-void
.end method

.method public setAppMeta(Lcom/xiaomi/dist/handoff/AppMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->appMeta:Lcom/xiaomi/dist/handoff/AppMeta;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HandoffSession{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "handoffTaskId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->handoffTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", toDevice=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", supportAppLink=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->supportAppLink:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastActiveTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->lastActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->handoffTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->appId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->toDevice:Lcom/xiaomi/dist/handoff/parcel/DeviceSummary;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->supportAppLink:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
