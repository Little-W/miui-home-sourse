.class public Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;
.super Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;
.source "GlobalCloudSettingsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;
    }
.end annotation


# instance fields
.field private mCanFolderSwitchOnAsDefault:Z

.field private mIsGameFolderGuessYouLikeAdsOn:Z

.field private mIsGameFolderPreinstallAdsOn:Z

.field private mIsRecommendFolderPreinstallAdOn:Z

.field private mIsRequestWhenClickRefresh:Z

.field private mIsToolsFolderSwitchOnAsDefault:Z

.field private mIsUserGameFolderGuessYouLikeAdsOn:Z

.field private mUserFolderRecommendInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mCanFolderSwitchOnAsDefault:Z

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsToolsFolderSwitchOnAsDefault:Z

    .line 16
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsRequestWhenClickRefresh:Z

    .line 17
    iput-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsGameFolderGuessYouLikeAdsOn:Z

    .line 18
    iput-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsGameFolderPreinstallAdsOn:Z

    .line 19
    iput-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsRecommendFolderPreinstallAdOn:Z

    .line 20
    iput-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsUserGameFolderGuessYouLikeAdsOn:Z

    .line 22
    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mUserFolderRecommendInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;

    return-void
.end method

.method private canFolderSwitchOnAsDefault()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mCanFolderSwitchOnAsDefault:Z

    return v0
.end method

.method public static synthetic lambda$updateEveryFolderInfo$415(Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 152
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->getTagId()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->isCloseAd()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 154
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;->getCount()I

    move-result p1

    const-string v2, "1.302.4.1"

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->setRecommendFolderGuessYouLikeAdsOn(Z)V

    goto :goto_0

    :cond_0
    const-string v2, "1.302.4.9"

    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->setToolsFolderSwitchOnAsDefault(Z)V

    goto :goto_0

    :cond_1
    const-string v2, "1.302.4.10"

    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mUserFolderRecommendInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->setSwitchOnAsDefault(Z)V

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mUserFolderRecommendInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->setLimitCount(I)V

    goto :goto_0

    :cond_2
    const-string p1, "1.302.4.13"

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 163
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->setIsGameFolderGuessYouLikeAdsOn(Z)V

    goto :goto_0

    :cond_3
    const-string p1, "1.302.4.12"

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 165
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->setIsGameFolderPreinstallAdsOn(Z)V

    goto :goto_0

    :cond_4
    const-string p1, "1.302.4.2"

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 167
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->setIsRecommendFolderPreinstallAdOn(Z)V

    goto :goto_0

    :cond_5
    const-string p1, "1.302.4.18"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 169
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->setIsUserGameFolderGuessYouLikeAdsOn(Z)V

    goto :goto_0

    :cond_6
    const-string p1, "CloudSettingsInfo"

    const-string v0, "GlobalCloudAdConfig is null"

    .line 172
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private setCanFolderSwitchOnAsDefault(Z)V
    .locals 2

    .line 69
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mCanFolderSwitchOnAsDefault:Z

    const-string p1, "CloudSettingsInfo"

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCanFolderSwitchOnAsDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mCanFolderSwitchOnAsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIsGameFolderGuessYouLikeAdsOn(Z)V
    .locals 2

    .line 84
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsGameFolderGuessYouLikeAdsOn:Z

    const-string p1, "CloudSettingsInfo"

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsGameFolderGuessYouLikeAdsOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsGameFolderGuessYouLikeAdsOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIsGameFolderPreinstallAdsOn(Z)V
    .locals 2

    .line 89
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsGameFolderPreinstallAdsOn:Z

    const-string p1, "CloudSettingsInfo"

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsGameFolderPreinstallAdsOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsGameFolderPreinstallAdsOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIsRecommendFolderPreinstallAdOn(Z)V
    .locals 2

    .line 94
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsRecommendFolderPreinstallAdOn:Z

    const-string p1, "CloudSettingsInfo"

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRecommendFolderPreinstallAdOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsRecommendFolderPreinstallAdOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIsRequestWhenClickRefresh(Z)V
    .locals 2

    .line 79
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsRequestWhenClickRefresh:Z

    const-string p1, "CloudSettingsInfo"

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRequestWhenClickRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsRequestWhenClickRefresh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIsUserGameFolderGuessYouLikeAdsOn(Z)V
    .locals 2

    .line 99
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsUserGameFolderGuessYouLikeAdsOn:Z

    const-string p1, "CloudSettingsInfo"

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsUserGameFolderGuessYouLikeAdsOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsUserGameFolderGuessYouLikeAdsOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setToolsFolderSwitchOnAsDefault(Z)V
    .locals 2

    .line 74
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsToolsFolderSwitchOnAsDefault:Z

    const-string p1, "CloudSettingsInfo"

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsToolsFolderSwitchOnAsDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsToolsFolderSwitchOnAsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateEveryFolderInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;)V
    .locals 3

    .line 147
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->getConfigs()Ljava/util/List;

    move-result-object p1

    const-string v0, "CloudSettingsInfo"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 150
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsInfo$68Cu5Y-jOMVvc3k_D6a_FS7wUG4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsInfo$68Cu5Y-jOMVvc3k_D6a_FS7wUG4;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getShowRecommendUserFolderMaxCount()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mUserFolderRecommendInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->getLimitCount()I

    move-result v0

    return v0
.end method

.method public getXOutProtectionInMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isGameFolderGuessYouLikeAdsOnAsDefault()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsGameFolderGuessYouLikeAdsOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->canFolderSwitchOnAsDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGamesFolderSwitchOnAsDefault()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsGameFolderGuessYouLikeAdsOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsGameFolderPreinstallAdsOn:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->canFolderSwitchOnAsDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnlyRequestWhenFolderOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRecommendFolderGuessYouLikeAdsOnAsDefault()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsRecommendGuessYouLikeAdsOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->canFolderSwitchOnAsDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecommendFolderSwitchOnAsDefault()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsRecommendGuessYouLikeAdsOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsRecommendFolderPreinstallAdOn:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->canFolderSwitchOnAsDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequestWhenClickRefresh()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsRequestWhenClickRefresh:Z

    return v0
.end method

.method public isShowXOut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isToolsFolderSwitchOnAsDefault()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsToolsFolderSwitchOnAsDefault:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->canFolderSwitchOnAsDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserFolderShowRecommendAppsAsDefault()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mUserFolderRecommendInfo:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->isSwitchOnAsDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->canFolderSwitchOnAsDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserGameFolderSwitchOnAsDefault()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->mIsUserGameFolderGuessYouLikeAdsOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->canFolderSwitchOnAsDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->isCloseAd()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->setCanFolderSwitchOnAsDefault(Z)V

    const-string v0, "query"

    .line 139
    invoke-virtual {p1}, Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;->getRefresh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->setIsRequestWhenClickRefresh(Z)V

    .line 140
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->updateEveryFolderInfo(Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;)V

    goto :goto_0

    :cond_0
    const-string p1, "CloudSettingsInfo"

    const-string v0, "globalCloudControlInfo is null"

    .line 142
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
