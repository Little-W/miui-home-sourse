.class Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;
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
    name = "SearchBarTestResponseBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private jumpTestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;",
            ">;"
        }
    .end annotation
.end field

.field private uiTestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;",
            ">;"
        }
    .end annotation
.end field

.field private updateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 532
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    sget-object v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->uiTestList:Ljava/util/List;

    .line 528
    sget-object v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->jumpTestList:Ljava/util/List;

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->updateTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getJumpTestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarJumpBean;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->jumpTestList:Ljava/util/List;

    return-object v0
.end method

.method public getUiTestList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->uiTestList:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 488
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->updateTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 521
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->uiTestList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 522
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->jumpTestList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 523
    iget-wide v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarTestResponseBean;->updateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
