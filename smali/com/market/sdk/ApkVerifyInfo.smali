.class public Lcom/market/sdk/ApkVerifyInfo;
.super Ljava/lang/Object;
.source "ApkVerifyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/market/sdk/ApkVerifyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CONNECTION_FAILED:I = 0x3

.field public static final STATUS_INCONSISTENT_CERTIFICATES:I = 0x2

.field public static final STATUS_NOT_INCLUDED:I = 0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OLDER:I = 0x1

.field public static final STATUS_PROCESSING:I = 0x6

.field public static final STATUS_RESULT_INVALID:I = 0x5


# instance fields
.field public mAppId:Ljava/lang/String;

.field public mAppName:Ljava/lang/String;

.field public mInstallerName:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public mNeedFullScan:Z

.field public mNonce:J

.field public mPackageName:Ljava/lang/String;

.field public mStatus:I

.field public mTimeStamp:J

.field public mToken:Ljava/lang/String;

.field public mUpdateLog:Ljava/lang/String;

.field public mUpdateTime:J

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/market/sdk/ApkVerifyInfo$1;

    invoke-direct {v0}, Lcom/market/sdk/ApkVerifyInfo$1;-><init>()V

    sput-object v0, Lcom/market/sdk/ApkVerifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 40
    iput v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionCode:I

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateTime:J

    .line 44
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateLog:Ljava/lang/String;

    .line 45
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mNonce:J

    .line 46
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mTimeStamp:J

    .line 47
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mInstallerName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppId:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mPackageName:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 40
    iput v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionCode:I

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateTime:J

    .line 44
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateLog:Ljava/lang/String;

    .line 45
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mNonce:J

    .line 46
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mTimeStamp:J

    .line 47
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mInstallerName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppId:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mPackageName:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mToken:Ljava/lang/String;

    .line 22
    iput p1, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 40
    iput v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionCode:I

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateTime:J

    .line 44
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateLog:Ljava/lang/String;

    .line 45
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mNonce:J

    .line 46
    iput-wide v1, p0, Lcom/market/sdk/ApkVerifyInfo;->mTimeStamp:J

    .line 47
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mInstallerName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppId:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mPackageName:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mToken:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionName:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionCode:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateTime:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateLog:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mNonce:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mTimeStamp:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mInstallerName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/market/sdk/ApkVerifyInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public canReplaceByAppStore()Z
    .locals 2

    .line 56
    iget p0, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 71
    iget p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mVersionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mUpdateLog:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mNonce:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-wide v0, p0, Lcom/market/sdk/ApkVerifyInfo;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mInstallerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/market/sdk/ApkVerifyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/market/sdk/ApkVerifyInfo;->mIntent:Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
