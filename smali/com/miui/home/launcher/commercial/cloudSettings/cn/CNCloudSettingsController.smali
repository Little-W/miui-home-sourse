.class public Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;
.super Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;
.source "CNCloudSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController$CNCloudSettingsControllerInstance;
    }
.end annotation


# instance fields
.field private mCNCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;-><init>()V

    .line 30
    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->mCNCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;
    .locals 1

    .line 20
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController$CNCloudSettingsControllerInstance;->access$000()Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$requestCloudSettingsInfo$0(Ljava/lang/Void;)Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;
    .locals 0

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/InternalPreInstallAdHelper;->getCNColudControl()Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$requestCloudSettingsInfo$1(Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->mCNCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->updateInfo(Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCloudSettingsChangedAction()Ljava/lang/String;
    .locals 1

    const-string v0, "miui.intent.action.ad.CN_CLOUD_CONFIG_UPDATING"

    return-object v0
.end method

.method public getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->mCNCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;

    return-object v0
.end method

.method public isGuessYouLikeAdsOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p1

    return p1
.end method

.method public isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->mCNCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->isRecommendFolderSwitchOnAsDefault()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestCloudSettingsInfo()V
    .locals 3

    .line 35
    sget-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$j4SINzOkMX8dMarmRddfer-pQQc;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$j4SINzOkMX8dMarmRddfer-pQQc;

    new-instance v1, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$w8M93INxl-L5Jw8gGvxHWZN-Q7g;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$w8M93INxl-L5Jw8gGvxHWZN-Q7g;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
