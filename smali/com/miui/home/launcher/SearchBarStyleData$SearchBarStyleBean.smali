.class Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;
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
    name = "SearchBarStyleBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundBorderColor:Ljava/lang/String;

.field private backgroundBorderWidth:I

.field private backgroundColor:Ljava/lang/String;

.field private blurLayerColor:Ljava/lang/String;

.field private blurRadius:I

.field private engineChainChange:Z

.field private expId:Ljava/lang/String;

.field private leftIcon:Ljava/lang/String;

.field private rightIcon:Ljava/lang/String;

.field private showSetting:Z

.field private testHashEnd:I

.field private testHashStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 792
    new-instance v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundColor:Ljava/lang/String;

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->blurLayerColor:Ljava/lang/String;

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->blurRadius:I

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundBorderColor:Ljava/lang/String;

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->leftIcon:Ljava/lang/String;

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->rightIcon:Ljava/lang/String;

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->expId:Ljava/lang/String;

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->testHashStart:I

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->testHashEnd:I

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundBorderWidth:I

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->engineChainChange:Z

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->showSetting:Z

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;)Ljava/lang/String;
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundColor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;)I
    .locals 0

    .line 625
    iget p0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundBorderWidth:I

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundBorderColor()Ljava/lang/String;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundBorderColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurLayerColor()Ljava/lang/String;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->blurLayerColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBlurRadius()I
    .locals 1

    .line 680
    iget v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->blurRadius:I

    return v0
.end method

.method public getExpId()Ljava/lang/String;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->expId:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftIcon()Ljava/lang/String;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->leftIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getRightIcon()Ljava/lang/String;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->rightIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTestHashEnd()I
    .locals 1

    .line 728
    iget v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->testHashEnd:I

    return v0
.end method

.method public getTestHashStart()I
    .locals 1

    .line 720
    iget v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->testHashStart:I

    return v0
.end method

.method public isEngineChainChange()Z
    .locals 1

    .line 648
    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->engineChainChange:Z

    return v0
.end method

.method public isShowSetting()Z
    .locals 1

    .line 640
    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->showSetting:Z

    return v0
.end method

.method public setLeftIcon(Ljava/lang/String;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->leftIcon:Ljava/lang/String;

    return-void
.end method

.method public setRightIcon(Ljava/lang/String;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->rightIcon:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchBarStyleBean{backgroundColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", blurLayerColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->blurLayerColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", blurRadius="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->blurRadius:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", backgroundBorderColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundBorderColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", leftIcon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->leftIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rightIcon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->rightIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->expId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", testHashStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->testHashStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", testHashEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->testHashEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundBorderWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundBorderWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", engineChainChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->engineChainChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->showSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 763
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 764
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->blurLayerColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 765
    iget p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->blurRadius:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundBorderColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->leftIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 768
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->rightIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    iget-object p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->expId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 770
    iget p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->testHashStart:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    iget p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->testHashEnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    iget p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->backgroundBorderWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget-boolean p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->engineChainChange:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 774
    iget-boolean p2, p0, Lcom/miui/home/launcher/SearchBarStyleData$SearchBarStyleBean;->showSetting:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
