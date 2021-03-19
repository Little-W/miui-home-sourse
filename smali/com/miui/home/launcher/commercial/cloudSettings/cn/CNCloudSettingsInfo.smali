.class public Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;
.super Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;
.source "CNCloudSettingsInfo.java"


# instance fields
.field private mIsShowXOut:Z

.field private mOnlyRequestWhenFolderOpen:Z

.field private mXOutProtectionInMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsShowXOut:Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mOnlyRequestWhenFolderOpen:Z

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mXOutProtectionInMillis:J

    return-void
.end method

.method private setIsShowXOut(Z)V
    .locals 2

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsShowXOut:Z

    const-string p1, "CloudSettingsInfo"

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsShowXOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsShowXOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setOnlyRequestWhenFolderOpen(Z)V
    .locals 2

    .line 50
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mOnlyRequestWhenFolderOpen:Z

    const-string p1, "CloudSettingsInfo"

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOnlyRequestWhenFolderOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mOnlyRequestWhenFolderOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setXOutProtectionInMillis(J)V
    .locals 2

    .line 35
    iput-wide p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mXOutProtectionInMillis:J

    const-string p1, "CloudSettingsInfo"

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mXOutProtectionInMillis="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mXOutProtectionInMillis:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getXOutProtectionInMillis()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mXOutProtectionInMillis:J

    return-wide v0
.end method

.method public isOnlyRequestWhenFolderOpen()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mOnlyRequestWhenFolderOpen:Z

    return v0
.end method

.method public isRecommendFolderSwitchOnAsDefault()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsRecommendGuessYouLikeAdsOn:Z

    return v0
.end method

.method public isRequestWhenClickRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowXOut()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->mIsShowXOut:Z

    return v0
.end method

.method public updateInfo(Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isCloseAd()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->setRecommendFolderGuessYouLikeAdsOn(Z)V

    const-string v0, "GetAdWithOpenFolder"

    .line 26
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->getQueryType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 25
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->setOnlyRequestWhenFolderOpen(Z)V

    .line 27
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isOpenXout()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->setIsShowXOut(Z)V

    .line 28
    invoke-virtual {p1}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->getxOutProtectionInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->setXOutProtectionInMillis(J)V

    goto :goto_0

    :cond_0
    const-string p1, "CloudSettingsInfo"

    const-string v0, "cnColudControlInfo is null"

    .line 30
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
