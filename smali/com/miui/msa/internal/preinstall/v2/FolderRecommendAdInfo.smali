.class public Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;
.super Ljava/lang/Object;
.source "FolderRecommendAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
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

.field private deleteCount:I

.field private endTimeInMills:J

.field private ex:Ljava/lang/String;

.field private iconUri:Ljava/lang/String;

.field private id:J

.field private initCount:I

.field private installCount:I

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

    .line 258
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->id:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->title:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->summary:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->packageName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->ex:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->passback:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->apkSize:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->appName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->tagId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->showAdMark:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->cacheTime:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->endTimeInMills:J

    .line 87
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->initCount:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->installCount:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->deleteCount:I

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

    .line 163
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->apkSize:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->cacheTime:J

    return-wide v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->categoryName:Ljava/lang/String;

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

    .line 211
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDeleteCount()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->deleteCount:I

    return v0
.end method

.method public getEndTimeInMills()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->endTimeInMills:J

    return-wide v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->id:J

    return-wide v0
.end method

.method public getInitCount()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->initCount:I

    return v0
.end method

.method public getInstallCount()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->installCount:I

    return v0
.end method

.method public getLandingPage()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassback()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->passback:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAdMark()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->showAdMark:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->title:Ljava/lang/String;

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

    .line 187
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public setApkSize(J)V
    .locals 0

    .line 167
    iput-wide p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->apkSize:J

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 199
    iput-wide p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->cacheTime:J

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->categoryName:Ljava/lang/String;

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

    .line 215
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-void
.end method

.method public setDeleteCount(I)V
    .locals 0

    .line 255
    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->deleteCount:I

    return-void
.end method

.method public setEndTimeInMills(J)V
    .locals 0

    .line 207
    iput-wide p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->endTimeInMills:J

    return-void
.end method

.method public setEx(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->ex:Ljava/lang/String;

    return-void
.end method

.method public setIconUri(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->id:J

    return-void
.end method

.method public setInitCount(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->initCount:I

    return-void
.end method

.method public setInstallCount(I)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->installCount:I

    return-void
.end method

.method public setLandingPage(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPassback(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->passback:Ljava/lang/String;

    return-void
.end method

.method public setShowAdMark(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->showAdMark:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->tagId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->title:Ljava/lang/String;

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

    .line 191
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderRecommendAdInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", summary=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ex=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->ex:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", passback=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->passback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apkSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->apkSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", categoryName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tagId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", landingPage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", showAdMark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->showAdMark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeInMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->endTimeInMills:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", viewMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->initCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", installCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->installCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->deleteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 278
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->summary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->ex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->passback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->apkSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->tagId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->showAdMark:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->cacheTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->endTimeInMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 292
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 293
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 294
    iget p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->initCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->installCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget p2, p0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->deleteCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
