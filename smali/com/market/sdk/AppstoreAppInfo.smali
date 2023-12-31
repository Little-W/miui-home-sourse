.class public Lcom/market/sdk/AppstoreAppInfo;
.super Ljava/lang/Object;
.source "AppstoreAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/market/sdk/AppstoreAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_MASK_SHOW_AD_FLAG:J = 0x1L

.field private static final SHOW_AD_FLAG:I

.field private static sNeedInmobiParamter:Z


# instance fields
.field public adInfoPassback:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adInfoPassback"
    .end annotation
.end field

.field public ads:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ads"
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appId"
    .end annotation
.end field

.field public appUri:Landroid/net/Uri;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appUri"
    .end annotation
.end field

.field public clickMonitorUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickMonitorUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public digest:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "digest"
    .end annotation
.end field

.field public experimentalId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "experimentalId"
    .end annotation
.end field

.field public iconMask:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconMask"
    .end annotation
.end field

.field public iconUri:Landroid/net/Uri;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconUri"
    .end annotation
.end field

.field public impressionMonitorUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "impressionMonitorUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApkBriefDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mApkBriefDescription"
    .end annotation
.end field

.field private mApkSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mApkSize"
    .end annotation
.end field

.field private volatile mFlag:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mFlag"
    .end annotation
.end field

.field private mParameters:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mParameters"
    .end annotation
.end field

.field public pkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pkgName"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public viewMonitorUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewMonitorUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    :try_start_0
    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_0

    const-string v0, "6.3.21"

    .line 82
    invoke-static {v0}, Lcom/market/sdk/utils/VersionUtils;->isDevVersionLaterThan(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/market/sdk/AppstoreAppInfo;->sNeedInmobiParamter:Z

    goto :goto_0

    .line 83
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_1

    const-string v0, "V7.3.0.0"

    .line 84
    invoke-static {v0}, Lcom/market/sdk/utils/VersionUtils;->isStableVersionLaterThan(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/market/sdk/AppstoreAppInfo;->sNeedInmobiParamter:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    :goto_0
    new-instance v0, Lcom/market/sdk/AppstoreAppInfo$1;

    invoke-direct {v0}, Lcom/market/sdk/AppstoreAppInfo$1;-><init>()V

    sput-object v0, Lcom/market/sdk/AppstoreAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 50
    iput-wide v0, p0, Lcom/market/sdk/AppstoreAppInfo;->mApkSize:J

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/market/sdk/AppstoreAppInfo;->viewMonitorUrls:Ljava/util/List;

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/market/sdk/AppstoreAppInfo;->clickMonitorUrls:Ljava/util/List;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/market/sdk/AppstoreAppInfo;->impressionMonitorUrls:Ljava/util/List;

    .line 70
    iput-wide v0, p0, Lcom/market/sdk/AppstoreAppInfo;->mFlag:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 50
    iput-wide v0, p0, Lcom/market/sdk/AppstoreAppInfo;->mApkSize:J

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/market/sdk/AppstoreAppInfo;->viewMonitorUrls:Ljava/util/List;

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/market/sdk/AppstoreAppInfo;->clickMonitorUrls:Ljava/util/List;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/market/sdk/AppstoreAppInfo;->impressionMonitorUrls:Ljava/util/List;

    .line 70
    iput-wide v0, p0, Lcom/market/sdk/AppstoreAppInfo;->mFlag:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->appId:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->pkgName:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->title:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/market/sdk/AppstoreAppInfo;->ads:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->digest:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->experimentalId:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->iconMask:Ljava/lang/String;

    .line 131
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->iconUri:Landroid/net/Uri;

    .line 132
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->appUri:Landroid/net/Uri;

    .line 133
    sget-boolean v0, Lcom/market/sdk/AppstoreAppInfo;->sNeedInmobiParamter:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 135
    iget-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->impressionMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/market/sdk/AppstoreAppInfo;->adInfoPassback:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getFlag()J
    .locals 4

    .line 165
    iget-wide v0, p0, Lcom/market/sdk/AppstoreAppInfo;->mFlag:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 167
    iget-wide v0, p0, Lcom/market/sdk/AppstoreAppInfo;->mFlag:J

    return-wide v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/market/sdk/AppstoreAppInfo;->appUri:Landroid/net/Uri;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v3, "config"

    .line 174
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :catch_0
    :goto_0
    iput-wide v1, p0, Lcom/market/sdk/AppstoreAppInfo;->mFlag:J

    .line 180
    iget-wide v0, p0, Lcom/market/sdk/AppstoreAppInfo;->mFlag:J

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getApkSize()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/market/sdk/AppstoreAppInfo;->mApkSize:J

    return-wide v0
.end method

.method public getBriefDescription()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/market/sdk/AppstoreAppInfo;->mApkBriefDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/market/sdk/AppstoreAppInfo;->mParameters:Ljava/lang/String;

    return-object p0
.end method

.method public setApkSize(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/market/sdk/AppstoreAppInfo;->mApkSize:J

    return-void
.end method

.method public setBriefDescription(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/market/sdk/AppstoreAppInfo;->mApkBriefDescription:Ljava/lang/String;

    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/market/sdk/AppstoreAppInfo;->mParameters:Ljava/lang/String;

    return-void
.end method

.method public shouldShowAdFlag()Z
    .locals 6

    .line 161
    iget v0, p0, Lcom/market/sdk/AppstoreAppInfo;->ads:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/market/sdk/AppstoreAppInfo;->getFlag()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 143
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->appId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget p2, p0, Lcom/market/sdk/AppstoreAppInfo;->ads:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->digest:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->experimentalId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->iconMask:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->iconUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 151
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->appUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 152
    sget-boolean p2, Lcom/market/sdk/AppstoreAppInfo;->sNeedInmobiParamter:Z

    if-eqz p2, :cond_0

    .line 153
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-object p2, p0, Lcom/market/sdk/AppstoreAppInfo;->impressionMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 156
    iget-object p0, p0, Lcom/market/sdk/AppstoreAppInfo;->adInfoPassback:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
