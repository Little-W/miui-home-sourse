.class public Lcom/market/sdk/DesktopRecommendInfo;
.super Ljava/lang/Object;
.source "DesktopRecommendInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/market/sdk/DesktopRecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CACHE_TIME:J = 0x493e0L


# instance fields
.field public appInfoList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appInfoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/market/sdk/AppstoreAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public backgroundImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backgroundImageUrl"
    .end annotation
.end field

.field public bannerList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bannerList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/market/sdk/AdsBannerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public cacheTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cacheTime"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public folderId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "folderId"
    .end annotation
.end field

.field public sid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sid"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lcom/market/sdk/DesktopRecommendInfo$3;

    invoke-direct {v0}, Lcom/market/sdk/DesktopRecommendInfo$3;-><init>()V

    sput-object v0, Lcom/market/sdk/DesktopRecommendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->folderId:J

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->appInfoList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->bannerList:Ljava/util/List;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->backgroundImageUrl:Ljava/lang/String;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->description:Ljava/lang/String;

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->sid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->folderId:J

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->appInfoList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->bannerList:Ljava/util/List;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->backgroundImageUrl:Ljava/lang/String;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->description:Ljava/lang/String;

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->sid:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->folderId:J

    .line 57
    iget-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->appInfoList:Ljava/util/List;

    sget-object v1, Lcom/market/sdk/AppstoreAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 58
    iget-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->bannerList:Ljava/util/List;

    sget-object v1, Lcom/market/sdk/AdsBannerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->backgroundImageUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->description:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->sid:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->cacheTime:J

    return-void
.end method

.method public static restore(Ljava/lang/String;)Lcom/market/sdk/DesktopRecommendInfo;
    .locals 3

    .line 89
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 90
    const-class v1, Landroid/net/Uri;

    new-instance v2, Lcom/market/sdk/DesktopRecommendInfo$2;

    invoke-direct {v2}, Lcom/market/sdk/DesktopRecommendInfo$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 96
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 97
    const-class v1, Lcom/market/sdk/DesktopRecommendInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/DesktopRecommendInfo;

    return-object p0
.end method


# virtual methods
.method public convertToJson()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 78
    const-class v1, Landroid/net/Uri;

    new-instance v2, Lcom/market/sdk/DesktopRecommendInfo$1;

    invoke-direct {v2, p0}, Lcom/market/sdk/DesktopRecommendInfo$1;-><init>(Lcom/market/sdk/DesktopRecommendInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 84
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->folderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-object p2, p0, Lcom/market/sdk/DesktopRecommendInfo;->appInfoList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 69
    iget-object p2, p0, Lcom/market/sdk/DesktopRecommendInfo;->bannerList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 70
    iget-object p2, p0, Lcom/market/sdk/DesktopRecommendInfo;->backgroundImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/market/sdk/DesktopRecommendInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/market/sdk/DesktopRecommendInfo;->sid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-wide v0, p0, Lcom/market/sdk/DesktopRecommendInfo;->cacheTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
