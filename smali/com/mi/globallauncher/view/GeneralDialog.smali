.class public Lcom/mi/globallauncher/view/GeneralDialog;
.super Landroid/app/Dialog;
.source "GeneralDialog.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;,
        Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;,
        Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    }
.end annotation


# instance fields
.field private dialogCallBack:Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;

.field private homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

.field private mGravity:I

.field private mHeight:I

.field private mView:Landroid/view/View;

.field private mWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x50

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/view/GeneralDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 43
    sget v0, Lcom/mi/globallauncher/R$style;->GeneralDialogStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    iput p2, p0, Lcom/mi/globallauncher/view/GeneralDialog;->mGravity:I

    return-void
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;)Lcom/mi/globallauncher/view/GeneralDialog;
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->createDialog(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;)Lcom/mi/globallauncher/view/GeneralDialog;

    move-result-object p0

    return-object p0
.end method

.method private addContentView(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 3

    .line 68
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-direct {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getContentLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static createDialog(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;)Lcom/mi/globallauncher/view/GeneralDialog;
    .locals 7

    .line 238
    new-instance v0, Lcom/mi/globallauncher/view/GeneralDialog;

    iget-object v1, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->gravity:I

    invoke-direct {v0, v1, v2}, Lcom/mi/globallauncher/view/GeneralDialog;-><init>(Landroid/content/Context;I)V

    .line 239
    iget-object v1, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->hasAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget v2, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->animation:I

    invoke-direct {v0, v2}, Lcom/mi/globallauncher/view/GeneralDialog;->setAnimation(I)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->isCustomView()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 247
    iget v2, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->customView:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_1

    .line 249
    :cond_1
    sget v2, Lcom/mi/globallauncher/R$layout;->common_dialog:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 253
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->hasPositiveButton()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_3

    .line 254
    sget v2, Lcom/mi/globallauncher/R$id;->btn_ok:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 255
    new-instance v5, Lcom/mi/globallauncher/view/-$$Lambda$GeneralDialog$_Mq_GzLH5k67HiF8Zni1yMVO-wo;

    invoke-direct {v5, p0, v0}, Lcom/mi/globallauncher/view/-$$Lambda$GeneralDialog$_Mq_GzLH5k67HiF8Zni1yMVO-wo;-><init>(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;Lcom/mi/globallauncher/view/GeneralDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget v5, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonTextColor:I

    if-eq v5, v4, :cond_2

    .line 262
    iget-object v5, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonTextColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    :cond_2
    iget v5, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonText:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 265
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->hasNegativeButton()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    sget v2, Lcom/mi/globallauncher/R$id;->btn_cancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 271
    new-instance v5, Lcom/mi/globallauncher/view/-$$Lambda$GeneralDialog$y3k8YRriTBYX4zwv4c6SO_mUgCo;

    invoke-direct {v5, p0, v0}, Lcom/mi/globallauncher/view/-$$Lambda$GeneralDialog$y3k8YRriTBYX4zwv4c6SO_mUgCo;-><init>(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;Lcom/mi/globallauncher/view/GeneralDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget v5, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonTextColor:I

    if-eq v5, v4, :cond_4

    .line 278
    iget-object v5, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonTextColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    :cond_4
    iget v5, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonText:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 281
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :cond_5
    sget v2, Lcom/mi/globallauncher/R$id;->txt_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 286
    iget v3, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->title:I

    if-eq v3, v4, :cond_6

    .line 287
    iget v3, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x8

    .line 289
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_0
    sget v2, Lcom/mi/globallauncher/R$id;->txt_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 293
    iget v3, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->contentRes:I

    if-eqz v3, :cond_7

    .line 294
    iget v3, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->contentRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 297
    :cond_7
    iget-object v3, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->content:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 298
    iget-object v3, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_8
    :goto_1
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog;->setContentView(Landroid/view/View;)V

    .line 302
    iget v1, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->disAmount:F

    invoke-direct {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog;->setDisAmount(F)V

    .line 304
    iget-object v1, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 305
    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, p0}, Lcom/mi/globallauncher/view/GeneralDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method private getContentLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 100
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method static synthetic lambda$createDialog$0(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;Lcom/mi/globallauncher/view/GeneralDialog;Landroid/view/View;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 257
    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$createDialog$1(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;Lcom/mi/globallauncher/view/GeneralDialog;Landroid/view/View;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralDialog;->dismiss()V

    return-void
.end method

.method private setAnimation(I)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method private setDisAmount(F)V
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method


# virtual methods
.method public addNaviCallbackListener(Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/mi/globallauncher/view/GeneralDialog;->dialogCallBack:Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 134
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 135
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog;->homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;->unRegister(Landroid/content/Context;)V

    .line 136
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/mi/globallauncher/view/GeneralDialog;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/mi/globallauncher/view/GeneralDialog;->mWidth:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 52
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/mi/globallauncher/view/GeneralDialog;->mGravity:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 53
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 54
    new-instance p1, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    invoke-direct {p1, p0}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;-><init>(Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;)V

    iput-object p1, p0, Lcom/mi/globallauncher/view/GeneralDialog;->homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    .line 55
    iget-object p1, p0, Lcom/mi/globallauncher/view/GeneralDialog;->homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;->register(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 57
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onHomeKeyPressed()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog;->dialogCallBack:Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;->onHomeKeyPressed()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/mi/globallauncher/messages/CommercialCloseAllOverLauncherWindowMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 143
    iget-object p1, p0, Lcom/mi/globallauncher/view/GeneralDialog;->dialogCallBack:Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;

    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Lcom/mi/globallauncher/view/GeneralDialog$GeneralDialogCallBack;->onHomeKeyPressed()V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/GeneralDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 87
    iput-object p1, p0, Lcom/mi/globallauncher/view/GeneralDialog;->mView:Landroid/view/View;

    .line 88
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/view/GeneralDialog;->addContentView(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, -0x1

    .line 89
    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/mi/globallauncher/view/GeneralDialog;->mWidth:I

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/mi/globallauncher/view/GeneralDialog;->mHeight:I

    .line 92
    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 118
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
