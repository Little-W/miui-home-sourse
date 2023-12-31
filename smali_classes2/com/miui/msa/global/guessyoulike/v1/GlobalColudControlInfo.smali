.class public Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;
.super Ljava/lang/Object;
.source "GlobalColudControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;",
            ">;"
        }
    .end annotation
.end field

.field private isCloseAd:Z

.field private queryType:Ljava/lang/String;

.field private refresh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->queryType:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->isCloseAd:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->refresh:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->configs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->configs:Ljava/util/List;

    return-object p0
.end method

.method public getQueryType()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->queryType:Ljava/lang/String;

    return-object p0
.end method

.method public getRefresh()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->refresh:Ljava/lang/String;

    return-object p0
.end method

.method public isCloseAd()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->isCloseAd:Z

    return p0
.end method

.method public setCloseAd(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->isCloseAd:Z

    return-void
.end method

.method public setConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->configs:Ljava/util/List;

    return-void
.end method

.method public setQueryType(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->queryType:Ljava/lang/String;

    return-void
.end method

.method public setRefresh(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->refresh:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 63
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->queryType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-boolean p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->isCloseAd:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->refresh:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->configs:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
