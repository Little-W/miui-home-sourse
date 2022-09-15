.class public Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;
.super Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
.source "PhoneActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;,
        Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private mActionCount:I

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mBackgroundView:Landroid/view/View;

.field private mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

.field private mCollapseBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mExpandBackground:Landroid/graphics/drawable/Drawable;

.field private mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

.field private mIsShowBlurBackground:Z

.field private mMaxActionButtonWidth:I

.field private mMenuItemGap:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

.field private mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

.field private mOverflowMenuView:Landroid/view/View;

.field private mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

.field private mSplitActionBarOverlayHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sget v1, Lmiuix/appcompat/R$attr;->expandBackground:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lmiuix/appcompat/R$attr;->splitActionBarOverlayHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 92
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 83
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 85
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    const/4 v1, 0x0

    .line 94
    invoke-super {p0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    .line 97
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 98
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    .line 100
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    .line 101
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    .line 104
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    .line 105
    iget-object p2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 106
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->addBlurView(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setChildrenDrawingOrderEnabled(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_max_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    return-void
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
    .locals 0

    .line 36
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    return-object p0
.end method

.method static synthetic access$202(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;)Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;
    .locals 0

    .line 36
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    return-object p1
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mIsShowBlurBackground:Z

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 36
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    return-object p0
.end method

.method private addBlurView(Landroid/content/Context;)V
    .locals 1

    .line 666
    new-instance v0, Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-direct {v0, p1}, Lmiuix/blurdrawable/widget/BlurBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    .line 667
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 668
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->addView(Landroid/view/View;I)V

    .line 670
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mIsShowBlurBackground:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 671
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setBlurBackground(Z)Z

    :cond_0
    return-void
.end method

.method private clearBackground()V
    .locals 2

    .line 125
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private extractBackground()V
    .locals 2

    .line 402
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 406
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-nez v0, :cond_2

    .line 408
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 412
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method private getActionMenuItemCount()I
    .locals 3

    .line 262
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildCount()I

    move-result v0

    .line 263
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 266
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 269
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    return v0
.end method

.method private getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;
    .locals 2

    .line 243
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$1;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    .line 246
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    return-object v0
.end method

.method private isNotActionMenuItemChild(Landroid/view/View;)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    if-ne p1, v0, :cond_0

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

.method private resetBackground()V
    .locals 3

    .line 130
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 130
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    return-void
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .locals 4

    .line 158
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 159
    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_2

    .line 163
    iget-boolean v0, v0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 165
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->filterLeftoverView(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4

    .line 428
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 429
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-nez p2, :cond_1

    if-eq v0, v2, :cond_0

    return v0

    :cond_0
    if-eq v1, v2, :cond_2

    return v1

    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v1, v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_7

    if-eq v2, v0, :cond_6

    if-ne v2, v1, :cond_3

    goto :goto_2

    :cond_3
    if-ge v2, v0, :cond_4

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    if-ne v3, p2, :cond_6

    return v2

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    :cond_7
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public getCollapsedHeight()I
    .locals 2

    .line 251
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasBackgroundView()Z
    .locals 4

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-ne v1, v2, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0
.end method

.method public hasBlurBackgroundView()Z
    .locals 4

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    if-ne v1, v2, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0
.end method

.method public hideOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z
    .locals 3

    .line 228
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 229
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v1

    .line 233
    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_1

    .line 234
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 235
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->hide(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    goto :goto_0

    .line 236
    :cond_1
    sget-object p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, p1, :cond_2

    .line 237
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_button_gap:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    sub-int p1, p4, p2

    sub-int p2, p5, p3

    .line 353
    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 354
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 355
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 356
    iget-object p5, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p5

    goto :goto_0

    :cond_0
    move p3, p4

    .line 360
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 361
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 363
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildCount()I

    move-result p5

    .line 364
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemWidth:I

    sub-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1

    :goto_1
    if-ge p4, p5, :cond_2

    .line 367
    invoke-virtual {p0, p4}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 368
    invoke-direct {p0, v6}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 371
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, p1, v0

    move-object v0, p0

    move-object v1, v6

    move v2, p1

    move v3, p3

    move v5, p2

    .line 372
    invoke-static/range {v0 .. v5}, Lmiuix/internal/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    .line 373
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15

    move-object v6, p0

    .line 281
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildCount()I

    move-result v7

    .line 284
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getActionMenuItemCount()I

    move-result v0

    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    const/4 v8, 0x0

    if-eqz v7, :cond_9

    .line 285
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 291
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 292
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    div-int v0, v9, v0

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    .line 294
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v11, v8

    move v12, v11

    move v13, v12

    :goto_0
    if-ge v11, v7, :cond_2

    .line 297
    invoke-virtual {p0, v11}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 298
    invoke-direct {p0, v14}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->isNotActionMenuItemChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v14

    move v2, v10

    move/from16 v4, p2

    .line 302
    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 303
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMaxActionButtonWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v12, v0

    .line 305
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v13, v0

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 308
    :cond_2
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    add-int/2addr v0, v12

    if-le v0, v9, :cond_3

    .line 309
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    .line 311
    :cond_3
    iget v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemGap:I

    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mActionCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    add-int/2addr v12, v0

    .line 313
    iput v12, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemWidth:I

    .line 314
    iput v13, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 316
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 318
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/MiuixUIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 319
    iget v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 321
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 322
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    .line 323
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v13, v0

    .line 326
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_4

    .line 327
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 328
    :cond_4
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_5

    .line 329
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    int-to-float v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 333
    :cond_5
    :goto_2
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 334
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v0

    .line 336
    :cond_6
    iget-boolean v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mIsShowBlurBackground:Z

    if-nez v0, :cond_8

    .line 337
    iget-object v0, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_7

    .line 338
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_7
    iget-object v1, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    .line 337
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 341
    :cond_8
    invoke-virtual {p0, v9, v13}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setMeasuredDimension(II)V

    return-void

    .line 286
    :cond_9
    :goto_4
    iput v8, v6, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mMenuItemHeight:I

    .line 287
    invoke-virtual {p0, v8, v8}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 381
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    :goto_0
    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public setAlpha(F)V
    .locals 2

    .line 616
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mIsShowBlurBackground:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 617
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 619
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lmiuix/blurdrawable/widget/BlurBackgroundView;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 622
    :cond_0
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 144
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    :cond_0
    return-void
.end method

.method public setBlurBackground(Z)Z
    .locals 3

    .line 642
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBlurBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 644
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mIsShowBlurBackground:Z

    .line 645
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;->setBlurBackground(Z)Z

    .line 648
    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mIsShowBlurBackground:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 649
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 650
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;->getChildCount()I

    move-result p1

    if-le p1, v1, :cond_1

    .line 651
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

    .line 652
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 654
    :cond_1
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 657
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;->getChildCount()I

    move-result p1

    if-le p1, v1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 658
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return v0
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .locals 3

    .line 170
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 171
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eq v0, p1, :cond_5

    .line 174
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 178
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;->removeAllViews()V

    .line 180
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->removeView(Landroid/view/View;)V

    .line 181
    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    :cond_2
    if-eqz p1, :cond_4

    .line 186
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    if-nez v0, :cond_3

    .line 187
    new-instance v0, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    .line 189
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;->addView(Landroid/view/View;)V

    .line 190
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->addView(Landroid/view/View;)V

    .line 192
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandedMenuBlurView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuBlurView;

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    .line 193
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mIsShowBlurBackground:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setBlurBackground(Z)Z

    .line 194
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->extractBackground()V

    :cond_5
    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 416
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public showOverflowMenu(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)Z
    .locals 3

    .line 199
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 200
    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanded:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    iget-boolean v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mIsShowBlurBackground:Z

    if-nez v1, :cond_1

    .line 204
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_1
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v1

    .line 208
    sget-object v2, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_2

    .line 209
    sget-object v0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Expanding:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mOverflowMenuState:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    .line 210
    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->show(Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;)V

    goto :goto_0

    .line 211
    :cond_2
    sget-object p1, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, p1, :cond_3

    .line 212
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    .line 215
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->postInvalidateOnAnimation()V

    const/4 p1, 0x1

    .line 217
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setFocusable(Z)V

    .line 218
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setFocusableInTouchMode(Z)V

    .line 219
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->requestFocus()Z

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public updateBackground(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->mIsShowBlurBackground:Z

    if-eqz p1, :cond_0

    .line 117
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->clearBackground()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->resetBackground()V

    .line 121
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/action/PhoneActionMenuView;->setBlurBackground(Z)Z

    return-void
.end method
