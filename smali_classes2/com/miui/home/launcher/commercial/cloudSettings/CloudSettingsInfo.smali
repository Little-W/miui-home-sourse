.class public abstract Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;
.super Ljava/lang/Object;
.source "CloudSettingsInfo.java"


# instance fields
.field protected mIsRecommendGuessYouLikeAdsOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->mIsRecommendGuessYouLikeAdsOn:Z

    return-void
.end method


# virtual methods
.method public abstract getXOutProtectionInMillis()J
.end method

.method public abstract isOnlyRequestWhenFolderOpen()Z
.end method

.method public abstract isRequestWhenClickRefresh()Z
.end method

.method public abstract isShowXOut()Z
.end method

.method protected setRecommendFolderGuessYouLikeAdsOn(Z)V
    .locals 1

    .line 12
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->mIsRecommendGuessYouLikeAdsOn:Z

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsRecommendGuessYouLikeAdsOn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;->mIsRecommendGuessYouLikeAdsOn:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CloudSettingsInfo"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
