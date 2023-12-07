.class public Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;
.super Ljava/lang/Object;

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

    new-instance v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    invoke-direct {v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->instance:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;
    .locals 1

    sget-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->branchGuideAgreed()V

    return-void
.end method

.method static synthetic access$300(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;Landroid/app/Activity;Landroid/widget/CheckBox;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->showSearchGuidePrivacyDialog(Landroid/app/Activity;Landroid/widget/CheckBox;Z)V

    return-void
.end method

.method private branchGuideAgreed()V
    .locals 1

    sget-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;->onAgreeBtnClicked()V

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    invoke-virtual {v0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->onAgreeBtnClicked()V

    invoke-virtual {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->dismissBranchSearchGuide()V

    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchGuideOpen()V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;
    .locals 1

    sget-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->instance:Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;

    return-object v0
.end method

.method private showSearchGuidePrivacyDialog(Landroid/app/Activity;Landroid/widget/CheckBox;Z)V
    .locals 3

    new-instance v0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    invoke-direct {v0, p1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/mi/globallauncher/R$string;->guide_privacy_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setTitle(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$string;->branch_search_guide_privacy:I

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setContentText(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setDisAmount(F)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setGravity(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$string;->btn_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    sget v1, Lcom/mi/globallauncher/R$string;->btn_agree:I

    new-instance v2, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuideDialogUtil$w-wQD1sQthYrMYz8wu_zpd6EHhA;

    invoke-direct {v2, p0, p2}, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuideDialogUtil$w-wQD1sQthYrMYz8wu_zpd6EHhA;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1, v2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->create()Lcom/mi/globallauncher/view/GeneralDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    iget-object p2, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    new-instance v0, Lcom/mi/globallauncher/poco/-$$Lambda$UPLDXdS2FewJLm2xqDJoe4rK8NI;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/poco/-$$Lambda$UPLDXdS2FewJLm2xqDJoe4rK8NI;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)V

    invoke-virtual {p2, v0}, Lcom/mi/globallauncher/view/GeneralDialog;->addNaviCallbackListener(Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;)V

    iget-object p2, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p2}, Lcom/mi/globallauncher/view/GeneralDialog;->show()V

    iget-object p0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getContentView()Landroid/view/View;

    move-result-object p0

    sget p2, Lcom/mi/globallauncher/R$id;->txt_content:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {p1, p0, p3}, Lcom/mi/globallauncher/view/BranchSearchGuide;->setTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private static updateStatusBar(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x400

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x2410

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x2400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismissBranchSearchGuide()V
    .locals 0

    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    const/4 p0, 0x0

    sput-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    :cond_1
    return-void
.end method

.method public hideBranchPrivacyDialogOnReset()V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    :cond_0
    return-void
.end method

.method public synthetic lambda$showPocoBranchSearchGuideView$0$PocoBranchSearchGuideDialogUtil(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->onHide()V

    iput-object v0, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    :cond_0
    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;->onDialogDismiss()V

    sput-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    :cond_1
    return-void
.end method

.method public synthetic lambda$showSearchGuidePrivacyDialog$1$PocoBranchSearchGuideDialogUtil(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->branchGuideAgreed()V

    return-void
.end method

.method public needToShowBranchSearchGuideForUsers(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->needToShowPocoSearchGuide()Z

    move-result p0

    return p0
.end method

.method public needToShowPocoSearchGuide()Z
    .locals 0

    invoke-static {}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->needToShowPocoSearchGuide()Z

    move-result p0

    return p0
.end method

.method public showPocoBranchSearchGuideView(Landroid/app/Activity;ZLcom/mi/globallauncher/poco/PocoBranchGuideCallBack;)V
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    invoke-direct {v0, p1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->create()Lcom/mi/globallauncher/view/GeneralDialog;

    move-result-object v0

    sput-object v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    sput-object p3, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    invoke-static {p1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getPocoBranchSearchGuideView(Landroid/content/Context;)Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    move-result-object p3

    iput-object p3, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    iget-object p3, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    new-instance v0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil$1;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;Landroid/app/Activity;Z)V

    const/4 v1, 0x1

    invoke-virtual {p3, p2, v0, v1}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->initPocoBranchSearchGuideView(ZLcom/mi/globallauncher/poco/PocoBranchSearchGuide$BranchGuideViewClickListener;Z)V

    iget-object p3, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    invoke-virtual {p3}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->getPrivacyTextView()Landroid/widget/TextView;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;->setTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V

    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    iget-object p3, p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mBranchSearchGuideView:Lcom/mi/globallauncher/poco/PocoBranchSearchGuide;

    invoke-virtual {p1, p3}, Lcom/mi/globallauncher/view/GeneralDialog;->setContentView(Landroid/view/View;)V

    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    new-instance p3, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuideDialogUtil$guB8BVZ9OwyeUNKHZI_a4HpsUd4;

    invoke-direct {p3, p0}, Lcom/mi/globallauncher/poco/-$$Lambda$PocoBranchSearchGuideDialogUtil$guB8BVZ9OwyeUNKHZI_a4HpsUd4;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)V

    invoke-virtual {p1, p3}, Lcom/mi/globallauncher/view/GeneralDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object p1, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    new-instance p3, Lcom/mi/globallauncher/poco/-$$Lambda$M8y8KQdzwz_t598l3CnzV275A8U;

    invoke-direct {p3, p0}, Lcom/mi/globallauncher/poco/-$$Lambda$M8y8KQdzwz_t598l3CnzV275A8U;-><init>(Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;)V

    invoke-virtual {p1, p3}, Lcom/mi/globallauncher/view/GeneralDialog;->addNaviCallbackListener(Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;)V

    invoke-static {p2}, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->updateStatusBar(Z)V

    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->show()V

    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchGuideShow()V

    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mGuideDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setLayout(II)V

    sget-object p0, Lcom/mi/globallauncher/poco/PocoBranchSearchGuideDialogUtil;->mDialogListener:Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mi/globallauncher/poco/PocoBranchGuideCallBack;->onDialogShow()V

    :cond_0
    return-void
.end method
