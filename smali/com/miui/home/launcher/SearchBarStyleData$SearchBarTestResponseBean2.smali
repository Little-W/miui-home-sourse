.class Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;
.super Ljava/lang/Object;
.source "SearchBarStyleData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarStyleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchBarTestResponseBean2"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private endTime:J

.field private jump:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

.field private startTime:J

.field private style:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

.field private updateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 469
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    const-class v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->style:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    .line 463
    const-class v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->jump:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->updateTime:J

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->startTime:J

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->endTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEndTime()J
    .locals 2

    .line 402
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->endTime:J

    return-wide v0
.end method

.method public getJump()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->jump:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    return-object p0
.end method

.method public getStartTime()J
    .locals 2

    .line 394
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->startTime:J

    return-wide v0
.end method

.method public getStyle()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->style:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    return-object p0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 426
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->updateTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchBarTestResponseBean2{style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->style:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", jump="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->jump:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->style:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 455
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->jump:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 456
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->updateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 457
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 458
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
