.class public Lcom/mi/globallauncher/privacy/PrivacyInit;
.super Ljava/lang/Object;
.source "PrivacyInit.java"


# instance fields
.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/privacy/PrivacyInit;Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/mi/globallauncher/privacy/PrivacyInit;->init(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V

    return-void
.end method

.method private branchInit(Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/mi/globallauncher/privacy/PrivacyInit$2;

    invoke-direct {v0, p0, p1}, Lcom/mi/globallauncher/privacy/PrivacyInit$2;-><init>(Lcom/mi/globallauncher/privacy/PrivacyInit;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V

    invoke-static {v0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->setConfigCallback(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;)V

    .line 75
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialInit()Lcom/mi/globallauncher/branchInterface/ICommercialInit;

    move-result-object p0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchImplement;->getInstance()Lcom/mi/globallauncher/manager/BranchImplement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/globallauncher/manager/BranchImplement;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/ICommercialInit;->initCloudConfigForMiuiHome(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getMiuiBranchCloudConfig()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setAllUserBranchEnabled(Z)V

    .line 77
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getMiuiQuickSearchCloudConfig()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setQuickSearchRemoteConfigEnabled(Z)V

    .line 78
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getMiuiShowNewFeatureCloudConfig()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setShowNewFeatureRemoteConfigEnabled(Z)V

    return-void
.end method

.method private init(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
    .locals 2

    const-string v0, "ResetClient"

    const-string v1, "init"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p1}, Lcom/miui/privacy/PrivacyManager;->init(Landroid/app/Application;)V

    .line 56
    invoke-direct {p0, p2}, Lcom/mi/globallauncher/privacy/PrivacyInit;->branchInit(Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V

    return-void
.end method


# virtual methods
.method public internationalInitMethod(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
    .locals 3

    .line 32
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 33
    invoke-static {p1}, Lcom/mi/globallauncher/util/CommonUtilities;->isProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ResetClient"

    const-string v1, "internationalInitMethod: isProvisioned"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mi/globallauncher/privacy/PrivacyInit;->init(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/mi/globallauncher/privacy/PrivacyInit$1;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mi/globallauncher/privacy/PrivacyInit$1;-><init>(Lcom/mi/globallauncher/privacy/PrivacyInit;Landroid/os/Handler;Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V

    iput-object v0, p0, Lcom/mi/globallauncher/privacy/PrivacyInit;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 45
    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "device_provisioned"

    .line 46
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/mi/globallauncher/privacy/PrivacyInit;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 45
    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method
