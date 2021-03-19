.class public Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;
.super Ljava/lang/Object;
.source "FolderRecommendAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;",
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

    .line 227
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo$1;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo$1;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->id:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->title:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->summary:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->packageName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->ex:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->passback:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->apkSize:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->appName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->tagId:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->showAdMark:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->cacheTime:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->endTimeInMills:J

    .line 83
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

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

    .line 156
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->apkSize:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->cacheTime:J

    return-wide v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->categoryName:Ljava/lang/String;

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

    .line 204
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public getEndTimeInMills()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->endTimeInMills:J

    return-wide v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->id:J

    return-wide v0
.end method

.method public getLandingPage()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassback()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->passback:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAdMark()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->showAdMark:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->title:Ljava/lang/String;

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

    .line 180
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public setApkSize(J)V
    .locals 0

    .line 160
    iput-wide p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->apkSize:J

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 192
    iput-wide p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->cacheTime:J

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->categoryName:Ljava/lang/String;

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

    .line 208
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    return-void
.end method

.method public setEndTimeInMills(J)V
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->endTimeInMills:J

    return-void
.end method

.method public setEx(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->ex:Ljava/lang/String;

    return-void
.end method

.method public setIconUri(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->id:J

    return-void
.end method

.method public setLandingPage(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPassback(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->passback:Ljava/lang/String;

    return-void
.end method

.method public setShowAdMark(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->showAdMark:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->tagId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->title:Ljava/lang/String;

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

    .line 184
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderRecommendAdInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", summary=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ex=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->ex:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", passback=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->passback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apkSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->apkSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", categoryName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tagId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", cacheTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->cacheTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTimeInMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->endTimeInMills:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", viewMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->summary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->ex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->passback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->apkSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 254
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->tagId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->landingPage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->showAdMark:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->cacheTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget-wide v0, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->endTimeInMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->viewMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 262
    iget-object p2, p0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->clickMonitorUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
