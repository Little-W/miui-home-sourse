.class public Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;
.super Landroid/widget/LinearLayout;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;,
        Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;
    }
.end annotation


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mArrowIcon:Landroid/graphics/drawable/Drawable;

.field private mDescending:Z

.field private mDescendingEnabled:Z

.field private mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

.field private mFiltered:Z

.field private mIndicatorVisibility:I

.field private mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

.field private mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, p1, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 390
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 394
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    .line 396
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lmiuix/miuixbasewidget/R$layout;->miuix_appcompat_filter_sort_tab_view:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x1020014

    .line 397
    invoke-virtual {p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    .line 398
    sget v1, Lmiuix/miuixbasewidget/R$id;->arrow:I

    invoke-virtual {p0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 401
    sget-object v1, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView:[I

    sget v2, Lmiuix/miuixbasewidget/R$style;->Widget_FilterSortTabView_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 403
    sget p2, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 404
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_descending:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 405
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_indicatorVisibility:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    .line 406
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_arrowFilterSortTabView:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 407
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->FilterSortTabView_filterSortTabViewTextColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 408
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 410
    invoke-direct {p0, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->initView(Ljava/lang/CharSequence;Z)V

    .line 412
    :cond_0
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    iget p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mIndicatorVisibility:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 414
    invoke-static {}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setId(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .locals 0

    .line 364
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    return p0
.end method

.method static synthetic access$1100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .locals 0

    .line 364
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z

    return p0
.end method

.method static synthetic access$1200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .locals 0

    .line 364
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V
    .locals 0

    .line 364
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V

    return-void
.end method

.method static synthetic access$400(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .locals 0

    .line 364
    invoke-direct {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    return-void
.end method

.method static synthetic access$900(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z
    .locals 0

    .line 364
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    return p0
.end method

.method private initView(Ljava/lang/CharSequence;Z)V
    .locals 2

    const/16 v0, 0x11

    .line 427
    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setGravity(I)V

    .line 428
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 429
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->parseBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 434
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-direct {p0, p2}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V

    .line 437
    new-instance p1, Lmiuix/miuixbasewidget/widget/-$$Lambda$FilterSortView$TabView$nRUEiUESXDfb6akugTqOlHMIzYU;

    invoke-direct {p1, p0}, Lmiuix/miuixbasewidget/widget/-$$Lambda$FilterSortView$TabView$nRUEiUESXDfb6akugTqOlHMIzYU;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V

    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private parseBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 502
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lmiuix/miuixbasewidget/R$drawable;->miuix_appcompat_filter_sort_tab_view_bg_normal:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private setDescending(Z)V
    .locals 0

    .line 512
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z

    if-eqz p1, :cond_0

    .line 514
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotationX(F)V

    goto :goto_0

    .line 516
    :cond_0
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    const/high16 p1, 0x43340000    # 180.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotationX(F)V

    :goto_0
    return-void
.end method

.method private setFiltered(Z)V
    .locals 5

    .line 478
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/miuixbasewidget/widget/FilterSortView;

    iput-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    if-eqz p1, :cond_1

    .line 479
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 482
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mParent:Lmiuix/miuixbasewidget/widget/FilterSortView;

    invoke-virtual {v3, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 483
    instance-of v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eqz v4, :cond_0

    .line 484
    check-cast v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    if-eq v3, p0, :cond_0

    .line 485
    iget-boolean v4, v3, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    if-eqz v4, :cond_0

    .line 486
    invoke-direct {v3, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_1
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    .line 493
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 494
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 495
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setSelected(Z)V

    .line 496
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    if-eqz v0, :cond_2

    .line 497
    invoke-interface {v0, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;->OnFilteredChangedListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    :cond_2
    return-void
.end method

.method private setOnFilteredListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mOnFilteredListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    return-void
.end method


# virtual methods
.method public getArrowView()Landroid/view/View;
    .locals 0

    .line 538
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getDescendingEnabled()Z
    .locals 0

    .line 530
    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    return p0
.end method

.method public synthetic lambda$initView$0$FilterSortView$TabView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 438
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 442
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 v1, 0x1002

    if-ne p1, v1, :cond_1

    return v0

    .line 446
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 456
    :cond_2
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    if-eqz p1, :cond_3

    .line 457
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverFilterExit()V

    .line 459
    :cond_3
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getLeft()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    invoke-interface {p1, v0, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverExit(FF)V

    goto :goto_0

    .line 448
    :cond_4
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z

    if-eqz p1, :cond_5

    .line 449
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverFilterEnter()V

    .line 451
    :cond_5
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    invoke-interface {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;->onHoverEnter()V

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setDescendingEnabled(Z)V
    .locals 0

    .line 534
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 572
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 573
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFilterHoverListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFilterHoverListener:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$FilterHoverListener;

    return-void
.end method

.method public setIndicatorVisibility(I)V
    .locals 0

    .line 469
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 543
    new-instance v0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;

    invoke-direct {v0, p0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;-><init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
