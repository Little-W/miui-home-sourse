.class public Lmiuix/popupwidget/widget/ArrowPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ArrowPopupWindow.java"


# instance fields
.field protected mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

.field private mAutoDismiss:Z

.field private mContext:Landroid/content/Context;

.field private mListViewMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mAutoDismiss:Z

    .line 121
    iput-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    .line 122
    iput-boolean p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mAutoDismiss:Z

    .line 123
    invoke-direct {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setupPopupWindow()V

    return-void
.end method

.method private setupPopupWindow()V
    .locals 4

    .line 143
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_list_max_height:I

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    .line 145
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 146
    sget v1, Lmiuix/popupwidget/R$layout;->miuix_appcompat_arrow_popup_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    iput-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    .line 148
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 151
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 152
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, 0x3

    .line 154
    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setSoftInputMode(I)V

    .line 155
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setArrowPopupWindow(Lmiuix/popupwidget/widget/ArrowPopupWindow;)V

    .line 156
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow()V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->onPrepareWindow()V

    .line 164
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->update()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateToDismiss()V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->dismiss()V

    :goto_0
    return-void
.end method

.method public getContentHeight()I
    .locals 1

    .line 396
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 221
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentWidth()I
    .locals 1

    .line 343
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 136
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 507
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 385
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentHeight()I

    move-result v0

    return v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 172
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 332
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentWidth()I

    move-result v0

    return v0
.end method

.method protected onPrepareWindow()V
    .locals 0

    return-void
.end method

.method public setArrowMode(I)V
    .locals 1

    .line 253
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setArrowMode(I)V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 2

    .line 424
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 425
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget v1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mListViewMaxHeight:I

    if-le p1, v1, :cond_0

    move p1, v1

    :cond_0
    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 431
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 432
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    .line 371
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 374
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 375
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 410
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 357
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentWidth(I)V

    return-void
.end method

.method public show(Landroid/view/View;II)V
    .locals 1

    .line 266
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setAnchor(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {v0, p2, p3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setOffset(II)V

    const/4 p2, 0x0

    const p3, 0x800033

    .line 269
    invoke-virtual {p0, p1, p3, p2, p2}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 270
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    iget-boolean p2, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mAutoDismiss:Z

    invoke-virtual {p1, p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setAutoDismiss(Z)V

    .line 271
    iget-object p1, p0, Lmiuix/popupwidget/widget/ArrowPopupWindow;->mArrowPopupView:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-virtual {p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateToShow()V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 0

    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x2

    move-object v0, p0

    move v5, p5

    .line 307
    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 308
    invoke-virtual {p0, p4}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setContentHeight(I)V

    return-void
.end method
