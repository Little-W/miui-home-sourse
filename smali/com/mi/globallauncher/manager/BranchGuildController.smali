.class Lcom/mi/globallauncher/manager/BranchGuildController;
.super Ljava/lang/Object;
.source "BranchGuildController.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IBranchGuildController;


# static fields
.field private static volatile instance:Lcom/mi/globallauncher/manager/BranchGuildController;


# instance fields
.field private callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

.field public hasBranch:Z

.field private mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

.field private mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

.field private mBranchSearchGuideView:Lcom/mi/globallauncher/view/BranchSearchGuide;

.field private mContext:Landroid/app/Application;

.field private mDragIconGuide:Lcom/mi/globallauncher/view/TapTargetView;

.field private mIsLightMode:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->hasBranch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/manager/BranchGuildController;)Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/manager/BranchGuildController;)Lcom/mi/globallauncher/view/BranchSearchGuide;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideView:Lcom/mi/globallauncher/view/BranchSearchGuide;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/manager/BranchGuildController;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->showSearchGuidePrivacyDialog()V

    return-void
.end method

.method public static getInstance()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;
    .locals 2

    .line 41
    sget-object v0, Lcom/mi/globallauncher/manager/BranchGuildController;->instance:Lcom/mi/globallauncher/manager/BranchGuildController;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/mi/globallauncher/manager/BranchGuildController;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/mi/globallauncher/manager/BranchGuildController;->instance:Lcom/mi/globallauncher/manager/BranchGuildController;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/mi/globallauncher/manager/BranchGuildController;

    invoke-direct {v1}, Lcom/mi/globallauncher/manager/BranchGuildController;-><init>()V

    sput-object v1, Lcom/mi/globallauncher/manager/BranchGuildController;->instance:Lcom/mi/globallauncher/manager/BranchGuildController;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/globallauncher/manager/BranchGuildController;->instance:Lcom/mi/globallauncher/manager/BranchGuildController;

    return-object v0
.end method

.method private static needShowGuide()Z
    .locals 1

    .line 188
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isDragIconToHomeGuideShow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private showSearchGuidePrivacyDialog()V
    .locals 5

    .line 193
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->launcherNull()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 202
    :cond_2
    new-instance v0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    iget-object v1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    invoke-interface {v1}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->getLauncher()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/mi/globallauncher/R$layout;->branch_privacy_dialog_view:I

    .line 203
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setCustomView(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    .line 204
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setDisAmount(F)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    .line 205
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setGravity(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->create()Lcom/mi/globallauncher/view/GeneralDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    .line 207
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    new-instance v1, Lcom/mi/globallauncher/manager/-$$Lambda$BranchGuildController$D_kDXqM4rEfIbQmP4E7KDwFAM9w;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchGuildController$D_kDXqM4rEfIbQmP4E7KDwFAM9w;-><init>(Lcom/mi/globallauncher/manager/BranchGuildController;)V

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog;->addNaviCallbackListener(Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;)V

    .line 213
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->show()V

    .line 214
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 215
    sget v1, Lcom/mi/globallauncher/R$id;->txt_content1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 216
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 217
    sget v2, Lcom/mi/globallauncher/R$id;->txt_content2:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 218
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 219
    iget-object v3, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    invoke-interface {v3}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->isLightMode()Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mIsLightMode:Ljava/lang/Boolean;

    .line 221
    iget-object v3, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mIsLightMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/mi/globallauncher/manager/BranchGuildController;->updateSearchGuidePrivacyDialogColor(Landroid/view/View;Z)V

    .line 222
    iget-object v3, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    iget-object v4, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mIsLightMode:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v2, v4}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->setTextLinkOpenWithWebView(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Boolean;)V

    .line 223
    sget v1, Lcom/mi/globallauncher/R$id;->btn_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 224
    new-instance v2, Lcom/mi/globallauncher/manager/-$$Lambda$BranchGuildController$GDUHRLhThxNG5VVKi_krFbliVl4;

    invoke-direct {v2, p0}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchGuildController$GDUHRLhThxNG5VVKi_krFbliVl4;-><init>(Lcom/mi/globallauncher/manager/BranchGuildController;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget v1, Lcom/mi/globallauncher/R$id;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    new-instance v1, Lcom/mi/globallauncher/manager/-$$Lambda$BranchGuildController$FD89cJBDE2dEqU3ZJq9NX5ewFnU;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/manager/-$$Lambda$BranchGuildController$FD89cJBDE2dEqU3ZJq9NX5ewFnU;-><init>(Lcom/mi/globallauncher/manager/BranchGuildController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateSearchGuidePrivacyDialogColor(Landroid/view/View;Z)V
    .locals 7

    .line 243
    sget v0, Lcom/mi/globallauncher/R$id;->dialog_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 244
    sget v1, Lcom/mi/globallauncher/R$id;->txt_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 245
    sget v2, Lcom/mi/globallauncher/R$id;->txt_content1:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 246
    sget v3, Lcom/mi/globallauncher/R$id;->txt_content2:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 247
    sget v4, Lcom/mi/globallauncher/R$id;->txt_content3:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 248
    sget v5, Lcom/mi/globallauncher/R$id;->btn_cancel:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 249
    sget v6, Lcom/mi/globallauncher/R$id;->btn_ok:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 251
    sget p2, Lcom/mi/globallauncher/R$drawable;->common_dialog_background_light:I

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 252
    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    sget v0, Lcom/mi/globallauncher/R$color;->black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    sget v0, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    sget v0, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    sget v0, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    sget p2, Lcom/mi/globallauncher/R$color;->alpha70black:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    sget p0, Lcom/mi/globallauncher/R$drawable;->common_dialog_btn_bg_light:I

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 258
    sget p0, Lcom/mi/globallauncher/R$drawable;->common_dialog_btn_bg_light:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 260
    :cond_0
    sget p2, Lcom/mi/globallauncher/R$drawable;->common_dialog_background_dark:I

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 261
    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    sget v0, Lcom/mi/globallauncher/R$color;->white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    sget v0, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    sget v0, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    sget v0, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    sget p2, Lcom/mi/globallauncher/R$color;->alpha50white:I

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    sget p0, Lcom/mi/globallauncher/R$drawable;->common_dialog_btn_bg_dark:I

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 267
    sget p0, Lcom/mi/globallauncher/R$drawable;->common_dialog_btn_bg_dark:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public branchGuideAgreed()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideView:Lcom/mi/globallauncher/view/BranchSearchGuide;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->onAgreeBtnClicked()V

    .line 276
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->setQuickSearchSwitchOn(Z)V

    .line 277
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setGuildType1AlreadyShow(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->hideBranchSearchGuideView()V

    .line 279
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->showBranchSearchGuideView()V

    .line 280
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchGuideOpen()V

    return-void
.end method

.method public closeAllAppsDialog()V
    .locals 1

    .line 293
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->launcherNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->hideBranchSearchGuideView()V

    .line 302
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->closeAllAppsDialog()V

    :cond_2
    return-void
.end method

.method public controlOnBackPressed(Z)Z
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->isBranchSearchGuideViewVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->hideBranchSearchGuideView()V

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->handleAfterBranchSearchGuideViewHide()V

    :cond_0
    return v1

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->isDragIconGuideVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->hideDragIconGuideViewIfNeeded()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public handleAfterBranchSearchGuideViewHide()V
    .locals 1

    .line 163
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isFirstTimeEnterDrawer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->appsViewVisibility()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 165
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->setFirstTimeEnterDrawer(Z)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isQuickSearchOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    if-eqz p0, :cond_2

    .line 170
    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->searchBarRequestFocus()V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->handleDragAndHideAppsGuideViewAfterGuide()V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleDragAndHideAppsGuideViewAfterGuide()V
    .locals 1

    .line 180
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchGuildController;->needShowGuide()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mDragIconGuide:Lcom/mi/globallauncher/view/TapTargetView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/TapTargetView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    if-eqz v0, :cond_1

    .line 182
    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->showGuide()Lcom/mi/globallauncher/view/TapTargetView;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mDragIconGuide:Lcom/mi/globallauncher/view/TapTargetView;

    :cond_1
    return-void
.end method

.method public hideBranchSearchGuideView()V
    .locals 2

    .line 65
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->launcherNull()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->dismiss()V

    .line 75
    iput-object v1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideView:Lcom/mi/globallauncher/view/BranchSearchGuide;

    if-nez v0, :cond_3

    return-void

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideView:Lcom/mi/globallauncher/view/BranchSearchGuide;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->onHide()V

    .line 79
    iput-object v1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideView:Lcom/mi/globallauncher/view/BranchSearchGuide;

    .line 80
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->updateAllAppsIndicator()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public hideDragIconGuideViewIfNeeded()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mDragIconGuide:Lcom/mi/globallauncher/view/TapTargetView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/TapTargetView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mDragIconGuide:Lcom/mi/globallauncher/view/TapTargetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/TapTargetView;->dismiss(Z)V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mDragIconGuide:Lcom/mi/globallauncher/view/TapTargetView;

    :cond_0
    return-void
.end method

.method public init(Landroid/app/Application;Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    if-eqz p2, :cond_0

    .line 57
    iput-object p2, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    return-void

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "call back cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isBranchSearchGuideViewVisible()Z
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDragIconGuideVisible()Z
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mDragIconGuide:Lcom/mi/globallauncher/view/TapTargetView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHasBranch()Z
    .locals 0

    .line 318
    iget-boolean p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->hasBranch:Z

    return p0
.end method

.method public synthetic lambda$showSearchGuidePrivacyDialog$0$BranchGuildController()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    :cond_0
    return-void
.end method

.method public synthetic lambda$showSearchGuidePrivacyDialog$1$BranchGuildController(Landroid/view/View;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    :cond_0
    return-void
.end method

.method public synthetic lambda$showSearchGuidePrivacyDialog$2$BranchGuildController(Landroid/view/View;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchPrivacyDialog:Lcom/mi/globallauncher/view/GeneralDialog;

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/manager/BranchGuildController;->branchGuideAgreed()V

    .line 237
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->onPrivacyAgreed()V

    .line 238
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchTermServiceAlertOk()V

    return-void
.end method

.method public setHasBranch(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->hasBranch:Z

    return-void
.end method

.method public showBranchSearchGuideView()V
    .locals 4

    .line 91
    invoke-static {}, Lcom/mi/globallauncher/util/BranchSwitchController;->isIndiaRegion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->launcherNull()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->dismiss()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->getBranchSearchGuideView(Landroid/content/Context;)Lcom/mi/globallauncher/view/BranchSearchGuide;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideView:Lcom/mi/globallauncher/view/BranchSearchGuide;

    .line 104
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isChangeToDrawerForBranch()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isGuildType1AlreadyShow()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    invoke-interface {v1}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->isLightMode()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mIsLightMode:Ljava/lang/Boolean;

    .line 111
    iget-object v1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideView:Lcom/mi/globallauncher/view/BranchSearchGuide;

    iget-object v2, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mIsLightMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v3, Lcom/mi/globallauncher/manager/BranchGuildController$1;

    invoke-direct {v3, p0, v0}, Lcom/mi/globallauncher/manager/BranchGuildController$1;-><init>(Lcom/mi/globallauncher/manager/BranchGuildController;I)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/mi/globallauncher/view/BranchSearchGuide;->initBranchSearchGuideView(ZLcom/mi/globallauncher/view/BranchSearchGuide$BranchGuideViewClickListener;I)V

    .line 148
    new-instance v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;

    iget-object v1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->callback:Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;

    invoke-interface {v1}, Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;->getLauncher()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;-><init>(Landroid/app/Activity;)V

    const v1, 0x3f19999a    # 0.6f

    .line 149
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->setDisAmount(F)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    .line 150
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->setGravity(I)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->create()Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    .line 152
    iget-object v0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    iget-object v1, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideView:Lcom/mi/globallauncher/view/BranchSearchGuide;

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 153
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchGuildController;->mBranchSearchGuideDialog:Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->show()V

    .line 154
    invoke-static {}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackBranchSearchGuideShow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
