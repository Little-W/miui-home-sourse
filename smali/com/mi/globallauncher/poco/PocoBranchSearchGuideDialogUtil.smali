.class public Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;
.super Ljava/lang/Object;
.source "PocoBranchSearchGuideDialogUtil.java"

# interfaces
.implements Lcom/mi/globallauncher/poco/IPocoBranchSearchGuideManager;


# static fields
.field private static final instance:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

.field private static mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

.field private static mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;


# instance fields
.field private mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

.field private mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    invoke-direct {v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->instance:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;
    .locals 1

    .line 22
    sget-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->branchGuideAgreed()V

    return-void
.end method

.method static synthetic access$300(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;Landroid/app/Activity;Landroid/widget/CheckBox;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->showSearchGuidePrivacyDialog(Landroid/app/Activity;Landroid/widget/CheckBox;Z)V

    return-void
.end method

.method private branchGuideAgreed()V
    .locals 2

    .line 148
    sget-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;->onAgreeBtnClicked()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->onAgreeBtnClicked(Z)V

    .line 152
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setQuickSearchSwitchOn(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->dismissBranchSearchGuide()V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;
    .locals 1

    .line 36
    sget-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->instance:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    return-object v0
.end method

.method public static synthetic lambda$showBranchSearchGuideView$0(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;Landroid/content/DialogInterface;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->onHide()V

    .line 71
    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    .line 73
    :cond_0
    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    if-eqz p1, :cond_1

    .line 74
    invoke-interface {p1}, Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;->onDialogDismiss()V

    .line 75
    sput-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    :cond_1
    return-void
.end method

.method public static synthetic lambda$showSearchGuidePrivacyDialog$1(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    .line 127
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 128
    invoke-direct {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->branchGuideAgreed()V

    return-void
.end method

.method private showSearchGuidePrivacyDialog(Landroid/app/Activity;Landroid/widget/CheckBox;Z)V
    .locals 3

    .line 120
    new-instance v0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    invoke-direct {v0, p1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/mi/globallauncher/R$string;->guide_privacy_dialog_title:I

    .line 121
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setTitle(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$string;->branch_search_guide_privacy:I

    .line 122
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setContentText(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    .line 123
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setDisAmount(F)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    .line 124
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setGravity(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$string;->btn_cancel:I

    const/4 v2, 0x0

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$string;->btn_agree:I

    new-instance v2, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuideDialogUtil$w-wQD1sQthYrMYz8wu_zpd6EHhA;

    invoke-direct {v2, p0, p2}, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuideDialogUtil$w-wQD1sQthYrMYz8wu_zpd6EHhA;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;Landroid/widget/CheckBox;)V

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object p2

    .line 129
    invoke-virtual {p2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->create()Lcom/mi/globallauncher/view/GeneralDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    .line 130
    iget-object p2, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    new-instance v0, Lcom/mi/globallauncher/poco/-$$Lambda$UPLDXdS2FewJLm2xqDJoe4rK8NI;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/poco/-$$Lambda$UPLDXdS2FewJLm2xqDJoe4rK8NI;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)V

    invoke-virtual {p2, v0}, Lcom/mi/globallauncher/view/GeneralDialog;->addNaviCallbackListener(Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;)V

    .line 131
    iget-object p2, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p2}, Lcom/mi/globallauncher/view/GeneralDialog;->show()V

    .line 132
    iget-object p2, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p2}, Lcom/mi/globallauncher/view/GeneralDialog;->getContentView()Landroid/view/View;

    move-result-object p2

    .line 133
    sget v0, Lcom/mi/globallauncher/R$id;->txt_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 134
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 135
    invoke-static {p1, p2, p3}, Lcom/mi/globallauncher/view/BranchSearchGuide;->setTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private static updateStatusBar(Z)V
    .locals 3

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x400

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    if-eqz p0, :cond_0

    .line 93
    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x2410

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 97
    :cond_0
    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 99
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    if-eqz p0, :cond_2

    .line 101
    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x2400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 104
    :cond_2
    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public dismissBranchSearchGuide()V
    .locals 1

    .line 111
    sget-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    const/4 v0, 0x0

    .line 114
    sput-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    :cond_1
    return-void
.end method

.method public hideBranchPrivacyDialogOnReset()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    :cond_0
    return-void
.end method

.method public needToShowBranchSearchGuideForUsers(Landroid/content/Context;)Z
    .locals 1

    .line 159
    invoke-static {}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->needToShowPocoSearchGuide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-static {p1}, Lcom/mi/globallauncher/util/CommonUtilities;->isFirstInstall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p1}, Lcom/mi/globallauncher/util/CommonUtilities;->isFirstInstall(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/mi/globallauncher/util/CommonUtilities;->isMiuiDefaultLauncher()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public needToShowPocoSearchGuide()Z
    .locals 1

    .line 166
    invoke-static {}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->needToShowPocoSearchGuide()Z

    move-result v0

    return v0
.end method

.method public showBranchSearchGuideView(Landroid/app/Activity;ZLcom/mi/globallauncher/poco/PocoBranchGuideCallBack;)V
    .locals 2

    .line 41
    new-instance v0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    invoke-direct {v0, p1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->create()Lcom/mi/globallauncher/view/GeneralDialog;

    move-result-object v0

    sput-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    .line 42
    sput-object p3, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    .line 43
    invoke-static {p1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getPocoBranchSearchGuideView(Landroid/content/Context;)Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    move-result-object p3

    iput-object p3, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    .line 44
    iget-object p3, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    new-instance v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;Landroid/app/Activity;Z)V

    const/4 v1, 0x1

    invoke-virtual {p3, p2, v0, v1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->initPocoBranchSearchGuideView(ZLcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;Z)V

    .line 65
    iget-object p3, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    invoke-virtual {p3}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getPrivacyTextView()Landroid/widget/TextView;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->setTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V

    .line 67
    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    iget-object p3, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    invoke-virtual {p1, p3}, Lcom/mi/globallauncher/view/GeneralDialog;->setContentView(Landroid/view/View;)V

    .line 68
    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    new-instance p3, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuideDialogUtil$BQyAV76Qmh_1YJJcQWWfGSnPvp4;

    invoke-direct {p3, p0}, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuideDialogUtil$BQyAV76Qmh_1YJJcQWWfGSnPvp4;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)V

    invoke-virtual {p1, p3}, Lcom/mi/globallauncher/view/GeneralDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 78
    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    new-instance p3, Lcom/mi/globallauncher/poco/-$$Lambda$M8y8KQdzwz_t598l3CnzV275A8U;

    invoke-direct {p3, p0}, Lcom/mi/globallauncher/poco/-$$Lambda$M8y8KQdzwz_t598l3CnzV275A8U;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)V

    invoke-virtual {p1, p3}, Lcom/mi/globallauncher/view/GeneralDialog;->addNaviCallbackListener(Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;)V

    .line 79
    invoke-static {p2}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->updateStatusBar(Z)V

    .line 80
    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->show()V

    .line 81
    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    .line 83
    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x500

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 84
    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1}, Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;->onDialogShow()V

    :cond_0
    return-void
.end method
