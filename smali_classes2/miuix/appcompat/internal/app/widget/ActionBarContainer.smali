.class public Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field private mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

.field private mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundArray:[Landroid/graphics/drawable/Drawable;

.field private mBackgroundBackup:Landroid/graphics/drawable/Drawable;

.field private mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

.field private mCurBarExpandState:I

.field private mCurBarResizable:Z

.field private mCurContextBarExpandState:I

.field private mCurContextBarResizable:Z

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mCustomBackground:Z

.field private mCustomViewAutoFitSystemWindow:Z

.field private mHeightMaxMeasureSpec:I

.field private mHideListener:Landroid/animation/AnimatorListenerAdapter;

.field private mIsMiuixFloating:Z

.field private mIsShowBlurBackgroundView:Z

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mPendingInsets:Landroid/graphics/Rect;

.field private mRequestAnimation:Z

.field private mShowListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSplitBackgroundBackup:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private mTabContainerPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsShowBlurBackgroundView:Z

    .line 99
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    const/4 v1, -0x1

    .line 103
    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    .line 105
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHideListener:Landroid/animation/AnimatorListenerAdapter;

    .line 113
    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 128
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_android_background:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    .line 129
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v0

    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_actionBarEmbededTabsBackground:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget v2, Lmiuix/appcompat/R$styleable;->ActionBar_actionBarStackedBackground:I

    .line 130
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    .line 134
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_customViewAutoFitSystemWindow:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    .line 136
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getId()I

    move-result v1

    sget v2, Lmiuix/appcompat/R$id;->split_action_bar:I

    if-ne v1, v2, :cond_0

    .line 137
    iput-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    .line 138
    sget v1, Lmiuix/appcompat/R$styleable;->ActionBar_android_backgroundSplit:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 140
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez p2, :cond_1

    .line 146
    invoke-virtual {p0, v0, v0, v0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPadding(IIII)V

    .line 151
    :cond_1
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resizeSplitMaxHeight()V

    .line 153
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->addActionBarBlurView(Landroid/content/Context;)V

    .line 155
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    move v0, v3

    goto :goto_0

    .line 156
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    move v0, v3

    .line 155
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$002(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 41
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method private addActionBarBlurView(Landroid/content/Context;)V
    .locals 1

    .line 361
    new-instance v0, Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-direct {v0, p1}, Lmiuix/blurdrawable/widget/BlurBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    .line 362
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 363
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private applyInsets(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 569
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomViewAutoFitSystemWindow:Z

    if-nez v0, :cond_2

    .line 571
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 572
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    if-nez v2, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 573
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private clearBackground()V
    .locals 2

    .line 279
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundBackup:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackgroundBackup:Landroid/graphics/drawable/Drawable;

    .line 283
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 289
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->updateBackground(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onMeasureSplit(II)V
    .locals 3

    .line 631
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 632
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 637
    :cond_0
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move p2, v0

    .line 640
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 643
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 646
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lmiuix/blurdrawable/widget/BlurBackgroundView;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 649
    :cond_2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 652
    invoke-virtual {p0, p2, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setMeasuredDimension(II)V

    :cond_4
    return-void
.end method

.method private resetBackground()V
    .locals 2

    .line 295
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 298
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackgroundBackup:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 302
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 303
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundBackup:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 308
    :cond_3
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 309
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->updateBackground(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private resizeSplitMaxHeight()V
    .locals 3

    .line 718
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->actionBarSplitMaxPercentageHeight:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 720
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 721
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/core/util/WindowUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 722
    invoke-virtual {v0, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, -0x80000000

    .line 723
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mHeightMaxMeasureSpec:I

    :cond_0
    return-void
.end method

.method private selectDrawable()V
    .locals 3

    .line 834
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    array-length v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 841
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 843
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_1

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x2

    .line 850
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackgroundArray:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 851
    aget-object v0, v0, v1

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private setAllClipChildren(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 339
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v0, 0x0

    .line 340
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 342
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 343
    check-cast v1, Landroid/view/ViewGroup;

    .line 344
    invoke-direct {p0, v1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAllClipChildren(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setAllClipToPadding(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 350
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/4 v0, 0x0

    .line 351
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 353
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 354
    check-cast v1, Landroid/view/ViewGroup;

    .line 355
    invoke-direct {p0, v1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAllClipToPadding(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAllClipView(Z)V
    .locals 2

    .line 326
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 328
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    const v1, 0x1020002

    .line 329
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAllClipChildren(Landroid/view/ViewGroup;Z)V

    .line 332
    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setAllClipToPadding(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method private updateBackground(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 272
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->clearBackground()V

    goto :goto_0

    .line 274
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resetBackground()V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 820
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 822
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mRequestAnimation:Z

    if-eqz p1, :cond_0

    .line 823
    new-instance p1, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 829
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mRequestAnimation:Z

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 466
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 467
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 470
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 473
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    return-void
.end method

.method getCollapsedHeight()I
    .locals 5

    .line 372
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 373
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 374
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v2, :cond_0

    .line 375
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    .line 376
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 377
    invoke-virtual {v2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method getInsetHeight()I
    .locals 1

    .line 386
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method public getPendingInsets()Landroid/graphics/Rect;
    .locals 1

    .line 222
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .line 513
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public isBlurEnable()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsShowBlurBackgroundView:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 713
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 714
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->resizeSplitMaxHeight()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 537
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 541
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 549
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 161
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 162
    sget v0, Lmiuix/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 163
    sget v0, Lmiuix/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 164
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 166
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 168
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 170
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 505
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 658
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 660
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result p1

    .line 661
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/4 p5, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_3

    .line 662
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 663
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 665
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 666
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 667
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 666
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 669
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v0, p5

    :goto_0
    add-int/2addr p3, v0

    .line 670
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 671
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    add-int/2addr v2, v3

    goto :goto_1

    .line 672
    :cond_2
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    :goto_1
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 673
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 670
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 675
    :goto_2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    sub-int p3, p1, p3

    invoke-virtual {v0, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 680
    :cond_3
    iget-boolean p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    .line 681
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 682
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, p5, p5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    .line 686
    :cond_4
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->selectDrawable()V

    .line 687
    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_5

    sub-int/2addr p4, p2

    .line 688
    invoke-virtual {p3, p5, p5, p4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    :cond_5
    move v0, p5

    :goto_3
    if-eqz v0, :cond_6

    .line 707
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->invalidate()V

    :cond_6
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 579
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    .line 580
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->onMeasureSplit(II)V

    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 587
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 586
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 590
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsets(Landroid/view/View;)V

    .line 591
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsets(Landroid/view/View;)V

    .line 593
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 595
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 596
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 598
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 599
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 600
    :cond_3
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v1

    .line 603
    :goto_1
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_6

    .line 604
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_6

    .line 606
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 607
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 608
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-nez p1, :cond_5

    .line 609
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-eqz p1, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    add-int/2addr p2, p1

    .line 607
    invoke-virtual {p0, v0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setMeasuredDimension(II)V

    :cond_6
    move p1, v1

    move p2, p1

    .line 615
    :goto_3
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 616
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 617
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    if-ne v0, v2, :cond_7

    goto :goto_4

    .line 620
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_8

    add-int/lit8 p2, p2, 0x1

    :cond_8
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_9
    if-nez p2, :cond_a

    .line 625
    invoke-virtual {p0, v1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setMeasuredDimension(II)V

    :cond_a
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 16

    move-object/from16 v0, p0

    .line 891
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 894
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v1, 0x2

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    new-array v8, v1, [I

    fill-array-data v8, :array_1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    .line 896
    :cond_0
    iget-object v9, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual/range {v9 .. v15}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 20

    move-object/from16 v0, p0

    .line 857
    iget-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 862
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    const/4 v1, 0x2

    new-array v9, v1, [I

    fill-array-data v9, :array_0

    new-array v10, v1, [I

    fill-array-data v10, :array_1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    .line 865
    :cond_0
    iget-object v11, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    invoke-virtual/range {v11 .. v19}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 877
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 880
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 870
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 871
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    .line 873
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    .line 884
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 885
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onStopNestedScroll(Landroid/view/View;I)V

    .line 887
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setActionBarContextView(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 730
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsShowBlurBackgroundView:Z

    if-eqz v0, :cond_2

    .line 731
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 732
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 734
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lmiuix/blurdrawable/widget/BlurBackgroundView;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 736
    :cond_0
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    if-eqz v1, :cond_1

    .line 737
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 738
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setAlpha(F)V

    goto :goto_1

    .line 740
    :cond_1
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public setBlurBackground(Z)Z
    .locals 3

    .line 242
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsShowBlurBackgroundView:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 246
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    .line 247
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsShowBlurBackgroundView:Z

    .line 248
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    .line 249
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackground(Z)V

    move v0, v1

    .line 250
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 251
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;

    .line 253
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setBlurBackground(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->updateBackground(Z)V

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    xor-int/lit8 v1, p1, 0x1

    .line 262
    invoke-direct {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateAllClipView(Z)V

    .line 263
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsShowBlurBackgroundView:Z

    .line 264
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateBackground(Z)V

    :cond_4
    return v0
.end method

.method public setIsMiuixFloating(Z)V
    .locals 3

    .line 175
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsMiuixFloating:Z

    .line 176
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    .line 179
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    .line 180
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 181
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    goto :goto_0

    .line 183
    :cond_0
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarResizable:Z

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    .line 184
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurBarExpandState:I

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    .line 187
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getExpandState()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    .line 190
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    .line 191
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    .line 192
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    goto :goto_1

    .line 194
    :cond_2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarResizable:Z

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setResizable(Z)V

    .line 195
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurContextBarExpandState:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    .line 213
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mPendingInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 215
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsets(Landroid/view/View;)V

    .line 216
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->applyInsets(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 391
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 393
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 394
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 396
    :goto_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 398
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-nez v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->requestLayout()V

    goto :goto_1

    .line 402
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 404
    :goto_1
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    goto :goto_2

    .line 406
    :cond_2
    iput-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCustomBackground:Z

    .line 408
    :goto_2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_3

    .line 409
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_5

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    .line 408
    :goto_3
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 410
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->invalidate()V

    return-void
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 431
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 432
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 436
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 438
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 439
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    .line 438
    :goto_0
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 440
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->invalidate()V

    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 415
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 416
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 420
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 422
    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 423
    :cond_3
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    .line 422
    :goto_0
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 424
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 425
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public setTabContainer(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;)V
    .locals 2

    .line 517
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 522
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 523
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 524
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 525
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 528
    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainerPaddingTop:I

    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 530
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 532
    :cond_2
    :goto_0
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-void
.end method

.method public setTransitioning(Z)V
    .locals 0

    .line 486
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsTransitioning:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x60000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000

    .line 487
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setDescendantFocusability(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 445
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 447
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 450
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 451
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 453
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 454
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_3
    return-void
.end method

.method public show(Z)V
    .locals 4

    .line 779
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 783
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 785
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p1, :cond_3

    const-string p1, "TranslationY"

    const/4 v2, 0x2

    .line 786
    new-array v2, v2, [F

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 787
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    .line 788
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 787
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 789
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mShowListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 790
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 792
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_3

    .line 794
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->startLayoutAnimation()V

    goto :goto_1

    .line 798
    :cond_2
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setTranslationY(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateAllClipView()V
    .locals 1

    .line 319
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsShowBlurBackgroundView:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    .line 322
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->updateAllClipView(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 460
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    .line 461
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
