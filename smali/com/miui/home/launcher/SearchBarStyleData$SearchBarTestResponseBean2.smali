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

    .line 465
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const-class v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->style:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    .line 459
    const-class v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->jump:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->updateTime:J

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->startTime:J

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->endTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 398
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->endTime:J

    return-wide v0
.end method

.method public getJump()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->jump:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 390
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->startTime:J

    return-wide v0
.end method

.method public getStyle()Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->style:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 422
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->updateTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 434
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

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->style:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 451
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->jump:Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 452
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->updateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 453
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 454
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean2;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
