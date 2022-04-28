.class public Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;
.super Ljava/lang/Object;
.source "GlobalFolderRecommendAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apkSize:J

.field private appName:Ljava/lang/String;

.field private cacheTime:J

.field private categoryName:Ljava/lang/String;

.field private clickMonitorUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endTimeInMills:J

.field private ex:Ljava/lang/String;

.field private iconUri:Ljava/lang/String;

.field private id:J

.field private landingPage:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private passback:Ljava/lang/String;

.field private showAdMark:I

.field private summary:Ljava/lang/String;

.field private tagId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private viewMonitorUrls:Ljava/util/List;
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
    .locals 1

    .line 226
    new-instance v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->id:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->title:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->summary:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->packageName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->ex:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->passback:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->apkSize:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->appName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->tagId:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->showAdMark:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->cacheTime:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->endTimeInMills:J

    .line 82
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 83
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApkSize()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->apkSize:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->cacheTime:J

    return-wide v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getClickMonitorUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public getEndTimeInMills()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->endTimeInMills:J

    return-wide v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->id:J

    return-wide v0
.end method

.method public getLandingPage()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassback()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->passback:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAdMark()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->showAdMark:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewMonitorUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public setApkSize(J)V
    .locals 0

    .line 159
    iput-wide p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->apkSize:J

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 191
    iput-wide p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->cacheTime:J

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public setClickMonitorUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-void
.end method

.method public setEndTimeInMills(J)V
    .locals 0

    .line 199
    iput-wide p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->endTimeInMills:J

    return-void
.end method

.method public setEx(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->ex:Ljava/lang/String;

    return-void
.end method

.method public setIconUri(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->id:J

    return-void
.end method

.method public setLandingPage(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPassback(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->passback:Ljava/lang/String;

    return-void
.end method

.method public setShowAdMark(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->showAdMark:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->tagId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setViewMonitorUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlobalFolderRecommendAdInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", summary=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ex=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->ex:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", passback=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->passback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apkSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->apkSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", categoryName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tagId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeInMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->endTimeInMills:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", viewMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 245
    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->summary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->ex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->passback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->apkSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->tagId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->showAdMark:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->cacheTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    iget-wide v0, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->endTimeInMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 261
    iget-object p2, p0, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
