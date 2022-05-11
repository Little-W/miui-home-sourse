.class Lcom/mi/globallauncher/manager/BranchSettingManager;
.super Ljava/lang/Object;
.source "BranchSettingManager.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;


# static fields
.field private static final instance:Lcom/mi/globallauncher/manager/BranchSettingManager;


# instance fields
.field private callBack:Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;

.field private mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/mi/globallauncher/manager/BranchSettingManager;

    invoke-direct {v0}, Lcom/mi/globallauncher/manager/BranchSettingManager;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/manager/BranchSettingManager;->instance:Lcom/mi/globallauncher/manager/BranchSettingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/manager/BranchSettingManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/mi/globallauncher/manager/BranchSettingManager;->instance:Lcom/mi/globallauncher/manager/BranchSettingManager;

    return-object v0
.end method

.method public static synthetic lambda$branchSettingChange$0(Lcom/mi/globallauncher/manager/BranchSettingManager;Landroid/content/DialogInterface;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->callBack:Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchSwitchOn()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;->setMiHomePrivacyDialogDismiss(Z)V

    return-void
.end method

.method public static synthetic lambda$branchSettingChange$1(Lcom/mi/globallauncher/manager/BranchSettingManager;Landroid/view/View;)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchSwitchOn(Z)V

    .line 60
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$branchSettingChange$2(Lcom/mi/globallauncher/manager/BranchSettingManager;Landroid/view/View;)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setBranchSearchGuideOpenClicked()V

    .line 65
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchInitSwitchOn(ZZ)V

    .line 66
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchHasBeenOpened(Z)V

    .line 67
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchTermServiceAlertOk()V

    .line 68
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public branchAutoAddAppShortcut()Z
    .locals 1

    .line 100
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchRemoteConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public branchSettingChange(Ljava/lang/Boolean;Landroid/app/Activity;Z)V
    .locals 3

    .line 42
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    new-instance p1, Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    invoke-direct {p1, p2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;-><init>(Landroid/app/Activity;)V

    sget v0, Lcom/mi/globallauncher/R$layout;->branch_privacy_dialog_view:I

    .line 44
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setCustomView(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object p1

    const v0, 0x3f19999a    # 0.6f

    .line 45
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setDisAmount(F)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object p1

    const/16 v0, 0x50

    .line 46
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setGravity(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSettingManager$QZcaMiHGlCySe6V9Mp13NlcuRM0;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSettingManager$QZcaMiHGlCySe6V9Mp13NlcuRM0;-><init>(Lcom/mi/globallauncher/manager/BranchSettingManager;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->create()Lcom/mi/globallauncher/view/GeneralDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    .line 49
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->show()V

    .line 50
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->getContentView()Landroid/view/View;

    move-result-object p1

    .line 51
    sget v0, Lcom/mi/globallauncher/R$id;->txt_content1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 53
    sget v1, Lcom/mi/globallauncher/R$id;->txt_content2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    xor-int/lit8 v2, p3, 0x1

    .line 55
    invoke-static {p2, v0, v2}, Lcom/mi/globallauncher/view/BranchSearchGuide;->setMiTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V

    xor-int/lit8 p3, p3, 0x1

    .line 56
    invoke-static {p2, v1, p3}, Lcom/mi/globallauncher/view/BranchSearchGuide;->setTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V

    .line 57
    sget p2, Lcom/mi/globallauncher/R$id;->btn_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 58
    new-instance p3, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSettingManager$e9lgD4oObelQXrSHDT0i0iycxMo;

    invoke-direct {p3, p0}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSettingManager$e9lgD4oObelQXrSHDT0i0iycxMo;-><init>(Lcom/mi/globallauncher/manager/BranchSettingManager;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget p2, Lcom/mi/globallauncher/R$id;->btn_ok:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 63
    new-instance p2, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSettingManager$mkOknWSHVG1LM23C5rhC4t7Eo4g;

    invoke-direct {p2, p0}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchSettingManager$mkOknWSHVG1LM23C5rhC4t7Eo4g;-><init>(Lcom/mi/globallauncher/manager/BranchSettingManager;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setBranchSwitchOn(Z)V

    :goto_0
    return-void
.end method

.method public controlBranchSetting()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchRemoteConfigEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->callBack:Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;->changeBranchSetting()V

    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->callBack:Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;->removeBranchSetting()V

    .line 82
    :goto_1
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->openDrawerByDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isQuickSearchRemoteConfigEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->callBack:Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;->changeQuickSetting()V

    goto :goto_3

    .line 83
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->callBack:Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;->removeQuickSetting()V

    :goto_3
    return-void
.end method

.method public privacyDialogDestroy()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    :cond_0
    return-void
.end method

.method public setBranchSettingCallBack(Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchSettingManager;->callBack:Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;

    return-void
.end method
