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

.method static synthetic lambda$requestCloudSettingsInfo$0(Ljava/lang/Void;)Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
    .locals 0

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getInstance(Landroid/content/Context;)Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/InternalPreInstallAdHelper;->getCNColudControl()Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCloudSettingsChangedAction()Ljava/lang/String;
    .locals 0

    const-string p0, "miui.intent.action.ad.CN_CLOUD_CONFIG_UPDATING"

    return-object p0
.end method

.method public getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->mCNCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;

    return-object p0
.end method

.method public isGuessYouLikeAdsOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p0

    return p0
.end method

.method public isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isRecommendFolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isHotFolder()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->mCNCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->isRecommendFolderSwitchOnAsDefault()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$requestCloudSettingsInfo$1$CNCloudSettingsController(Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;->mCNCloudSettingsInfo:Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsInfo;->updateInfo(Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;)V

    :cond_0
    return-void
.end method

.method public requestCloudSettingsInfo()V
    .locals 2

    .line 35
    sget-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$3Jz2FEwx_kNtizwLwrPZrQo11V4;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$3Jz2FEwx_kNtizwLwrPZrQo11V4;

    new-instance v1, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Uh0DeR3NlrzpyPOOKIidoX9ZeGU;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/commercial/cloudSettings/cn/-$$Lambda$CNCloudSettingsController$Uh0DeR3NlrzpyPOOKIidoX9ZeGU;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/cn/CNCloudSettingsController;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
