.class public Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;
.super Ljava/lang/Object;
.source "RecommendInfo.java"


# instance fields
.field private mCacheTime:J

.field private mData:Ljava/lang/Object;

.field private mEndTimeInMills:J

.field private mIconUri:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTagId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mPackageName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mTitle:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->getIconUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mIconUri:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->getCacheTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mCacheTime:J

    .line 47
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->getEndTimeInMills()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mEndTimeInMills:J

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mId:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalFolderRecommendAdInfo;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mTagId:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mData:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mPackageName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mTitle:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getIconUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mIconUri:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getCacheTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mCacheTime:J

    .line 36
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getEndTimeInMills()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mEndTimeInMills:J

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mId:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mTagId:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCacheTime()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mCacheTime:J

    return-wide v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mData:Ljava/lang/Object;

    return-object p0
.end method

.method public getEndTimeInMills()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mEndTimeInMills:J

    return-wide v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mIconUri:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mTagId:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method
