.class public interface abstract Lcom/mi/globallauncher/manager/BranchInterface;
.super Ljava/lang/Object;


# direct methods
.method public static branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;
    .locals 1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchSearchManager;->getInstance()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    return-object v0
.end method

.method public static getAlgorithmManager()Lcom/mi/globallauncher/branchInterface/IBranchSearchAlgorithm;
    .locals 1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithmImpl;->getInstance()Lcom/mi/globallauncher/branchInterface/IBranchSearchAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public static getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;
    .locals 1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchGuildController;->getInstance()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object v0

    return-object v0
.end method

.method public static getBranchSearchResultUtils()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;
    .locals 1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchSearchResultUtils;->getInstance()Lcom/mi/globallauncher/branchInterface/IBranchSearchResultUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getBranchSettingManager()Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;
    .locals 1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchSettingManager;->getInstance()Lcom/mi/globallauncher/manager/BranchSettingManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBranchStatic()Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;
    .locals 1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchStaticHelper;->getInstance()Lcom/mi/globallauncher/branchInterface/IBranchStaticInterface;

    move-result-object v0

    return-object v0
.end method

.method public static getCommercialInit()Lcom/mi/globallauncher/branchInterface/ICommercialInit;
    .locals 1

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialInit;->getInstance()Lcom/mi/globallauncher/branchInterface/ICommercialInit;

    move-result-object v0

    return-object v0
.end method

.method public static getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;
    .locals 1

    invoke-static {}, Lcom/mi/globallauncher/manager/CommercialPreference;->getInstance()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    return-object v0
.end method

.method public static getPocoBranchSearchManager()Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;
    .locals 1

    invoke-static {}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->getInstance()Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract initPrivacy(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/PrivacyInitCallBack;)V
.end method

.method public abstract setApplication(Landroid/app/Application;Z)V
.end method
