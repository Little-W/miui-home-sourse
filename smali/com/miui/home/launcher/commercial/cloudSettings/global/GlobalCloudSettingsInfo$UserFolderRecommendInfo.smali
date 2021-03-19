.class Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;
.super Ljava/lang/Object;
.source "GlobalCloudSettingsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserFolderRecommendInfo"
.end annotation


# instance fields
.field private mIsSwitchOnAsDefault:Z

.field private mLimitCount:I

.field final synthetic this$0:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->this$0:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->mIsSwitchOnAsDefault:Z

    const/4 p1, 0x1

    .line 43
    iput p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->mLimitCount:I

    return-void
.end method


# virtual methods
.method public getLimitCount()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->mLimitCount:I

    return v0
.end method

.method public isSwitchOnAsDefault()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->mIsSwitchOnAsDefault:Z

    return v0
.end method

.method public setLimitCount(I)V
    .locals 2

    .line 59
    iput p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->mLimitCount:I

    const-string p1, "CloudSettingsInfo"

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLimitCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->mLimitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSwitchOnAsDefault(Z)V
    .locals 2

    .line 50
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->mIsSwitchOnAsDefault:Z

    const-string p1, "CloudSettingsInfo"

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSwitchOnAsDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo$UserFolderRecommendInfo;->mIsSwitchOnAsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
