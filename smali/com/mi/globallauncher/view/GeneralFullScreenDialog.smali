.class public Lcom/mi/globallauncher/view/GeneralFullScreenDialog;
.super Landroid/app/Dialog;
.source "GeneralFullScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;,
        Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    }
.end annotation


# instance fields
.field private mGravity:I

.field private mHeight:I

.field private mView:Landroid/view/View;

.field private mWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x50

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 35
    sget v0, Lcom/mi/globallauncher/R$style;->GeneralDialogStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput p2, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->mGravity:I

    return-void
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->createDialog(Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    move-result-object p0

    return-object p0
.end method

.method private addContentView(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 3

    .line 55
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-direct {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->getContentLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static createDialog(Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog;
    .locals 7

    .line 193
    new-instance v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    iget-object v1, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->gravity:I

    invoke-direct {v0, v1, v2}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 194
    iget-object v1, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 197
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->hasAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget v2, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->animation:I

    invoke-direct {v0, v2}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->setAnimation(I)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->isCustomView()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 202
    iget v2, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->customView:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_1

    .line 204
    :cond_1
    sget v2, Lcom/mi/globallauncher/R$layout;->common_dialog:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->hasPositiveButton()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_3

    .line 209
    sget v2, Lcom/mi/globallauncher/R$id;->btn_ok:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    new-instance v5, Lcom/mi/globallauncher/view/-$$Lambda$GeneralFullScreenDialog$U0IPfRYzLc1xmWzOcwfjz9UflEU;

    invoke-direct {v5, p0, v0}, Lcom/mi/globallauncher/view/-$$Lambda$GeneralFullScreenDialog$U0IPfRYzLc1xmWzOcwfjz9UflEU;-><init>(Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;Lcom/mi/globallauncher/view/GeneralFullScreenDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget v5, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonTextColor:I

    if-eq v5, v4, :cond_2

    .line 217
    iget-object v5, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonTextColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    :cond_2
    iget v5, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonText:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 220
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->hasNegativeButton()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    sget v2, Lcom/mi/globallauncher/R$id;->btn_cancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 226
    new-instance v5, Lcom/mi/globallauncher/view/-$$Lambda$GeneralFullScreenDialog$CXP7YlbS8SeD26DePuc4CwU2eWQ;

    invoke-direct {v5, p0, v0}, Lcom/mi/globallauncher/view/-$$Lambda$GeneralFullScreenDialog$CXP7YlbS8SeD26DePuc4CwU2eWQ;-><init>(Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;Lcom/mi/globallauncher/view/GeneralFullScreenDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget v5, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonTextColor:I

    if-eq v5, v4, :cond_4

    .line 233
    iget-object v5, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonTextColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    :cond_4
    iget v5, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonText:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 236
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :cond_5
    sget v2, Lcom/mi/globallauncher/R$id;->txt_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 241
    iget v3, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->title:I

    if-eq v3, v4, :cond_6

    .line 242
    iget v3, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x8

    .line 244
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :goto_0
    sget v2, Lcom/mi/globallauncher/R$id;->txt_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 248
    iget v3, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->contentRes:I

    if-eqz v3, :cond_7

    .line 249
    iget v3, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->contentRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 252
    :cond_7
    iget-object v3, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->content:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 253
    iget-object v3, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_8
    :goto_1
    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 257
    iget v1, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->disAmount:F

    invoke-direct {v0, v1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->setDisAmount(F)V

    .line 259
    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method private getContentLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 87
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method static synthetic lambda$createDialog$0(Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;Lcom/mi/globallauncher/view/GeneralFullScreenDialog;Landroid/view/View;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 212
    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$createDialog$1(Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;Lcom/mi/globallauncher/view/GeneralFullScreenDialog;Landroid/view/View;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->dismiss()V

    return-void
.end method

.method private setAnimation(I)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method private setDisAmount(F)V
    .locals 0

    .line 264
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->mWidth:I

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 44
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->mGravity:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 45
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 74
    iput-object p1, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->mView:Landroid/view/View;

    .line 75
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->addContentView(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, -0x1

    .line 76
    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->mWidth:I

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->mHeight:I

    .line 79
    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 105
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
